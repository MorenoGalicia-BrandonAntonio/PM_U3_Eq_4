TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; Área de Declaración de Variables
vector_3 byte 10,20,30,40,50

.code
	mainP43 PROC
		;Lógica del Programa
		
		mov ecx, sizeof vector_3
		mov esi, 0

		ciclo:
		mov eax, 0
		mov al, vector_3[esi]
		call writedec
		call crlf
		inc esi
		loop ciclo

		call writedec
		

		exit	

	mainP43 ENDP

	END mainP43
