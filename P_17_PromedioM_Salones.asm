TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; Área de Declaración de Variables
subEdadesSalones_17 dword 0
subTotalAlumnosSalones_17 dword 0

.code
	main17 PROC
		;Lógica del Programa
		
		mov ebx, 0

		println "Cuantos Salones Tiene la Escuela:"
		call readint ;total de salones de la escuela
		mov ecx, eax

		ciclo1:
			println "cuantos Alumnos Tiene el Salon:"

			call readint ;cuantos alumnos tiene el salon

			push ecx ; guarda en la pila la cantidad de salones
			mov ecx, eax ; cuantos alumnos tiene el salon.. para el ciclo

			mov edx, ecx

			ciclo2:
				println "Cual es la Edad del Alumnos:"
				call readint
				add ebx, eax
				loop ciclo2

				;suma de las edades del salo
				;se necesita que eax, tenga la suma .. ahprota esta en ebx
				;se necesita que edx, este en 0
				;en un regristro o variable tener la cantidad de los alumnnos en el salon

				mov eax, ebx ;se coloca en ebx, la suma de las edades aculadas
				mov ebx, edx ;en ebx se coloca el total de alumnos que tiene el salon
				mov edx, 0 ; en edx se coloca el cero para poder dividir

				;para el acumulado de los datos de la escuela (Todos los Salones)
				add subEdadesSalones_17, eax
				add subTotalAlumnosSalones_17, ebx

				div ebx ;eax / ebx -> sumaAcumulada/totalAlumnosSalon

			println "El Promedio de Edades del Salon es:"

			call writedec
			call crlf

			mov ebx, 0 ;reinicia el contador de la suma de las edades

			pop ecx

			loop ciclo1

			mov edx, 0
			mov ebx, subTotalAlumnosSalones_17
			mov eax, subEdadesSalones_17
			
			div ebx

		println "El Promedio de edad de la escuela es:"

		call writedec
		call crlf 

		exit	

	main17 ENDP

	END main17
