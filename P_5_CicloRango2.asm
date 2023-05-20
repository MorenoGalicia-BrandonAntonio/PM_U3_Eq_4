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

	main5 PROC
	
		;Lógica del Programa
		
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
