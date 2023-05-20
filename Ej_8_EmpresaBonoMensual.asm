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


.code
	mainE8 PROC
		;Lógica del Programa
		
		println "Bono Mensual"
		println "Pulse 1 si es por Antiguedad "
		println "Pulse 2 si es por Salario "
		call readint

		cmp eax, 2
		jl edad
		jmp salario
		
		edad:
		println "Introdusca la Cantidad de Años Trabajados: "
		call readint 
		cmp eax, 2
		jl edad1
		cmp eax, 4
		jg edad2
		println "Introdusca el Salario del Trabajador: "
		call readint
		mov ebx, 20
		mul ebx 
		mov edx, 0
		mov ebx, 100
		div ebx
		println "El Bono sera de: "
		call writedec
		jmp salir

		edad1:
		println "No Cunple con la Edad, no tendra Bono"
		jmp salir
		 
		edad2:
		println "Introdusca el Salario del Esclavo: "
		call readint
		mov ebx, 40
		mul ebx 
		mov edx, 0
		mov ebx, 100
		div ebx
		println "El Bono sera de: "
		call writedec
		jmp salir


		salario:
		println "Introdusca la Cantidad de Salario Ganado: "
		call readint	
		cmp eax, 1000
		jl salario1
		cmp eax, 3500
		jl salario2
		mov ebx, 10
		mul ebx
		println "El Bono es de: "
		call writedec
		jmp salir

		salario1:
		mov ebx, 20
		mul ebx
		println "El Bono es de: "
		call writedec
		jmp salir

		salario2:
		mov ebx, 10
		mul ebx
		println "El Bono es de: "
		call writedec
		jmp salir

		salir:
		exit	

	mainE8 ENDP

	END mainE8