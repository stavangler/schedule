export interface TripResult {
    id: number,
    title: string
    description: string
    imgUrl: string
    date: string
}

export interface AgendaResult {
    id: number,
    date: string
    title: string
    description: string
    room: string
    starttime: string
    endtime: string
    duration: string
    speakers: string[]
    tags: string[]
}