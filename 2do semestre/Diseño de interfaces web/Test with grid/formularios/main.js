function validarFormulario() {
    let pass = document.getElementById("pass").value;
    let passc = document.getElementById("passc").value;
    let checkbox = document.getElementById("checkbox");

    if (pass.length != 8) {
        alert("La contraseña debe tener 8 dígitos");
        return false;
    }

    if (pass != passc) {
        alert("Las contraseñas no coinciden");
        document.getElementById("passc").value = "";
        return false;
    }

    if (!checkbox.checked) {
        alert("Debes aceptar los términos y condiciones");
        return false;
    }

    return true;
}

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("form").addEventListener("submit", function(event) {
        if (!validarFormulario()) {
            event.preventDefault();
        }
})});
