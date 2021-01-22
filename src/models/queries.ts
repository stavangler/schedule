export interface TripsQuery {
}

export interface TripDetailsQuery {
    tripId: number
}

export interface AgendaQuery {
    tripId: number
    date: string
    speaker?: string
}