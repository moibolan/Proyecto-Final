function validarCorreo(campo){
    var regex = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
    if(campo.value.match(regex)){
        return true;
    }
    alert("Correo invalido");
    return false;

}

function validarTodo(){
    return validarCorreo(document.getElementById("correo"));
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
var owner = $('#owner'),
    cardNumber = $('#cardNumber'),
    cardNumberField = $('#card-number-field'),
    CVV = $("#cvv"),
    mastercard = $("#mastercard"),
    confirmButton = $('#confirm-purchase'),
    visa = $("#visa"),
    amex = $("#amex");

cardNumber.payform('formatCardNumber');
CVV.payform('formatCardCVC');


cardNumber.keyup(function() {
    amex.removeClass('transparent');
    visa.removeClass('transparent');
    mastercard.removeClass('transparent');

    if ($.payform.validateCardNumber(cardNumber.val()) === false) {
        cardNumberField.removeClass('has-success');
        cardNumberField.addClass('has-error');
    } else {
        cardNumberField.removeClass('has-error');
        cardNumberField.addClass('has-success');
    }

    if ($.payform.parseCardType(cardNumber.val()) === 'visa') {
        mastercard.addClass('transparent');
        amex.addClass('transparent');
    } else if ($.payform.parseCardType(cardNumber.val()) === 'amex') {
        mastercard.addClass('transparent');
        visa.addClass('transparent');
    } else if ($.payform.parseCardType(cardNumber.val()) === 'mastercard') {
        amex.addClass('transparent');
        visa.addClass('transparent');
    }
});


confirmButton.click(function(e) {
    e.preventDefault();

    var isCardValid = $.payform.validateCardNumber(cardNumber.val());
    var isCvvValid = $.payform.validateCardCVC(CVV.val());

    if(owner.val().length < 5){
        alert("Wrong owner name");
    } else if (!isCardValid) {
        alert("Wrong card number");
    } else if (!isCvvValid) {
        alert("Wrong CVV");
    } else {
        // Everything is correct. Add your form submission code here.
        alert("Everything is correct");
    }
});
