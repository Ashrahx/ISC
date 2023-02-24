Algoritmo Trajes
	Definir d, p Como Real;
	Definir a Como Caracter;
	Definir c Como Entero;
	c = 0;
	Repetir
		d = 0;
		Escribir "Ingrese el precio del traje";
		Leer p;
		Si p > 2500 Entonces
			d = p * 0.15;
			p = p - d;
			Escribir "El precio del traje es de $" ,p, " y el descuento aplicado es de $" d;
		SiNo
			d = p * 0.08;
			p = p - d;
		FinSi
	Escribir "¿Quiéres continuar?";
		Leer a;
		Si a = "NO" o a = "no" Entonces
			c = 1;
		FinSi
	Hasta Que c = 1
FinAlgoritmo
