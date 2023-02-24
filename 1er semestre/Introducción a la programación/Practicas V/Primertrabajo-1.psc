// leer la entrada de tres números y añadir un cuarto que indique si ya fue añadido anteriormente
Algoritmo Primertrabajo
	Definir n1, n2, n3 ,n4 Como entero;
	Escribir "Ingresa un número";
	Leer n1;
	Escribir "Ingresa un segundo número";
	Leer n2;
	Escribir "Ingresa un tercer número";
	Leer n3;
	Escribir "Ingresa un cuarto número";
	Leer n4;
	Repetir
		Si n4 = n1 o n4 = n2 o n4= n3 Entonces
			Escribir "El número ya fue añadido anteriormente intenta con otro";
			Escribir "Ingresa un cuarto número nuevamente";
			Leer n4;
		FinSi
	Hasta Que n4 = 4
FinAlgoritmo
