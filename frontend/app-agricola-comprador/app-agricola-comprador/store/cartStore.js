import { create } from "zustand";

export const useCart = create((set) => ({
    items: [],

    addProduct: (product) => set((state) => {
        // verifies if the product is already in array
        const productIndex = state.items.findIndex(item =>
            JSON.stringify(item.product) === JSON.stringify(product)
        );

        // if it is, it adds one to the quantity
        if (productIndex !== -1) {
            const updatedItems = [...state.items];
            updatedItems[productIndex].quantity += 1;

            return { items: updatedItems };
        }

        // otherwise, it adds the new product with quantity one
        return {
            items: [...state.items, { product, quantity: 1 }]
        };
    }),

    resetCart: () => set({ items: [] }),

}));

