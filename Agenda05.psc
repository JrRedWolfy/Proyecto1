Algoritmo Agenda05
	Definir datos, nombre, bnom, telef Como Caracter;
	Definir i , ne, asig, total, basi, btel, tam Como Entero;
	ne = 0;
	tam = 20;
	Dimension datos[tam];
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		datos[i]= '';
	Fin Para
	
	
	Repetir
		
		Escribir "----------------------------------¿QUE DESEA HACER?---------------------------------------";
		Escribir "-[1]Añadir -------[2]Editar ------[3]Mostrar Lista------[4]Borrar--------------[5]Buscar -";
		Escribir "";
		Escribir "Escriba el numero del apartado, (0 si desea cerrar el programa)";
		Leer i;
		
		Segun i Hacer
			1:
				Escribir "Introduce el nombre del empleado";
				Leer nombre;
				Escribir "Y su telefono es: ";
				Leer telef;
				
				datos[ne]= nombre + ';' + telef;
				
				ne = ne + 1;
			2:
				Escribir "Escriba el numero de asignacion de el empleado que quieras editar.(Si no lo sabe, puede verlo en Mostrar Lista, escriba 0)";
				Leer asig;
				
				Para i=0 Hasta Longitud(datos[asig-1]) Con Paso 1 Hacer
					
					Si Subcadena(datos[asig-1],i,i) == ';' Entonces
						nombre = Subcadena(datos[asig-1],0,i-1);
						telef = Subcadena(datos[asig-1],i+1,longitud(datos[asig-1]));
					Fin Si
					
					
				Fin Para
				
				
				
				Escribir "Sus datos actuales son:";
				Escribir "Nombre: " nombre;
				Escribir "Telefono: " telef;
				Escribir "";
				Escribir "Nombre Tras Editar: ";
				Leer nombre;
				Escribir "Telefono Tras Editar: ";
				Leer telef;
				
				datos[asig-1]= nombre + ';' + telef;
				
				
			3:
				Escribir "--------------------LISTA DE EMPLEADOS---------------------";
				
				Para total=0 Hasta ne-1 Con Paso 1 Hacer
					
					Para i=0 Hasta Longitud(datos[total]) Con Paso 1 Hacer
						
						Si Subcadena(datos[total],i,i) == ';' Entonces
							nombre = Subcadena(datos[total],0,i-1);
							telef = Subcadena(datos[total],i+1,longitud(datos[total]));
						Fin Si
						
						
					Fin Para
					
					
					Escribir "NºAsignado: " total+1 "           Nombre: " nombre "            Telefono: " telef;
					Escribir "";
				Fin Para
				
			4:
				Escribir "Introduzca el Numero de Asignacion del Empleado que desea remover de la lista";
				Leer i;
				
				ne = ne - 1;
				Escribir "El empleado: " datos[i-1] " ha sido borrado de la lista.";
				datos[i-1]=datos[ne];
				
				datos[ne]= '';
				nombre " y su telefono es el: " telef;
						
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
						Si basi < ne Entonces
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
