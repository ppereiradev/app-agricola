import { create } from "zustand";

export const useAuth = create((set) => ({
    user: null,
    token: null,
    userName: null,

    setUser: (user) => set({ user }),
    setToken: (token) => set({ token }),
    setUsername: (username) => set({ username }),

}));

