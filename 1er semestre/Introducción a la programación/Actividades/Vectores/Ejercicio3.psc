//Se requiere relizr un programa que lea por teclado las 5 notas obtenidas por el alumno (comprendidas
// entre 0 y 10). A continuación, debe mostrar todas la notas, la nota media, la nota más alta que ha sacado y el menor
Algoritmo Ejercicio3
	Definir n, nmenor, nmayor, p Como Real;
	Definir c Como Entero;
	Dimension n[5];
	p = 0;
	nmenor = 10;
	nmayor = 0;
	
	Para c = 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingrese la nota " ,c + 1;
		Leer n[c];
		p = p + n[c];
		Repetir
			Si n[c] > 10 o n[c] < 0 Entonces
				Escribir "Vuelva a ingresar una nota valida";
				Escribir "Ingrese la nota " ,c + 1;
				Leer n[c];
			Fin Si
		Hasta Que n[c] < 11 o n[c] < 0
	Fin Para
	
	// Identificar el mayor nota
	Para c = 0 Hasta 4 Con Paso 1 Hacer
		Si n[c] > nmayor Entonces
			nmayor = n[c];
		FinSi
	Fin Para
	
	// Identificar el menor nota
	Para c = 0 Hasta 4 Con Paso 1 Hacer
		Si n[c] < nmenor Entonces
			nmenor = n[c];
		FinSi
	Fin Para
	
	// Calcular promedio
	p = p / 5;
	
	// Resultados
	Para c = 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Nota " "[",c + 1,"]" ":" n[c];
	Fin Para
	
	Escribir "La nota mayor es: " nmayor,;
	Escribir "La nota menor es: " nmenor,;
	Escribir "La media de las notas es: " p,;
FinAlgoritmo
