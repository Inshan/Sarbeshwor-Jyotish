import { createSlice } from "@reduxjs/toolkit";

export const initialState = {
    adminDetails: {},
    isAdminLoggedIn: false,
};

const adminSlice = createSlice({
    name: "admin",
    initialState,
    reducers: {
        setAdminDetails: (state, actions) => {
            return {
                ...state,
                token: actions.payload.token,
                isAdminLoggedIn: actions.payload.success,
                adminDetails: actions.payload.adminDetails
            }
        }
    }
});

export const { setAdminDetails } = adminSlice.actions;
export default adminSlice.reducer;