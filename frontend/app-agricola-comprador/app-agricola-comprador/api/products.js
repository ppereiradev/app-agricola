const API_URL = process.env.BACKEND;

export async function getProducts() {

    const res = await fetch(`${API_URL}/products`);
    const data = res.json();

    if(!res.ok){
        throw new Error("Error");
    }

    return data;
}
