import * as express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient()

export const register = (app: express.Application) => {

    app.get('/api/trip/day', async (req: any, res) => {

        // req.params.queryDay
        try {
            const main = async () => {
                const result = await prisma.entries.findMany();
                console.log(result);
            }

            main()
                .catch(e => {
                    throw e;
                })
                .finally(async () => {
                    await prisma.$disconnect();
                })

        } catch (err) {
            // tslint:disable-next-line:no-console
            console.error(err); // eslint-disable-line no-console
            res.json({ error: err.message || err });
        }
    });
};