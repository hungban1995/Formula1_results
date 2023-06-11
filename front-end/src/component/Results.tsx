import React from "react";
import { useDispatch } from "react-redux";
import { getValueAction } from "../stores/valueReducer";

function Results({
  data,
  setData,
}: {
  data: any;
  setData: (data: any) => void;
}) {
  const dispatch = useDispatch();

  return (
    <div className="results">
      {data.length > 0 ? (
        data.map((item: any, idx: number) => {
          return (
            <div
              className="result-item"
              key={idx}
              onClick={() => {
                dispatch(
                  getValueAction({ key: item.data_type, value: item.name })
                );
                setData(null);
              }}
            >
              <span>{item.name}</span>
              <i>{item.data_type}</i>
            </div>
          );
        })
      ) : (
        <div>No data!</div>
      )}
    </div>
  );
}

export default Results;
