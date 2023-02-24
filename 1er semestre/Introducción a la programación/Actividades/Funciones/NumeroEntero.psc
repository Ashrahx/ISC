//Algoritmo que cada un número entero (este número no podrá ser menor o igual que 0),
//determina el número de cifras que tiene. Por ejemplo, si introduzco un  253, me devuelve un 3
Algoritmo NumeroEntero
	Definir n, d Como Entero;
	Escribir "Ingresa un número entero";
	Leer n;
	Si n <= 0 Entonces
		Escribir "Ingresa un número mayor a 0";
	SiNo
		d = c(n);
		Escribir "El número " ,n, " tiene " ,d, " digitos";
	Fin Si
FinAlgoritmo

Funcion r = c(n)
	Definir r, a Como Real;
	a = n;
	r = 0;
	Mientras a <> 0 Hacer
		r = r + 1;
		a = trunc(a/10); //Se eliminan las cifras que estan a la derecha de la unidad  a la que se aplica el truncamiento
		                 //La función TRUNC trunca los números hasta el valor entero o decimal anterior
	Fin Mientras
FinFuncion
	