//Indice comienza en 0
//Si la dimension y el limite no son iguales dara error
Algoritmo Arreglos_un_solo_ciclo
	Definir arr, c Como Entero;
	Dimension arr[4];
	c = 0;
	Mientras c < 4 Hacer
		arr[c] = c * 5; //En este ejemplo c es el indice
		Escribir "Arreglo [",c,"] : " , arr[c];
		c = c + 1;
	Fin Mientras
FinAlgoritmo
