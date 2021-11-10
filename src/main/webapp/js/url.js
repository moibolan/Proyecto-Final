function getQueryVariableName(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split("&");

    for (var i=0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable) {

            document.getElementById("test").innerHTML = pair[1];
            document.getElementById("test").value = pair[1];
            return pair[1];

        }
    }
    return false;
}
function getQueryVariablePrecio(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split("&");

    for (var i=0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable) {


            document.getElementById("test2").innerHTML = pair[1];
            document.getElementById("test2").value = pair[1];
            return pair[1];

        }
    }
    return false;
}



// /**
//  * Funcion que captura las variables pasados por GET
//  * Devuelve un array de clave=>valor
//  */
//
//
// function getGET()
// {
//     // capturamos la url
//     var loc = document.location.href;
//     // si existe el interrogante
//     if(loc.indexOf('?')>0)
//     {
//         // cogemos la parte de la url que hay despues del interrogante
//         var getString = loc.split('?')[1];
//         // obtenemos un array con cada clave=valor
//         var GET = getString.split('&');
//         var get = {};
//          recorremos todo el array de valores
//         for(var i = 0, l = GET.length; i < l; i++){
//             var tmp = GET[i].split('=');
//             get[tmp[0]] = unescape(decodeURI(tmp[1]));
//         }
//         return get;
//     }
// }
//
// window.onload = function()
// {
//     // Cogemos los valores pasados por get
//     var valores=getGET();
//     if(valores)
//     {
//         //recogemos los valores que nos envia la URL en variables para trabajar
//         //con ellas
//         var nombre = valores['nombre'];
//         var edad = valores['edad'];
//         // hacemos un bucle para pasar por cada indice del array de valores
//         for(var index in valores)
//         {
//             document.write(" clave: "+index+" - valor: "+valores[index]);
//         }
//         document.write('<hr>Te llamas '+ nombre);
//         document.write(' Tu edad es '+ edad);
//     }else{
//         // no se ha recibido ningun parametro por GET
//         document.write("No se ha recibido ningún parámetro");
//     }
// }
