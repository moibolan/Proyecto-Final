const APIKEY = "?api_key=fcfc976e866156fd0d2bb5ac00cb521e"
const IMG = "https://image.tmdb.org/t/p/w500/"
const APIURL = "https://api.themoviedb.org/3/movie/"

const cargarImagenes = async() => {
    try {
        let item =document.getElementsByClassName('image');

        for (let i = 0; i < item.length; i++) {
            let id = item[i].getAttribute('id');

            const respuesta = await fetch(APIURL + id + APIKEY + "&language=en-US");

            // Si la respuesta es correcta
            if (respuesta.status === 200) {
                const datos = await respuesta.json();

                console.log(datos);
                let peliculas = '';
                peliculas = `
						<img class="image__img" src="https://image.tmdb.org/t/p/w500/${datos.poster_path}" alt="${datos.title}>
						<h4><marquee scrolldelay = 200>${datos.title}</marquee></h4>
				`;
                document.getElementById(id).innerHTML += peliculas;

            } else if (respuesta.status === 401) {
                console.log('Pusiste la llave mal');
            } else if (respuesta.status === 404) {
                console.log('La pelicula que buscas no existe');
            } else {
                console.log('Hubo un error y no sabemos que paso');
            }
        }
    } catch(error){
        console.log(error);
    }
}
cargarImagenes();