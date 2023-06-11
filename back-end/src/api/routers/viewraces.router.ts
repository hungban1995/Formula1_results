import express from "express";
import { getByYear, getAll, getYears, getByName } from "../controller/viewraces.controller";

const router = express.Router();
const racesRouter = async (app: express.Express) => {
    router.get('/get-years/', getYears)

    router.get('/get-by-year/:year', getByYear)
    router.get('/get-all/', getAll)
    router.get('/get-by-name/:name', getByName)

    return app.use("/api/races-results", router);
}
export default racesRouter;