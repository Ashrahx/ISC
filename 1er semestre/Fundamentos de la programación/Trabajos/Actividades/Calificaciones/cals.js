//Variable
let cal = 0;
//Entrada
cal = Number(prompt("Ingresa la calificación"));
//Procesos
if(cal>=0 && cal<=100){
 if(cal>69){
    if(cal>=91){
        alert("Excelente");
    }else if(cal>=81)
{
    alert("Muy bueno");
    }else if(cal>=70)
{
    alert("Bueno");
    }
}else{
    alert("Reprobado");
    }
}else{
    alert("No es una calificación valida");
}
