Algoritmo ExamenREPETIR
		Definir p, a Como Entero;
		Definir c Como Real;
		Escribir "Bienvenido a LA LANGOSTA AHUMADA";
		a = 1;
		Repetir
			c = 0;
			p = 0;
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
			a = a + 1;
		Hasta Que a > 3
FinAlgoritmo
