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

.code

	main1 PROC
		
		;L�gica del Programa
		
		mov eax, 65
		call writechar
		call crlf

		
		exit	
	
	main1 ENDP
	
	END main1