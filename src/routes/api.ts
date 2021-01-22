import { TripResult, AgendaResult } from './../models/results'
import * as express from 'express'
import { PrismaClient } from '@prisma/client'
import * as Q from '../models/queries'
import moment from 'moment'

const prisma = new PrismaClient()

export const register = (app: express.Application) => {

    app.post('/api/trips', async (req: any, res) => {
        const q: Q.TripsQuery = req.body
        execute(async () => {
            const trips = await prisma.trips.findMany()
            res.send(trips.map((t) => {
                const result: TripResult = {
                    id: t.id,
                    title: t.title,
                    description: t.description,
                    imgUrl: t.imgUrl,
                    date: moment.utc(t.date).format("YYYY-MM-DD"),
                }
                return result
            }))
        }, res)

    })

    app.post('/api/trip/details', async (req: any, res) => {
        throw new Error('Not implemented')
        const q: Q.TripDetailsQuery = req.body
        execute(async () => {
            // const details = await prisma.trips.findUnique({
            //     where: {
            //         id: q.tripId
            //     }
            // })
            // res.send(details)
        }, res)
    })

    app.post('/api/trip/agenda', async (req: any, res) => {

        const q: Q.AgendaQuery = req.body
        //console.log(req.body)

        execute(async () => {
            const entries = await prisma.entries.findMany({
                where: {
                    tripId: q.tripId,
                    date: new Date(q.date)
                },
                include: {
                    trip: true,
                    tags_entries: true,
                    speakers_entries: true
                },
            })

            const speakers = await prisma.speakers_entries.findMany({
                where: { entryId: entries[0].id },
                include: { speaker: true },
            })

            const tags = await prisma.tags_entries.findMany({
                where: { entryId: entries[0].id },
                include: { tag: true },
            })

            res.send(entries.map((e) => {
                const dur = moment(e.endtime).diff(moment(e.starttime))
                const result: AgendaResult = {
                    id: e.id,
                    date: q.date,
                    title: e.title,
                    description: e.description,
                    room: e.room,
                    starttime: moment.utc(e.starttime).format("HH:mm"),
                    endtime: moment.utc(e.endtime).format("HH:mm"),
                    duration: moment.utc(dur).format("HH:mm"),
                    speakers: speakers.map((s) => s.speaker.name),
                    tags: tags.map((t) => t.tag.title)
                }
                return result
            }))
        }, res)
    })
}

const execute = (main: any, res: any) => {
    try {
        main()
            .catch((e: any) => {
                throw e
            })
            .finally(async () => {
                await prisma.$disconnect()
            })

    } catch (err) {
        console.error(err) // eslint-disable-line no-console
        res.json({ error: err.message || err })
    }
}