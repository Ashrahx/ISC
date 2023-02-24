//programa que pida nombre y edad al usuario , si la edad está entre 18 y 25 que diga que esta dentro del rango, si es menor a 18
//que es menor al rango, si es mayor a 130 diga que ya no pueda jugar con LEGO.
let age = 0;
let nome = 0;

do{
    nome = prompt("Introduzca el nombre del usuario");
} while (nome == "");

do{
    age = Number(prompt("¿Cuál es su edad?"));
    if(age < 0){
        alert("Generalmente una persona no puede puede tener esa edad")
    }
}while (age <= 0 || typeof(age) === isNaN(age));


if (age >= 18 && age <= 25){
    msg = "está dentro del rango establecido";
}else if(age < 18){
    msg = "está por debajo del rango establecido";
}else if(age > 99){
    msg = "no puede jugar con LEGO®"
}else{
    msg = "está por encima del rango establecido";
}

/*let info = "Usted ha accedido a la información del usuario:\n";
info += "El usuario " +nome+ "tiene una edad de " +age+ " años,\n por lo tanto " +msg;*/

alert("Usted ha accedido a la información del usuario:\n El usuario " +nome+ " tiene una edad de " +age+ " año(s), por lo tanto " +msg);

