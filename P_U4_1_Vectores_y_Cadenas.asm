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
vector dword 10,20,30,40,50

.code
	mainP41 PROC
		;Lógica del Programa
		; esi / edi para intercambiar con indices

		mov esi, 0

		mov eax, vector[esi]

		call writedec

		
		exit	

	mainP41 ENDP

	END mainP41
