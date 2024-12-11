const API_URL = "http://localhost:8000/api";

export async function getUserByUsername(username) {

    const res = await fetch(`${API_URL}/users/${username}`);
    const data = res.json();

    if(!res.ok){
        throw new Error("Error");
    }
    console.log(data);
    return data;
}
