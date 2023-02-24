//Escribe una función en pseudocódigo que devuelva el área de un cículo dado su radio.Fórmula PI x r2
Algoritmo areacirculo
	Definir r Como Real;
	Escribir "¿Cuál es el radio de tu círculo?";
	Leer r;
	Escribir "El área del círculo es de ",radio(r);
FinAlgoritmo

Funcion c = radio(r)
	Definir c Como Real;
	c = PI * r^2 ;
FinFuncion