Algoritmo Segundotrabajo
	Definir edad Como Entero;
	Escribir "Ingresa tu edad";
	Leer edad;
	Segun edad Hacer
		18, 19, 20, 21, 22, 23, 24, 25:
			Escribir "Tu edad está dentro del rango específicado";
		De Otro Modo:
			Si edad > 25 Entonces
				Escribir "Tu edad está por encima del rango";
			SiNo
				Si edad < 18 Entonces
					Escribir "Tu edad está por debajo del rango mínimo";
				FinSi
			Fin Si
	Fin Segun
FinAlgoritmo
