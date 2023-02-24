//Tienda quiere saber el total de las n ventas por día y semana
Algoritmo Ventas
	Definir i, c, m, ms, j, v Como Entero;
	Definir vl, vm, vms, vj, vv, t, d Como Real;
	
	Escribir "Ingresa las ventas del día lunes";
	Leer i;
	Dimension vl[i]; //Aqui defines la cantidad de slots que va a tener el vector
	t = 0;
	Para c = 0 Hasta i - 1 Con Paso 1 Hacer //Aqui se pone -1 porque empieza desde cero
		Escribir "Ingresa el total de la venta " ,c + 1;
		Leer vl[c];
		t = t + vl[c];
	Fin Para
	Escribir "El total de la venta del lunes es de " ,t;
	d = t;
	
	Escribir "Ingresa las ventas del día martes";
	Leer m;
	Dimension vm[m];
	t = 0;
	Para c = 0 Hasta m - 1 Con Paso 1 Hacer
		Escribir "Ingresa el total de la venta " ,c + 1;
		Leer vm[c];
		t = t + vm[c];
	Fin Para
	Escribir "El total de la venta del martes es de " ,t;
	d = d + t;
	
	Escribir "Ingresa las ventas del día miércoles";
	Leer ms;
	Dimension vms[ms];
	t = 0;
	Para c = 0 Hasta ms - 1 Con Paso 1 Hacer
		Escribir "Ingresa el total de la venta " ,c + 1;
		Leer vms[c];
		t = t + vms[c];
	Fin Para
	Escribir "El total de la venta del miércoles es de " ,t;
	d = d+ t;
	
	Escribir "Ingresa las ventas del día jueves";
	Leer j;
	Dimension vj[j];
	t = 0;
	Para c = 0 Hasta j - 1 Con Paso 1 Hacer
		Escribir "Ingresa el total de la venta " ,c + 1;
		Leer vj[c];
		t = t + vj[c];
	Fin Para
	Escribir "El total de la venta del jueves es de " ,t;
	d = d+ t;
	
	Escribir "Ingresa las ventas del día viernes";
	Leer v;
	Dimension vv[v];
	t = 0;
	Para c = 0 Hasta v - 1 Con Paso 1 Hacer
		Escribir "Ingresa el total de la venta " ,c + 1;
		Leer vv[c];
		t = t + vv[c];
	Fin Para
	Escribir "El total de la venta del viernes es de " ,t;
	d = d+ t;
	
	Escribir "El total de ventas de la semana es de " ,d;
FinAlgoritmo
