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
	mainE444 PROC
		;Lógica del Programa
		
		println "Cual es tu Numero de Cita: "
		call readint

		cmp eax, 4
		jl cita1
		jg cita4
		jmp cita4
		
		cita1:
			println "El pago por su Cita es de: 200.00 Pesos"
			mov ebx, 200
			mul ebx
			println "El Costo del Tratamiento Total es de: "
			call writedec
			exit

		cita4:
		cmp eax, 6
		jl cita2 
		jg cita9 
		jmp cita2

		cita2:
		println "El pago por su Cita es de: 150.00 Pesos"
			sub eax, 3
			mov ebx, 150
			mul ebx
			add eax, 600
			println "El Costo del Tratamiento Total es de: "
			call writedec
			exit

		cita9:
		println "El Pago por su Cita es de: 50.00 Pesos"
		sub eax, 5
		mov ebx, 50
		mul ebx
		add eax, 900
		println "El Costo del Tratamiento Ttoal es de: "
		call writedec
		
		exit	

	mainE444 ENDP

	END mainE444
