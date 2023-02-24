Algoritmo sinusarSINOMIENTRAS
	Definir p, a Como Entero;
	Definir c Como Real;
	Escribir "Bienvenido a LA LANGOSTA AHUMADA";
	a = 1;
	Mientras a <= 3 Hacer
		p = 0;
		c = 0;
		Escribir "----cliente " a "----";
		Escribir "Ingrese la cantidad de personas que se presentarán en el evento";
		Leer p;
		Si p > 300 Entonces
			c = p * 75.00;
			FinSi
			Si p > 200 Entonces
				c = p * 85.00;
				FinSi
		    Si p <= 200 Entonces
				c = p * 95.00;
			FinSi
		Escribir "El costo del banquete del cliente " a, " es de $" ,c;
		a = a + 1;
	Fin Mientras
FinAlgoritmo
 