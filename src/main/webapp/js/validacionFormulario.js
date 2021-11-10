
 

function validarCorreo(campo){
    var regex = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
    if(campo.value.match(regex)){
        return true;
    }
    alert("Correo invalido");
    return false;

}

function validarTodo(){
    if(validarCorreo(document.getElementById("correo"))){
        return true;
    }
    return false;

}

const hideBox = document.querySelector("#hide");

hideBox.addEventListener("change",function(e){
    if(hideBox.checked){
        document.getElementById("tarjeta").style.display="initial";

    }else{
        document.getElementById("tarjeta").style.display="none";

    }

});
const tarjeta = document.querySelector("#tarjeta");
tarjeta.addEventListener('keyup', (e) => {
   let valorInput = e.target.value;
   tarjeta.value = valorInput.replace(/\s/g,'').replace(/\D/g,'').replace(/([0-9]{2})/g, '$1-').replace(/\-$/, "");
});

