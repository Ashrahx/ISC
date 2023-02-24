//Los empleados de una fabrica trabajan en dos turnos, Diurno y Nocturno. Se desea
//calcular el jornal diatrio de acuerdo a las siguientes reglas.
//*La tarfifa de las horas diurnas es de 10 euros
//*La tarifa de las horas nocturnas es de 13.5 euros
//*En caso de ser festivo, la tarfifa se incrementa en un 10 % en caso de un turno diurno y en un 15% para el nocturno
Algoritmo jornal
	Definir n, d Como Caracter;
	Escribir "Ingrese su nombre";
	Leer n;
	Escribir "Indica el día de la semana";
	Leer d;
	Repetir
		Segun d Hacer;
		16:
			Escribir "p = p";
		De Otro Modo
		Escribir "";
        FinSegun
	Hasta Que 
	Escribir "¿Cuál es tu turno?";
	Leer t;
	Escribir "¿Cuantas horas trabajaste hoy?";
	Leer t;
FinAlgoritmo

Funcion r = j(h,t,d)
	
FinFuncion
	