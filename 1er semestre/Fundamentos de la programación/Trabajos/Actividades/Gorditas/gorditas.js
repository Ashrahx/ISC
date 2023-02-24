//Variables
let p = 0;
let ch = 0;
let q = 0;
let a = 0;
let m = 0;
let opc = 0;
let ing = " "

//Entrada
let msg = "GORDITAS PURITA🥟\n";
msg += "Seleccione una opción:\n";
msg += "1\) Picadillo\n";
msg += "2\) Chicharrón\n";
msg += "3\) Queso\n";
msg += "4\) Asado\n";
msg += "5\) Moronga\n";
msg += "6\) Salir\n"

//Proceso
do {
    opc = Number(prompt(msg));
    switch(opc){
        case 1:
            ing = "Gordita de picadillo";
            p++;
        break;
        case 2:
            ing = "Gordita de chicharrón";
            ch++;
        break;
        case 3:
            ing = "Gordita de queso";
            q++;
        break;
        case 4:
            ing = "Gordita de asado";
            a++;
        break;
        case 5:
            ing = "Gordita de moronga";
            m++;
        break;
        case 6:
            alert("La compra se ha realizado con exito");
        break;
        default:
            alert("No se ha seleccionado una opción valida");
            break;
    }
    if(opc < 6){
        alert(ing + " se ha agregado al carrito");
    }
} while (opc != 6);

//Salida
let t = p + ch + q + a + m;
let exit = "Usted ha agregado:\n";
exit += p + " gordita(s) de picadillo\n";
exit += ch + " gordita(s) de chicharrón\n";
exit += q + " gordita(s) de queso\n";
exit += a + " gordita(s) de asado\n";
exit += m + " gordita(s) de moronga\n";
exit += "El total de elementos pedidos es: " + t;
alert(exit)