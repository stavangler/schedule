import * as express from 'express';
import pgPromise from 'pg-promise';
import QueryDay from '../models/query-day'

export const register = (app: express.Application) => {
  const port = parseInt(process.env.DB_PORT || '5432', 10);
  const config = {
    database: process.env.DB_DATABASE || 'pgdb',
    host: process.env.DB_HOST || 'localhost',
    port,
    user: process.env.DB_USER || 'user',
    password: process.env.DB_PASSWORD || 'password',
  };

  const pgp = pgPromise();
  const db = pgp(config);

  app.get('/api/trip/day', async (req: any, res) => {

    // req.params.queryDay

    try {
      const date = '2018-04-12';
      const day = await db.any(`
                SELECT id, title
                FROM days
                WHERE date = $[date]
                ORDER BY starttime ASC`, { date });

      // ...

      return res.json(day);
    } catch (err) {
      // tslint:disable-next-line:no-console
      console.error(err); // eslint-disable-line no-console
      res.json({ error: err.message || err });
    }
  });
};