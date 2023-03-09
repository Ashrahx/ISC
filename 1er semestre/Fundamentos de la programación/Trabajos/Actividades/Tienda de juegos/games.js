//Constantes
const elden = 1700;
const minecraft = 500;
const rainbow = 800;
const doom = 1500;
const tloz = 300;
const tlou = 1200;
const iva = 0.16;

//Variables
let opc = 0;
let subt = 0;
let cont = 0;
let total = 0;
let ivag = 0;

//Entrada y Proceso
function compra() {
  opc = Number(document.querySelector("#opc:checked").value);
  //Processar
  switch (opc) {
    case 1:
      alert("You chose Elden Ring");
      subt += elden;
      cont++;
      break;
    case 2:
      alert("You chose Minecraft ");
      subt += minecraft;
      cont++;
      break;
    case 3:
      alert("You chose Rainbow Six ");
      subt += rainbow;
      cont++;
      break;
    case 4:
      alert("You chose Doom Eternal ");
      subt += doom;
      cont++;
      break;
    case 5:
      alert("You chose Legend of Zelda ");
      subt += tloz;
      cont++;
      break;
    case 6:
      alert("You chose The Last of Us 2 ");
      subt += tlou;
      cont++;
      break;
    case 7:
      alert("Generating Ticket....");
      break;
    default:
      alert("Incorrect Option, try again :(");
      break;
  }
  if (opc == 7) {
    ivag = subt * iva;
    total = ivag + subt;
    //Salida
    let msg = " Your purchase is:\n";
    msg += " The amount of games: is " + cont + " games\n";
    msg += " Subtotal: $" + subt + "\n";
    msg += " Iva: $" + ivag + "\n";
    msg += " Total: $" + total;
    alert(msg);
  }
}
