
var input_username = document.querySelector("#input_username");
var input_password = document.querySelector("#input_password");
var error_msg = document.querySelector(".error_msg");

// function validation(){
//
//
//     if(input_username.value.length <= 3 || input_password.value.length <= 3 ){
//         error_msg.style.display = "inline-block";
//         input_username.style.border = "1px solid #f74040";
//         input_password.style.border = "1px solid #f74040";
//         return false;
//     }
//     else{
//         return true;
//     }
//
// }

function validarPassword(campoPassword){
    var regex = /^(?=.*[A-Z])(?=.*\d)[A-Za-z\d_-]{8,12}$/;
    if(!campoPassword.value.match(regex)){

        // alert("Contraseña invalida");
        error_msg.style.display = "inline-block";
        input_username.style.border = "1px solid #f74040";
        input_password.style.border = "1px solid #f74040";
        return false;
    }
    return true;
}

function validarUser(campoUsername){
    var regex = /^[A-Za-z\d_-]{4,100}$/;
    if(!campoUsername.value.match(regex)){
        error_msg.style.display = "inline-block";
        input_username.style.border = "1px solid #f74040";
        input_password.style.border = "1px solid #f74040";
        return false;
    }
    return true;
}



function validarTodo(){
    if(!validarPassword(document.getElementById("input_password"))){
        return false;
    }
    if(!validarUser(document.getElementById("input_username"))){
        return false;
    }
    // if(!validation()){
    //     return false;
    // }

    return true;

}