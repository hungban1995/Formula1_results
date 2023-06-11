import ReactApexChart from "react-apexcharts";
import { useSelector } from "react-redux";

const ChartComponent = ({ results }: { results: any }) => {
  const { data } = useSelector((state: any) => state.values);

  let years: string[] = [];

  let points: number[] = [];
  let position: number[] = [];
  results.forEach((item: any) => {
    years.push(item.year);
    points.push(item.pts);
    position.push(item.pos);
  });

  const options: any = {
    chart: {
      height: 350,
      type: "line", // Set the chart type to "line"
      zoom: {
        enabled: false,
      },
    },
    dataLabels: {
      enabled: false,
    },
    stroke: {
      curve: "straight",
    },
    title: {
      text: `Chart ${data.key} ${data.value}`,
      align: "left",
    },
    grid: {
      row: {
        colors: ["#f3f3f3", "transparent"],
        opacity: 0.5,
      },
    },
    xaxis: {
      categories: years,
    },
  };

  const series = [
    {
      name: "PST",
      data: points,
    },
    {
      name: "POS",
      data: position,
    },
  ];

  return (
    <ReactApexChart
      options={options}
      series={series}
      type="line"
      height={350}
    />
  );
};

export default ChartComponent;
