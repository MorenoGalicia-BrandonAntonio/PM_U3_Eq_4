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
titulo_P14 db " Este es el Titulo ",0
contenido_P14 db " Contenido del Mensaje ", 0dh, 0ah
			  db " Segunda Linea ",0

.code
	main14 PROC
		;Lógica del Programa
		
		mov edx, offset contenido_P14
		mov ebx, offset titulo_P14
		call msgbox
		
		exit	

	main14 ENDP

	END main14