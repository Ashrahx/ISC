Algoritmo Ejercicio_IV_Victor
	Definir v, d, i Como Entero;
	Dimension v[10];
	d = -1;
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingresa un valor para el vector";
		Leer v[i];
		d = d + 1;
		Si v[i] < 0 Entonces
			d = d - 1;
			i = 9;
		Fin Si
	Fin Para
	Escribir "----Valores introducidos----";
	Para i = 0 Hasta d Con Paso 1 Hacer
		Escribir "Vector " "[",i,"]" ":" v[i];
	Fin Para
FinAlgoritmo
