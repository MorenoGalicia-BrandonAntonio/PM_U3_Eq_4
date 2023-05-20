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
titulo_P15 db " Este es el Titulo ",0
contenido_P15 db " Contenido del Mensaje ", 0dh, 0ah
			  db " Segunda Linea ",0

.code
	main15 PROC
		;Lógica del Programa
		
		mov edx, offset contenido_P15
		mov ebx, offset titulo_P15
		call msgboxask
		println "El boton seleccionado es: "
		call writeint ;Respuesta
		
		exit	

	main15 ENDP

	END main15