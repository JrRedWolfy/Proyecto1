Algoritmo Agenda0punto5
	Definir nombre, telef, dato, basi Como Caracter;
	Definir i , ne, asig, j, btel Como Entero;
	ne = 0;
	Dimension dato[100];
	
	
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
				dato[ne]= nombre + ';' + telef;
				
				ne = ne + 1;
			2:
				Escribir "Escriba el numero de asignacion de el empleado que quieras editar.(Si no lo sabe, puede verlo en Mostrar Lista, escriba 0 para volver al menu)";
				Leer asig;
				Si asig <> 0 Entonces
					Para i=0 Hasta Longitud(dato[asig-1]) Con Paso 1 Hacer
						
						Si Subcadena(dato[asig-1],i,i) == ';' Entonces
							nombre = Subcadena(dato[asig-1],0,i-1);
							telef = Subcadena(dato[asig-1],i+1,longitud(dato[asig-1]));
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
					
					dato[asig-1]= nombre + ';' + telef;
				Fin Si
				i = 1;
			3:
				Escribir "--------------------LISTA DE EMPLEADOS---------------------";
				Para i=0 Hasta ne-1 Con Paso 1 Hacer
					
					
					Para j=0 Hasta Longitud(dato[i]) Con Paso 1 Hacer
						
						Si Subcadena(dato[i],j,j) == ';' Entonces
							nombre = Subcadena(dato[i],0,j-1);
							telef = Subcadena(dato[i],j+1,longitud(dato[i]));
						Fin Si
						
					Fin Para
					
					Escribir "NºAsignado: " i+1 "           Nombre: " nombre "            Telefono: " telef;
					Escribir "";
				Fin Para
				i = 1;
				
			4:
				Escribir "Introduzca el Numero de Asignacion del Empleado que desea remover de la lista";
				Leer i;
				ne = ne - 1;
				dato[i-1] = dato[ne];
				dato[ne]= '';
				Escribir "El empleado ha sido borrado de la lista.";
				
			5:
				Escribir "----¿Por que dato desea buscar al Empleado?----";
				Escribir "-[1]Nombre -----[2]Telefono-----[3]NºAsignado -";
				Leer i;
				
				Segun i Hacer
					1:
						Escribir "Introduzca el nombre del empleado:";
						Leer basi;
						
						Para i=0 Hasta ne-1 Con Paso 1 Hacer
							
							nombre = "";
							telef="";
							Para j=0 Hasta Longitud(dato[i]) Con Paso 1 Hacer
								
								Si Subcadena(dato[i],j,j) == ';' Entonces
									nombre = Subcadena(dato[i],0,j-1);
									telef = Subcadena(dato[i],j+1,longitud(dato[i]));
								Fin Si
								Si basi == nombre Entonces
									Escribir "El nombre del empleado que buscas es: " nombre " y su telefono es el: " telef;
									j=Longitud(dato[i]);
									
								Fin Si
							Fin Para
						Fin Para
						
						i=1;
					2:
						Escribir "Introduzca el Telefono del empleado:";
						Leer btel;
						
						Para i=0 Hasta ne-1 Con Paso 1 Hacer
							nombre = "";
							telef="";
							Para j=0 Hasta Longitud(dato[i]) Con Paso 1 Hacer
								
								Si Subcadena(dato[i],j,j) == ';' Entonces
									nombre = Subcadena(dato[i],0,j-1);
									telef = Subcadena(dato[i],j+1,longitud(dato[i]));
								Fin Si
								Si ConvertirATexto(btel) == telef Entonces
									Escribir "El nombre del empleado que buscas es: " nombre " y su telefono es el: " telef;
									i=ne;
									
								Fin Si
								
							Fin Para
						Fin Para
						i=1;
						
					3:
						Escribir "Introduzca el NºAsignado del empleado:";
						Leer i;
						Si i > ne Entonces
							Escribir "No existe ningun empleado con dicha asignacion";
						SiNo
							
							Para j=0 Hasta Longitud(dato[i-1]) Con Paso 1 Hacer
								
								Si Subcadena(dato[i-1],j,j) == ';' Entonces
									nombre = Subcadena(dato[i-1],0,j-1);
									telef = Subcadena(dato[i-1],j+1,longitud(dato[i-1]));
								Fin Si
								
								
							Fin Para
							
							Escribir "El nombre del empleado que buscas es: " nombre " y su telefono es el: " telef;
						Fin Si
						i=1;
						
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
