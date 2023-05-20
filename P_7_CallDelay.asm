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

	main7 PROC
	
		;Lógica del Programa
		
		mov eax, 10
		push eax
		mov eax, 2000
		call delay
		pop eax
		call writedec
		
		exit	
	
	main7 ENDP
	
	END main7
