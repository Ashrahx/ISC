Algoritmo ciclo_anidado_ejemplo
	Definir n_alumno, n_grupo, n_escuela Como Entero;
	Definir cal, p_alumno, p_grupo, p_grupos Como Real;
	
	p_grupos = 0;
	Para n_escuela = 1 Hasta 3 Con Paso 1 Hacer
		secuencia_de_acciones
	//Promedio del grupo
	p_grupo = 0;
	Para n_grupo = 1 Hasta 3 Con Paso 1 Hacer
		
	//Promedio alumno
	p_alumno = 0;
	Para n_alumno = 1 Hasta 4 Con Paso 1 Hacer //n_alumno no se debe usar en la operación porque termina como 5 y afecta en la operación
		Escribir "Ingresa la calificación : " ,n_alumno;
		Leer cal;
		p_alumno = p_alumno + cal;
	Fin Para
	Escribir n_alumno;
	p_alumno = p_alumno / 4;
	Escribir "El promedio del alumno es " ,p_alumno;
	//Finaliza promedio de alumnos
	
	p_grupo = p_grupo + p_alumno;
FinPara
	p_grupo = p_grupo /3;
    Escribir "El promedio del grupo es " ,p_grupo;
	//Finaliza promedio grupo

	p_grupos = p_grupos + p_grupo;
FinPara
    p_grupos = p_grupos /3;
	Escribir "El promedio del grupo es " ,p_grupo;
//Finaliza promedio grupos
FinAlgoritmo
