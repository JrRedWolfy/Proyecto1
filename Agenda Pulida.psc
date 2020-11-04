Algoritmo Agenda1x0
	
	Definir n, i, j Como Entero;
	Definir contacto, buscar Como Caracter;
	
	dimension contacto[2,100];
	n = 0;
	i = 1;
	
	Repetir
		
		Si n==0 Entonces
			Escribir "A continuacion debera introducir los nombres y telefonos de los empleados. Cuando haya terminado podra empezar ha realizar cambios";
			Repetir
				
				Escribir "Nombre: ";
				Leer contacto[0,n];
				Escribir "Telefono: ";
				Leer contacto[1,n];
				n = n + 1;
				Escribir "¿Continuar?(Escriba 0 si desea dejar de añadir empleados)";
				Leer i;
				
			Hasta Que i = 0
			
		Fin Si
		
		Escribir "----------------------------------¿QUE DESEA HACER?---------------------------------------";
		Escribir "-[1]Añadir -------[2]Editar ------[3]Mostrar Lista------[4]Borrar--------------[5]Buscar -";
		Escribir "";
		Escribir "Escriba el numero del apartado, (0 si desea cerrar el programa)";
		Leer j;
		
		Segun j Hacer
			1:
				
				Escribir "Nombre: ";
				Leer contacto[0,n];
				Escribir "Telefono: ";
				Leer contacto[1,n];
				n = n + 1;
				
			2:
				Escribir "¿Que contacto quiere editar(Escribe su nombre)?";
				Leer buscar;
				Para i=0 Hasta n-1 Con Paso 1 Hacer
					Si contacto[0,i]==buscar Entonces
						Escribir "El nombre deberia ser: ";
						Leer contacto[0,i];
						Escribir "Y su telefono: ";
						Leer contacto[1,i];
					Fin Si
					
					i = n;
					
				Fin Para
				
			3:
				Escribir "--------------------LISTA DE EMPLEADOS---------------------";
				
				Para i=0 Hasta n-1 Con Paso 1 Hacer
					Escribir "Nombre: " contacto[0,i] "             Telefono: " contacto[1,i];
				Fin Para
				
			4:
				Escribir "Introduzca el nombre de Asignacion del Empleado que desea remover de la lista";
				Leer buscar;
				
				Para i=0 Hasta n-1 Con Paso 1 Hacer
					Si contacto[0,i]==buscar Entonces
						contacto[0,i]= contacto[0, n-1];
						contacto[1,i]= contacto[1, n-1];
						contacto[0, n-1]= '';
						contacto[1, n-1]= '';
					Fin Si
					i = n;
				Fin Para
				
				n = n-1;
				
			5:
				Escribir "----¿Por que dato desea buscar al Empleado?----";
				Escribir "----[1]Nombre -----------------[2]Telefono ----";
				Leer i;
				Segun i Hacer
					1:
						Escribir "Escriba su nombre";
						Leer buscar;
						Para i=0 Hasta n-1 Con Paso 1 Hacer
							Si contacto[0,i]==buscar Entonces
								Escribir "El telefono de " contacto[0,i] " es el " contacto[1,i];
								
							Fin Si
							
						Fin Para
					2:
						Escribir "Escriba su telefono";
						Leer buscar;
						Para i=0 Hasta n-1 Con Paso 1 Hacer
							Si contacto[1,i]==buscar Entonces
								Escribir "El telefono " contacto[1,i] " corresponde al empleado llamado " contacto[0,i];
								
							Fin Si
							
						Fin Para
					De Otro Modo:
						Escribir "Dicha opcion no existe";
				Fin Segun
				
			0:
				Escribir "Guardando los cambios realizados...";
				Escribir "Cerrando Programa...";
				
			De Otro Modo:
				Escribir "Introdujiste un valor incorrecto";
		Fin Segun
		
	Hasta Que j == 0
	
FinAlgoritmo
