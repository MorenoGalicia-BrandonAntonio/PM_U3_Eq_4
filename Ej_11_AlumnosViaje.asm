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
	mainE11 PROC
		;L�gica del Programa
		println "Numero de Alumnos que iran al Viaje: "
		call readint 
		cmp eax, 20
		jl viaje1
		cmp eax, 50
		jl viaje2
		cmp eax, 101
		jl viaje3
		jmp viaje4

		viaje1:
		println "Cada Alumno debera de Pagar 70 pesos"
		jmp salir

		viaje2:
		println "Cada alumno debera de Pagar 40 pesos"
		jmp salir

		viaje3:
		println "Cada Alumno debera de Pagar 35 pesos"
		jmp salir

		viaje4:
		println "Cada Alumno debera de Pagar 20 pesos"

		salir:
		exit	
	mainE11 ENDP

	END mainE11
