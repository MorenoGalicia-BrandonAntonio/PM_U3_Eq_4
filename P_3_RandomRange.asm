TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Bradon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

.code

	main3 PROC
	
		;L�gica del Programa
		
		mov eax, 10
		call randomrange ; da un numero entre 0 y eax
		call writedec
		
		exit	
	
	main3 ENDP
	
	END main3
