//Programa que declare un vector de 10 elementos enteros y pida numeros para rellenarlo hasta
//que se llene el vector o se introduzca un numero negativo. Entonces se debe imprimir el vector
//sólo los elementos introducidos.
Algoritmo Ejercicio4
	Definir v, tv, c Como Entero;
	Dimension v[10];
	tv = 10;
	c = 0;
	Repetir
		Escribir "Ingresa un valor para el vector " "[",c + 1,"]";
		Leer v[c];
		c = c + 1;
	Hasta Que c = tv O v[c-1] < 0;
	c = 0;
	
	Escribir "----Valores introducidos----";
	Mientras c < tv Y v[c] >= 0 Hacer
		Escribir "Vector " "[",c + 1,"]" ":" v[c];
		c = c + 1;
	FinMientras
		
FinAlgoritmo
