TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; �rea de Declaraci�n de Variables

.code
	mainE13 PROC
		;L�gica del Programa
		
		mov ecx, 12
		mov ebx, 0

		ciclo:
			mov eax, 10000
			call randomrange
			add ebx, eax
			println "Lo Ahorrado este Mes es de: "
			call writedec
			call crlf
		loop ciclo

		println "Lo Ahorrado Durante los 12 Meses es de: "
		mov eax, ebx
		call writedec
		
		exit	

	mainE13 ENDP

	END mainE13
