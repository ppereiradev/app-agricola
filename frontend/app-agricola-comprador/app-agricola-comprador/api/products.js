const API_URL = "http://localhost:8000/api";

export async function getProducts() {

    const res = await fetch(`${API_URL}/products/`);
    const data = res.json();

    if(!res.ok){
        throw new Error("Error");
    }

    return data;
}

export async function getProductById(id) {

    const res = await fetch(`${API_URL}/products/${id}`);
    const data = res.json();

    if(!res.ok){
        throw new Error("Error");
    }

    return data;
}
