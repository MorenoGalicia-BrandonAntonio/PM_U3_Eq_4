TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
titulo db " Este es el Titulo ",0
contenido db " Contenido del Mensaje ",0

.code
	main13 PROC
		;L�gica del Programa
		
		mov edx, offset contenido
		mov ebx, offset titulo
		call msgbox
		
		exit	

	main13 ENDP

	END main13
