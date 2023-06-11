import "./styles/App.scss";

import Navbar from "./component/Navbar";
import View from "./component/View";
import stores from "../src/stores";
import { Provider } from "react-redux";
import AllData from "./component/AllData";

function App() {
  return (
    <Provider store={stores}>
      <div className="App">
        <Navbar />
        <main>
          <View />
          <AllData />
        </main>
      </div>
    </Provider>
  );
}

export default App;
