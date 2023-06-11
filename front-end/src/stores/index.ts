
import { configureStore } from '@reduxjs/toolkit'
import valueReducer from './valueReducer'



export default configureStore({
    reducer: {
        values: valueReducer

    }
})