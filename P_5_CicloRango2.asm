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

	main5 PROC
	
		;L�gica del Programa
		
		call randomize
		mov ecx, 10

		ciclo:
			mov eax, 10
			call randomrange
			call writedec
			call crlf
		loop ciclo
		
		exit	
	
	main5 ENDP
	
	END main5
