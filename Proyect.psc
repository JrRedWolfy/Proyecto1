Algoritmo Proyecto
	
	Definir nombre Como Caracter;
	Definir telef, i, ne, asig, total Como Entero;
	ne = 1;
	Dimension nombre[ne];
	Dimension telef[ne];
	
	
	
	
	Repetir
		
		Escribir "----------------------------------¿QUE DESEA HACER?---------------------------------------";
		Escribir "-[1]Añadir -------[2]Editar ------[3]Mostrar Lista------[4]Borrar--------------[5]Buscar -";
		Escribir "";
		Escribir "Escriba el numero del apartado, (0 si desea cerrar el programa)";
		Leer i;
		
		
		
		
		Segun i Hacer
			1:
				Escribir "Introduce el nombre del empleado";
				Leer nombre[ne-1];
				Escribir "Y su telefono es: ";
				Leer telef[ne-1];
				
				ne = ne + 1;
			2:
				Escribir "Escriba el numero de asignacion de el empleado que quieras editar.(Si no lo sabe, puede verlo en Mostrar Lista, escriba 0)";
				Leer asig;
				Si asig == 0 Entonces
					Escribir "Sus datos actuales son:";
					Escribir "Nombre: " nombre[asig-1];
					Escribir "Telefono: " telef[asig-1];
					Escribir "";
					Escribir "Nombre Editado: ";
					Leer nombre[asig-1];
					Escribir "Telefono Editado: ";
					Leer telef[asig-1];
					
				Fin Si
				
			3:
				Escribir "--------------------LISTA DE EMPLEADOS---------------------";
				Para total=0 Hasta ne Con Paso 1 Hacer
					Escribir "NºAsignado: " total+1 "           Nombre: " nombre[total] "            Telefono: " telef[total];
				Fin Para
				
			4:
				Escribir "";
			5:
				Escribir "";
			0:
				Escribir "Guardando los cambios realizados...";
				Escribir "Cerrando Programa...";
				
			De Otro Modo:
				Escribir "Introdujiste un valor incorrecto";
		Fin Segun
		
		
		
		
		
		
		
		
		
		
		
		
	Hasta Que i == 0
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
