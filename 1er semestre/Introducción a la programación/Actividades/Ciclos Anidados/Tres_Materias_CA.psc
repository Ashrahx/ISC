//Un maestro quiere saber el propmedio de 5 alumnos que llevan 3 materias cada uno determina el promedio del grupo
Algoritmo Tres_Materias_CA
	Definir c, p, t Como Real;
	Definir i, m Como Entero;
	i = 1;
	p = 0;
	t = 0;
	Mientras i <= 5 Hacer
		m = 1;
		Escribir "-----------------";
		Escribir "Alumno " ,i;
		Escribir "-----------------";
		Escribir "A continuación ingrese las calificaciones del alumno";
		Escribir "-----------------";
		Mientras m <= 3 Hacer
			Escribir "Materia " ,m, " : ";
			Leer c;
			p = p + c;
			m = m + 1;
		Fin Mientras
		p = p / 3;
		t = t + p;
		p = 0;
		i = i + 1;
	Fin Mientras
	t = t / 5;
	Escribir "-----------------";
	Escribir "El promedio de los 5 alumnos es de " ,t;
FinAlgoritmo
