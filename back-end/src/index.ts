import express, { Express, Request, Response, NextFunction } from 'express'
import createError from 'http-errors';

import corsConfig from './configs/cors.config';

import racesRouter from './api/routers/viewraces.router';
import driversRouter from './api/routers/drivers.router';
import teamsRouter from './api/routers/teams.router';
import searchRouter from './api/routers/search.router';

type catchError = (error: any, req: Request, res: Response, next: NextFunction) => void;
export type functionType = (req: Request, res: Response, next: NextFunction) => void;

const port = 8080 || 5000
const app: Express = express()

const handleError: catchError = (error, req, res, next) => {
    console.log('Error::: ', error);
    if (error && error.status) return res.status(error.status).json({ status: error.status, message: error.message })
    res.status(500).json({ message: 'Internal server error!' })
}
corsConfig(app)
//routes
racesRouter(app)
driversRouter(app)
teamsRouter(app)
searchRouter(app)
app.use(handleError)
app.use((req: Request, res: Response) => {
    const err = createError(404)
    return res.status(404).json(err)
});
app.listen(port, () => {
    console.log(`Server running at ${port}`);
})