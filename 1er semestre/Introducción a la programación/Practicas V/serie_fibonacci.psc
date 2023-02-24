// Hacer un programa en el que el usuario ingrese un numero y se mustren los 
Algoritmo serie_fibonacci
	Definir a, b, c, d, n Como Entero;
	Escribir "       ---------------";
	Escribir "       SERIE FIBONACCI";
	Escribir "       ---------------";
	Escribir 'Ingresa un limite para la serie';
	Leer n;
	c = 1;
	b = 1;
	d = 1;
	Mientras d <= n Hacer
		a = c + b;
		c = b;
		b = a;
		Escribir c;
		d = d  + 1;
	Fin Mientras
FinAlgoritmo
