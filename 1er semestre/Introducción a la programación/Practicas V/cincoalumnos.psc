//Programa que pida el nombre, grado, calificación de 5 alumnos y determine cual es el mayor e imprima el nombre, grado y calificación de cada alumno
Algoritmo cincoalumnos
	Definir a, a2 Como Caracter;
	Definir g, c, i, r, g2 Como Real;
	i = 1;
	r = 0;
	Mientras i <= 5 Hacer
		Escribir "--------------------------------";
		Escribir "Ingrese los datos del alumno " i;
		Escribir "Nombre :";
		Leer a;
		Escribir "Grado :";
		Leer g;
		Escribir "Calificación :";
		Leer c;
		Si c > r Entonces
			a2 = a;
			g2 = g;
			r = c;
		FinSi
		i = i + 1;
	Fin Mientras
	Escribir "El alumno con mayor calificación de los 5 es " a2, " de " g2, " semestre con un promedio de " r;
FinAlgoritmo
