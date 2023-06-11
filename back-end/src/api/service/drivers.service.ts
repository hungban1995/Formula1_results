import { db } from "../../configs/db.config"

export const getByYear = (year: string) => {
    const query = "SELECT pos,driver,nationality,pts,year FROM `drivers` LEFT JOIN years ON drivers.YEAR_ID = years.id WHERE years.year=?	"

    return new Promise((resolve, reject) => {
        db.query(query, [year], (err, data) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};

export const getAll = () => {
    const query = "SELECT pos,driver,nationality,pts,year FROM `drivers` LEFT JOIN years ON drivers.YEAR_ID = years.id"
    return new Promise((resolve, reject) => {
        db.query(query, (err, data) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};

export const getByName = (name: string) => {
    const query = "SELECT * FROM `drivers` LEFT JOIN years ON drivers.YEAR_ID = years.id Where DRIVER = ? ORDER BY year asc"
    return new Promise((resolve, reject) => {
        db.query(query, [name], (err, data) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};