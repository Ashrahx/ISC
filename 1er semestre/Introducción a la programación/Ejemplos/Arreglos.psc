//Indice comienza en 0
//Si la dimension y el limite no son iguales dara error
Algoritmo Arreglos
	Definir arr, c Como Entero;
	Dimension arr[4];
	c = 0;
	Mientras c < 4 Hacer
		arr[c] = c * 5; //En este ejemplo c es el indice
		c = c + 1;
	Fin Mientras
	
	c = 0;
	Mientras c < 4 Hacer
		Escribir "Arreglo [",c,"] : " , arr[c];
		c = c + 1;
	Fin Mientras
FinAlgoritmo
