//Se requiere crear un algoritmo para calcular el promedio individual de una cantidad de alumnos.
//El algoritmo tiene que pedir al usuario 3 calificaciones por alumno, mostar en pantalla el promedio más alto, el más bajo,
//crear una funcion que nos retrona el promedio general del grupo y muestre el promedio
SubProceso  retorno = pgrupo(p, a)
	Definir retorno Como Real;              //NOTA : el programa no esta hecho para calificaciones de 100
	Definir c Como Entero;
	retorno = 0;
	Para c = 0 Hasta a - 1 Con Paso 1 Hacer
		retorno = retorno + p[c];
	FinPara
	retorno = retorno / a;
FinSubProceso

Algoritmo Examen_Pedro_Emiliano_Garcia_Onate
	Definir estudiante, a, p, pmayor, pmenor, pin Como Real;   
	Definir c, i Como Entero;
	pmayor = 0;
	pmenor = 10;
	Escribir "Ingresa los alumnos del grupo";
	Leer a;
	Dimension p[a];
	Dimension estudiante[a, 3];
	Para c = 0 Hasta a - 1 Con Paso 1 Hacer
		Escribir "Alumno ", c+1;                    //Aquí pide al usuario que escriba las calificaciones
		p[c] = 0;
		Escribir "Escriba las 3 calificaciones";
		Para i = 0 Hasta 2 Con Paso 1 Hacer
			Repetir
				Leer estudiante[c, i];
			Hasta Que estudiante[c, i] >= 0 y estudiante[c, i] <= 10;
			p[c] = p[c] + estudiante[c, i];
		FinPara
		pin = p[c] /3;
		Escribir "Promedio individual: " ,pin;
		Escribir "";
		p[c] = p[c] / 3;
		Si p[c] > pmayor Entonces
			pmayor = p[c];
		FinSi
		Si p[c] < pmenor Entonces
			pmenor = p[c];
		FinSi
	FinPara
	Escribir "";
	Escribir "El promedio más alto de los " ,a, " es de " ,pmayor;       //Aquí se muestra los promedios
	Escribir "El promedio más bajo de los " ,a, " es de "  ,pmenor;
	Escribir "El promedio grupal es de ", pgrupo(p, a);
FinAlgoritmo