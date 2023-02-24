//Se requiere crear un algoritmo para calcular el promedio individual de una cantidad de alumnos.
//El algoritmo tiene que pedir al usuario 3 calificaciones por alumno, mostar en pantalla el promedio más alto, el más bajo,
//crear una funcion que nos retrona el promedio general del grupo y muestre el promedio
Algoritmo Examen_Pedro_Emiliano_Garcia_Onate
		Escribir (prom()+prom()+prom())/3;
FinAlgoritmo

Funcion promedio = prom()
	Definir a, i Como Entero;
	Definir c, c1, c2, c3, p, pg, promi, r, mn Como Real;
	p = 0;
	r = 0;
	mn= 10;
	Repetir
	Escribir "Ingresa el número de alumnos";
	Leer a;
	Para i = 1 Hasta a Con Paso 1 Hacer
        Escribir "Alumno ", i;
        Escribir "Ingresa las 3 calificaciones:";
        Leer c1, c2, c3;
		promi = (c1+c2+c3)/3;
		p = p + promi;
        Escribir "Promedio individual: " ,promi;
		Escribir "";
		Si promi > r Entonces
			r = promi;
		FinSi
		Si promi < mn Entonces
			mn = promi;
		FinSi
    FinPara
	pg = p / a;
	Escribir "Promedio general del grupo: " ,pg;
	Escribir "La calificación más alta es de " ,r;
	Escribir "La calificación más baja es de " ,mn;
Hasta Que i = a
FinFuncion






