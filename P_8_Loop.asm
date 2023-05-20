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

	main8 PROC
	
		;Lógica del Programa
		
		;loop siempre trabaja con ecx
		;es un ciclo que va de ecx asta 0

		mov ecx, 10

		ciclo:
		mov eax, 40
		call writedec
		call crlf
		loop ciclo
		
		exit	
	
	main8 ENDP
	
	END main8
