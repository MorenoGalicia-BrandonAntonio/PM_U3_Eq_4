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
	mainE10 PROC
		;Lógica del Programa
		println "Cuantos Años lleva el Trabajador: "
		call readint 

		println "El Bono a por Antiguedad es de: "
		mov ebx, 100
		mul ebx
		call writedec



		
		exit	

	mainE10 ENDP

	END mainE10