import express from "express";
import { getByYear, getAll, getByName } from "../controller/teams.controller";

const router = express.Router();
const teamsRouter = async (app: express.Express) => {
    router.get('/get-by-year/:year', getByYear)
    router.get('/get-all/', getAll)
    router.get('/get-by-name/:name', getByName)

    return app.use("/api/teams-results", router);
}
export default teamsRouter;