import { configureStore } from "@reduxjs/toolkit";
import { combineReducers } from "redux";
import adminSlice from "../reducerSlice/adminSlice"

const reducer = combineReducers({
    admin: adminSlice
})

const store = configureStore ({
    reducer
})

export default store

