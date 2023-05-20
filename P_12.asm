TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
nombre1_P12 byte 50 dup('G')
nombre2_P12 byte 50 dup('A')

.code
	main12 PROC
		;Lógica del Programa
		
		mov edx, offset nombre1_P12 ; localidad de memoria donde sera guardada la cadena
		mov ecx, sizeof nombre1_P12	; maxima cantidad de caracteres que contendra la cadena
		call readstring
		call crlf

		mov edx, offset nombre2_P12 ; 
		mov ecx, sizeof nombre2_P12
		call readstring 
		call crlf

		mov edx, offset nombre1_P12
		call writestring
		call crlf
		call crlf

		mov edx, offset nombre2_P12
		call writestring
		call crlf
		
		exit	

	main12 ENDP

	END main12