Algoritmo ExamenPARA
	Definir p, a Como Entero;
	Definir c Como Real;
	Escribir "Bienvenido a LA LANGOSTA AHUMADA";
	Para a = 1 Hasta 3 Con Paso 1 Hacer
		p = 0;
		c = 0;
		Escribir "----cliente " a "----";
		Escribir "Ingrese la cantidad de personas que se presentarán en el evento";
		Leer p;
		Si p > 300 Entonces
			c = p * 75.00;
	    SiNo
			Si p > 200 Entonces
				c = p * 85.00;
		    SiNo
				c = p * 95.00;
			FinSi
		FinSi
		Escribir "El costo del banquete del cliente " a, " es de " ,c;
		Escribir "";
	Fin Para
FinAlgoritmo
