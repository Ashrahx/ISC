function validuser(){
    let user = document.getElementById('user').value;
    let pass = document.getElementById('pass').value;
    const usuario = "Ashrah";
    const password = "161021";
    if(user == usuario){
        if(pass == password){
            window.location.href= "policies.html"
        }else{
            alert("La contraseña no coincide");  
        }
    }else{
        alert("El usuario no coincide")
    }
}