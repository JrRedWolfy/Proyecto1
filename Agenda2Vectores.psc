Algoritmo Agenda
	
	Definir nombre, bnom Como Caracter;
	Definir telef, i , ne, asig, total, basi, btel Como Entero;
	ne = 0;
	Dimension nombre[100];
	Dimension telef[100];
	
	
	
	
	Repetir
		
		Escribir "----------------------------------¿QUE DESEA HACER?---------------------------------------";
		Escribir "-[1]Añadir -------[2]Editar ------[3]Mostrar Lista------[4]Borrar--------------[5]Buscar -";
		Escribir "";
		Escribir "Escriba el numero del apartado, (0 si desea cerrar el programa)";
		Leer i;
		
		Segun i Hacer
			1:
				Escribir "Introduce el nombre del empleado";
				Leer nombre[ne];
				Escribir "Y su telefono es: ";
				Leer telef[ne];
				
				ne = ne + 1;
			2:
				Escribir "Escriba el numero de asignacion de el empleado que quieras editar.(Si no lo sabe, puede verlo en Mostrar Lista, escriba 0)";
				Si asig <> 0 Entonces
					Leer asig;
					Escribir "Sus datos actuales son:";
					Escribir "Nombre: " nombre[asig-1];
					Escribir "Telefono: " telef[asig-1];
					Escribir "";
					Escribir "Nombre Tras Editar: ";
					Leer nombre[asig-1];
					Escribir "Telefono Tras Editar: ";
					Leer telef[asig-1];
				Fin Si
				
				
			3:
				Escribir "--------------------LISTA DE EMPLEADOS---------------------";
				Para total=0 Hasta ne-1 Con Paso 1 Hacer
					Escribir "NºAsignado: " total+1 "           Nombre: " nombre[total] "            Telefono: " telef[total];
					Escribir "";
				Fin Para
				
			4:
				Escribir "Introduzca el Numero de Asignacion del Empleado que desea remover de la lista";
				Leer i;
				
				ne = ne - 1;
				Escribir "El empleado: " nombre[i-1] " ha sido borrado de la lista.";
				nombre[i-1]=nombre[ne];
				telef[i-1]= telef[ne];
				
				nombre[ne]= '';
				telef[ne]= 0;
				
			5:
				Escribir "----¿Por que dato desea buscar al Empleado?----";
				Escribir "-[1]Nombre -----[2]Telefono-----[3]NºAsignado -";
				Leer i;
				
				Segun i Hacer
					1:
						Escribir "Introduzca el nombre del empleado:";
						Leer bnom;
						
						Para i = 0 Hasta ne-1 Con Paso 1 Hacer
							Si bnom == nombre[i] Entonces
								Escribir "El nombre del empleado que buscas es: " nombre[i] " y su telefono es el: " telef[i];
							Fin Si
						Fin Para
						
					2:
						Escribir "Introduzca el Telefono del empleado:";
						Leer btel;
						
						Para i = 0 Hasta ne-1 Con Paso 1 Hacer
							Si btel == telef[i] Entonces
								Escribir "El nombre del empleado que buscas es: " nombre[i] " y su telefono es el: " telef[i];
							Fin Si
						Fin Para
						
					3:
						Escribir "Introduzca el NºAsignado del empleado:";
						Leer basi;
						Si basi > ne Entonces
							Escribir "No existe ningun empleado con dicha asignacion";
						SiNo
							Escribir "El nombre del empleado que buscas es: " nombre[basi-1] " y su telefono es el: " telef[basi-1];
						Fin Si
						
					De Otro Modo:
						Escribir "Opcion inexistente";
				Fin Segun
				
			0:
				Escribir "Guardando los cambios realizados...";
				Escribir "Cerrando Programa...";
				
			De Otro Modo:
				Escribir "Introdujiste un valor incorrecto";
		Fin Segun
		
	Hasta Que i == 0
	
FinAlgoritmo
