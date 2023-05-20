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
vector_2 byte 10,20,30,40,50

.code
	mainP42 PROC
		;Lógica del Programa
		; esi / edi regristos para intercambiar con indices

		mov esi, 0
		mov eax, 0
		mov al, vector_2[esi]
									;investigar porque da
		call writedec

		
		exit	

	mainP42 ENDP

	END mainP42
