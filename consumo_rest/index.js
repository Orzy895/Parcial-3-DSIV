let baseUrl = "http://localhost:8080"
let personajes = []

function ObtenerPersonajes() {
    fetch(baseUrl + '/personajes/all').then(res => {
        res.json().then(json => {
            personajes = json
            ImprimirPersonajes();
        })
    })
}

function ImprimirPersonajes() {
    let contenedor = document.getElementById("cosas")
    contenedor.innerHTML = "";
    personajes.forEach(personaje => {
        contenedor.innerHTML += MapearPersonajes(personaje)
    })
}

function MapearPersonajes(personaje) {
    return `
    <article>
        <img src="${personaje.imagen}"
            alt="" class="circulo">
        <h2>${personaje.nombre}</h2>
    </article>`;
}
