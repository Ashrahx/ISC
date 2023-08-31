//Se requiere crear un algoritmo para calcular el promedio individual de una cantidad de alumnos.
//El algoritmo tiene que pedir al usuario 3 calificaciones por alumno, mostar en pantalla el promedio más alto, el más bajo,
//crear una funcion que nos retrona el promedio general del grupo y muestre el promedio
Algoritmo ecsamen
	Definir a, i Como Entero;
	Definir c1, c2, c3, promedio_individual, promedio_general, calificacion_maxima, calificacion_minima Como Real;
	
	Escribir "Ingresa el número de alumnos";
	Leer a;
	
	promedio_general = 0;
	calificacion_maxima = 0;
	calificacion_minima = 10;
	
	Para i = 1 Hasta a Con Paso 1 Hacer
		Escribir "Alumno ", i;
		Escribir "Ingresa las 3 calificaciones:";
		Leer c1, c2, c3;
		
		promedio_individual = (c1 + c2 + c3) / 3;
		promedio_general = promedio_general + promedio_individual;
		
		Escribir "Promedio individual: ", promedio_individual;
		
		Si promedio_individual > calificacion_maxima Entonces
			calificacion_maxima = promedio_individual;
		FinSi
		
		Si promedio_individual < calificacion_minima Entonces
			calificacion_minima = promedio_individual;
		FinSi
		
		Escribir "";
	FinPara
	
	promedio_general = promedio_general / a;
	
	Escribir "Promedio general del grupo: ", promedio_general;
	Escribir "La calificación más alta es de ", calificacion_maxima;
	Escribir "La calificación más baja es de ", calificacion_minima;
FinAlgoritmo
