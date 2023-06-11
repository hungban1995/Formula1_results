import { createSlice } from '@reduxjs/toolkit'

const values = createSlice({
    name: 'values',
    initialState: {
        data: null
    },
    reducers: {
        getValueAction(state: any, action) {
            state.data = action.payload
        },

    }
})

export const { getValueAction } = values.actions
export default values.reducer