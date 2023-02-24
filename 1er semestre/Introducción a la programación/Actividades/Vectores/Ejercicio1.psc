//Realizar un programa que defina un vector llamado "vector numeros" de 10 enteros, a continuación,
//lo inicialice con valores aleatorios del 1 al 10 y posteriormente se muestre en pantalla cada elemento
//del vector junto con su cuadrado y su cubo (^2 y ^3).
Algoritmo Ejercicio1
	Definir vectornumeros, c Como Entero;
	Dimension vectornumeros[10];
	
	Para c= 0 Hasta 9 Con Paso 1 Hacer
		Repetir
			vectornumeros[c] = azar(11);
		Hasta Que vectornumeros[c] <> 0
	Fin Para
	
	Escribir "----CUADRADOS----";
	Para c= 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Vector Numeros " ,c, " " ,vectornumeros[c], "^2 = " ,vectornumeros[c]^2;
	FinPara
	
	Escribir "----CUBOS----";
	Para c= 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Vector Numeros " ,c, " " ,vectornumeros[c], "^3 = " ,vectornumeros[c]^3;
	FinPara
FinAlgoritmo
