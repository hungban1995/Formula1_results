import axios from "axios";
import React from "react";
import { BASE_URL } from "../constant/URL";

function AllData() {
  const [years, setYears] = React.useState<{ year: string }[]>();
  const [query, setQuery] = React.useState<{ year: string; type: string }>({
    year: "2020",
    type: "races",
  });
  const [data, setData] = React.useState<any[]>();

  React.useEffect(() => {
    axios
      .get(`${BASE_URL}races-results/get-years`)
      .then((res) => setYears(res.data.data))
      .catch((err) => console.log(err));
  }, []);
  React.useEffect(() => {
    axios
      .get(`${BASE_URL}${query.type}-results/get-by-year/${query.year}`)
      .then((res) => setData(res.data.data))
      .catch((err) => console.log(err));
  }, [query]);
  const handleChange = (e: React.ChangeEvent<HTMLSelectElement>) => {
    const { name, value } = e.target;
    setQuery((f) => ({ ...f, [name]: value }));
  };
  return (
    <>
      <div className="control">
        <span>All Results: </span>
        <select name="year" id="" onChange={handleChange}>
          {years &&
            years.map((item: { year: string }, idx: number) => {
              return (
                <option key={idx} value={item.year}>
                  {item.year}
                </option>
              );
            })}
        </select>
        <select name="type" id="" onChange={handleChange}>
          <option value="races">Races</option>
          <option value="drivers">Drivers</option>
          <option value="teams">Teams</option>
        </select>
      </div>
      <div className="table-data-view">
        <table cellSpacing={10} cellPadding={10}>
          <thead>
            <tr>
              {data &&
                Object.keys(data[0]).map((item: string, idx: number) => {
                  return <th key={idx}>{item}</th>;
                })}
            </tr>
          </thead>
          <tbody>
            {data?.map((value: any, idx: any) => {
              return (
                <tr key={idx}>
                  {Object.keys(data[0]).map((item: string, idx: number) => {
                    return <td key={idx}>{value[item]}</td>;
                  })}
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </>
  );
}

export default AllData;
