Algoritmo sin_titulo
	Definir cali1, cali2, cali3, prom Como Real
	Escribir 'Ingresa la primera calificación'
	Leer cali1
	Escribir 'Ingresa la segunda calificación'
	Leer cali2
	Escribir 'Ingresa la tercera calificación'
	Leer cali3
	prom <- (cali1+cali2+cali3)/3
	
	Si prom < 70 Entonces
		Escribir "El alumno está reprobado con un promedio de " prom;
	SiNo
		Escribir "El alumno aprobó con un promedio de " prom;
	Fin Si

FinAlgoritmo
