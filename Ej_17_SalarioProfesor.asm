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
var1_E17 dword 1500

.code
	mainE17 PROC
		;L�gica del Programa
		
		mov ecx, 6

		ciclo:
			mov eax, var1_E17
			mov ebx, 10
			mul ebx
			mov edx, 0
			mov ebx, 100
			div ebx
			println "Durante el Mes Recibio un incremento de: "
			call writedec
			call crlf
			add var1_E17, eax
		loop ciclo

		println "El Saliro Despues de 6 a�os es de: "
		mov eax, var1_E17
		call writedec

		exit	

	mainE17 ENDP

	END mainE17
