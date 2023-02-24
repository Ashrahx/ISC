//Crear un vector de 5 elementos de cadenas de caracteres, inicializan el vector
//con datos leídos por el teclado, copia los elementos del vector en otro vector
//pero en orden inverso, y múestralo por la pantalla
Algoritmo Ejercicio2
	Definir v1, v2 Como Caracter;
	Definir c Como Entero;
	Dimension v1[5], v2[5];
	
	Para c = 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingresa un caracter";
		Leer v1[c];
		v2[4-c] = v1[c];
	Fin Para
	
	Para c = 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Vector" "[" ,c, "] : " ,v2[c];
	Fin Para
	
FinAlgoritmo
