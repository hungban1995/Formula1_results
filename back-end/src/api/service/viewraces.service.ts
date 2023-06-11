import { db } from "../../configs/db.config"

export const getByYear = (year: string) => {
    const query = "SELECT grand,date,winner,car,laps,time,year FROM `races` LEFT JOIN years ON races.YEAR_ID = years.id WHERE years.year=?	"

    return new Promise((resolve, reject) => {
        db.query(query, [year], (err, data) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};

export const getAll = () => {
    const query = "SELECT grand,date,winner,car,laps,time,year  FROM `races`  JOIN years ON races.YEAR_ID = years.id"
    return new Promise((resolve, reject) => {
        db.query(query, (err, data) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};

export const getYears = () => {
    const query = "SELECT year  FROM `years`"
    return new Promise((resolve, reject) => {
        db.query(query, (err, data) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};
export const getByName = (name: string) => {
    const query = "SELECT * FROM `races` LEFT JOIN years ON races.YEAR_ID = years.id Where Grand = ? ORDER BY year asc"
    return new Promise((resolve, reject) => {
        db.query(query, [name], (err, data) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};  