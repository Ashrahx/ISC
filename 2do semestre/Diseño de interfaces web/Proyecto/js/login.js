function charge() {
    let passc = localStorage.getItem("passc");
    if (passc) {
        document.getElementById("passc").value = passc;
        localStorage.removeItem("passc");
    }
}


window.onload = function() {
    let passc = localStorage.getItem("passc");
    if (passc) {
        document.getElementById("passc").value = passc;
    }
}

function validarFormulario() {
    let pass = document.getElementById("pass").value;
    let passc = document.getElementById("passc").value;

    if (pass !== passc) {
        alert("La contraseña no es correcta");
        return false;
    }

    return true;
}