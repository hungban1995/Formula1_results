import React from "react";
import { useSelector } from "react-redux";

function Winner({ results }: { results: any }) {
  const { data } = useSelector((state: any) => state.values);

  return (
    <div>
      <h1>GRAND {data.value}</h1>
      <div className="table-data">
        <table cellSpacing={10} cellPadding={10}>
          <thead>
            <tr>
              <th>Date</th>
              <th>Winner</th>
              <th>Time</th>
              <th>Laps</th>
              <th>Car</th>
              <th>Year</th>
            </tr>
          </thead>
          <tbody>
            {results.map((item: any, idx: number) => {
              return (
                <tr key={idx}>
                  <td>{item.date}</td>
                  <td>{item.winner}</td>
                  <td>{item.time}</td>
                  <td>{item.laps}</td>
                  <td>{item.car}</td>
                  <td>{item.year}</td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default Winner;
