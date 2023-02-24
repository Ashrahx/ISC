Algoritmo calificaciones
	Escribir (prom()+prom()+prom())/3;
FinAlgoritmo

Funcion promedio = prom()
	Definir promedio, i, cal Como Real;
	promedio = 0;
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Escribir "Ingresa la calificación " ,i+1;
		Leer cal;
		promedio = promedio + cal;
	Fin Para
	promedio = promedio/3;
FinFuncion
