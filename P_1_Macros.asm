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

.code

	main1 PROC
		
		;Lógica del Programa
		
		mov eax, 65
		call writechar
		call crlf

		
		exit	
	
	main1 ENDP
	
	END main1