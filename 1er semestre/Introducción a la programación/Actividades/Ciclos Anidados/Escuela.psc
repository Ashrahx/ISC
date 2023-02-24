//Se requiere calcular el promedio de una escuela la cual cuenta con 3 grupos y 3 alumnos en cada grupo los cuales tienen 4 materias cada uno
Algoritmo Escuela
	Definir c, p, t, r Como Real;
	Definir i, m, g Como Entero;
	i = 1;
	g = 1;
	p = 0;
	t = 0;
	r = 0;
	Mientras g <= 3 Hacer
		i = 1;
		Escribir "-----------------";
		Escribir "Grupo " ,g;
		Escribir "-----------------";
	Mientras i <= 3 Hacer
		m = 1;
		Escribir "Alumno " ,i;
		Escribir "-----------------";
		Escribir "A continuación ingrese las calificaciones del alumno";
		Escribir "-----------------";
		Mientras m <= 4 Hacer
			Escribir "Materia " ,m, " : ";
			Leer c;
			p = p + c;
			m = m + 1;
		Fin Mientras
		p = p / 4; //Se saca el promedio del alumno
		t = t + p;
		p = 0;
		i = i + 1;
	Fin Mientras
	g = g + 1;
	t = t / 3; //Se saca el promedio del grupo
	r = r + t;
	t = 0;
Fin Mientras
	r = r / 3; //Se obtiene el promedio de la escuela
	Escribir "-----------------";
	Escribir "El promedio de la escuela es de " ,r;
FinAlgoritmo
