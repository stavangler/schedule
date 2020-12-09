import dotenv from 'dotenv'
import express from 'express'
import path from 'path'
import * as auth from './middleware/auth'
import * as routes from './routes'

dotenv.config()
const port = process.env.SERVER_PORT
const app = express()
app.use(express.json())
// auth.register( app );
routes.register(app)

app.listen(port, () => {
    // tslint:disable-next-line:no-console
    console.log(`server started at http://localhost:${port}`)
})