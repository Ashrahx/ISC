//Variables
let n1 = 0;
let n2 = 0;
//Petición
n1 = Number(prompt("Ingrese un número"));
n2 = Number(prompt("Ingrese otro número"));
let opc = Number(prompt("Seleccione una opción: \n1)Adición\n2)Sustracción\n3)Producto\n4)División"));
//Proceso
switch(opc){
    case 1:
    alert("La adición de " +n1+ " y " +n2+ " es "  +Adicion(n1 , n2));
    break;
    case 2:
    alert("La sustracción de " +n1+ " y " +n2+ " es "  +Sustraccion(n1 , n2));
    break;
    case 3:
        alert("El producto de " +n1+ " y " +n2+ " es "  +Producto(n1 , n2));
    break;
    case 4:
        alert("La división de " +n1+ " y " +n2+ " es "  +Division(n1 , n2));
    break;
    default:
        alert("Opción no valida");
        break;
}
//Funciones
function Adicion(n1, n2){
    let r = 0;
    r = n1 + n2;
    return r;
}

function Sustraccion(n1, n2){
    let r = 0;
    r = n1 - n2;
    return r;
}

function Producto(n1, n2){
    let r = 0;
    r = n1 * n2;
    return r;
}

function Division(n1, n2){
    let r = 0;
    while(n2 < 1){
        alert("El divisor no debe ser menor que 1");
        n2 = Number(prompt("Ingresa otro valor para el segundo número"))
    }
    r = n1 / n2;
    return r;
}