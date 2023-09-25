// Variables
let posAct = 0;
let pasos = 0;
let opc = 0;
let iugar = "";

let menub = "===BIENVENIDO===\n"
menub += "1) ¿Dónde estoy?\n";
menub += "2) Moverme\n";
menub += "3) Salir\n";
menub += "Ingrese una opción (1-3):"

// Principal
do {
    opc = Number(prompt(menub));
    switch (opc) {
        case 1:
            LugarActual();
            break;
        case 2:
            let place = Lugares(); // Llamar a la función Lugares() para obtener opt
            Moverse(place); // Pasar el valor opt a Moverse()
            break;
        case 3:
            alert("¡Hasta luego!");
            break;
        default:
            alert("Opción incorrecta");
            break;
    }
} while (opc != 3);

// Funciones
function Lugares() {
    let opt = 0;
    while (opt <= 0 || opt > 5) { // Corregir la condición
        let menuDest = "===DESTINOS===\n"
        menuDest += "1) CIP\n";
        menuDest += "2) CTA\n";
        menuDest += "3) Edificio A\n";
        menuDest += "4) Edificio B\n";
        menuDest += "5) Cafetería\n";
        menuDest += "Ingrese una opción (1-5):"
        opt = Number(prompt(menuDest));
        if (opt < 1 || opt > 5) { // Corregir la condición
            alert("No es una opción válida");
        }
    }
    return opt;
}

function LugarActual() {
    switch (posAct) {
        case 1:
            iugar = "CIP";
            break;
        case 2:
            iugar = "CTA";
            break;
        case 3:
            iugar = "Edificio A";
            break;
        case 4:
            iugar = "Edificio B";
            break;
        case 5:
            iugar = "Cafetería";
            break;
    }
    if (iugar !== "") { // Verificar si iugar no está vacía
        alert("Actualmente estás ubicado en " + iugar + "\nHas dado " + pasos + " pasos");
    } else {
        alert("No estás en UAL");
    }
}

function Moverse(dest) {
    if (posAct === dest) {
        alert("Ya estás en este lugar");
    } else {
        pasos += 10;
        posAct = dest;
        LugarActual();
    }
}
