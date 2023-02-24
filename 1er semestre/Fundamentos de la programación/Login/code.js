function warning(){
    let pass = document.getElementById('pass').value;
    let passc = document.getElementById('passc').value;
    if(pass != passc){
    alert("Las contraseñas no coinciden");
    }
}
const form = document.getElementsById('form');
form.addEventListener("submit", e=>{
  if (pass.value.length < 8) {
    e.preventDefault();
    alert("La contraseña debe tener al menos 8 dígitos");
  }
});