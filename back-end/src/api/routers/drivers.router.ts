import express from "express";
import { getByYear, getAll, getByName } from "../controller/drivers.controller";

const router = express.Router();
const driversRouter = async (app: express.Express) => {
    router.get('/get-by-year/:year', getByYear)
    router.get('/get-all/', getAll)
    router.get('/get-by-name/:name', getByName)


    return app.use("/api/drivers-results", router);
}
export default driversRouter;