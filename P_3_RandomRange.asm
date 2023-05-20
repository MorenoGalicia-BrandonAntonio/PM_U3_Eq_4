TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Bradon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

.code

	main3 PROC
	
		;Lógica del Programa
		
		mov eax, 10
		call randomrange ; da un numero entre 0 y eax
		call writedec
		
		exit	
	
	main3 ENDP
	
	END main3
