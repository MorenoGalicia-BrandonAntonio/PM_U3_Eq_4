TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; �rea de Declaraci�n de Variables


.code
	mainE10 PROC
		;L�gica del Programa
		println "Cuantos A�os lleva el Trabajador: "
		call readint 

		println "El Bono a por Antiguedad es de: "
		mov ebx, 100
		mul ebx
		call writedec



		
		exit	

	mainE10 ENDP

	END mainE10