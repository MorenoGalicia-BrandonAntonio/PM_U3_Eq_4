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
titulo db " Este es el Titulo ",0
contenido db " Contenido del Mensaje ",0

.code
	main13 PROC
		;Lógica del Programa
		
		mov edx, offset contenido
		mov ebx, offset titulo
		call msgbox
		
		exit	

	main13 ENDP

	END main13
