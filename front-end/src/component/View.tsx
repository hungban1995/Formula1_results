import React, { useEffect, useState } from "react";
import axios from "axios";
import { BASE_URL } from "../constant/URL";
import { useSelector } from "react-redux";
import ChartComponent from "./Chart";
import Winner from "./Winner";

function View() {
  const { data } = useSelector((state: any) => state.values);
  const [results, setResults] = useState<any>();

  useEffect(() => {
    if (data?.key) {
      axios
        .get(`${BASE_URL}${data?.key}s-results/get-by-name/` + data?.value)
        .then((res) => setResults(res.data.data))
        .catch((err) => console.log(err));
    }
  }, [data]);
  if (data?.key === "race")
    return (
      <div className="data-view">{results && <Winner results={results} />}</div>
    );
  return (
    <div className="data-view">
      {results && <ChartComponent results={results} />}
    </div>
  );
}

export default View;
