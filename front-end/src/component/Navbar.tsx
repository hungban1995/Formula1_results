import { useEffect, useState } from "react";
import Results from "./Results";
import axios from "axios";
import { BASE_URL } from "../constant/URL";

function Navbar() {
  const [value, setValue] = useState<string>();
  const [data, setData] = useState<[] | null>();

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setValue(e.target.value);
  };
  const handleSearch = () => {
    axios
      .get(`${BASE_URL}search?q=${value}`)
      .then((res) => setData(res.data.data))
      .catch((err) => console.log(err));
  };
  return (
    <div className="navbar-container">
      <span className="logo">Formula1 Results</span>
      <div className="search">
        <input
          type="text"
          placeholder="Search drivers, races, teams!"
          onChange={handleChange}
        />
        <button onClick={handleSearch}>Search</button>
        {data && <Results data={data} setData={setData} />}
      </div>

      <span className="more-data">
        <a
          style={{ textDecoration: "none", color: "unset" }}
          href="https://www.formula1.com/en/results.html/2023/races.html"
        >
          More data...
        </a>
      </span>
    </div>
  );
}

export default Navbar;
