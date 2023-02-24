Algoritmo Director
	Definir c Como Real;
    Definir n, i Como Entero;
	Para a = 1 Hasta 3 Con Paso 1 Hacer
		Escribir "----Viaje " a "----";
	Escribir "Ingresa el número de alumnos";
	Leer n;
	Si n >= 100 Entonces
		c = n * 65;
	SiNo
		Si n >= 50 Entonces
			c = n * 70;
		SiNo 
			Si n >= 30 Entonces
				c = n * 95;
			SiNo
				c = 4000;
			FinSi
		FinSi
	FinSi
	Escribir "El total a pagar por alumno es de $" , c / n;
	Escribir "El total a pagar por la renta del autobus es de $" ,c;
	FinPara
FinAlgoritmo
