Algoritmo VectorIIDimensiones
	Definir v, i, c Como Entero;
	Dimension v[3,3];
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para c = 0 Hasta 2 Con Paso 1 Hacer
			v[i,c] = i + c;
		Fin Para
	Fin Para
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para c = 0 Hasta 2 Con Paso 1 Hacer
			Escribir " " v[i,c] " " Sin Saltar;
			
		Fin Para
		Escribir "";
	Fin Para
	
FinAlgoritmo
