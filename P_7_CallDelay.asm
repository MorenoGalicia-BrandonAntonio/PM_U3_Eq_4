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

	main7 PROC
	
		;L�gica del Programa
		
		mov eax, 10
		push eax
		mov eax, 2000
		call delay
		pop eax
		call writedec
		
		exit	
	
	main7 ENDP
	
	END main7
