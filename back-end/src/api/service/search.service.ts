import { db } from "../../configs/db.config"

export const searchData = (q: string) => {

    const query = "SELECT  DRIVER as name,  'driver' AS data_type FROM drivers " +
        "r Where DRIVER LIKE ? " +
        "UNION  SELECT GRAND as name , 'race' AS data_type  FROM races " +
        " WHERE WINNER LIKE ? or GRAND like ? " +
        " UNION SELECT TEAM as name,  'team' AS data_type FROM teams " +
        " WHERE TEAM LIKE ?  group by name ";
    const searchValue = `%${q}%`;
    return new Promise((resolve, reject) => {
        db.query(query, [searchValue, searchValue, searchValue, searchValue, searchValue, searchValue,], (err: any, data: unknown) => {
            if (err) reject(err);
            resolve(data);
        });
    });
};
