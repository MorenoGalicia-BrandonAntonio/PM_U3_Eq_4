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
var1_E19 dword 0

.code
	mainE19 PROC
		;Lógica del Programa
		

		println "Dar la Cantidad de Focos en la Caja: "
		call readint 
		mov var1_E19, eax
		mov ebx, eax
		call randomrange
		println "Focos Verdes:"
		call writedec
		call crlf
		sub ebx, eax
		
		cmp ebx, var1_E19
		jg salir
		mov eax, ebx
		call randomrange
		println "Focos Blancos:"
		call writedec
		call crlf
		sub ebx, eax

		cmp ebx, var1_E19
		jg salir
		mov eax, ebx
		call randomrange
		println "Focos Rojos:"
		call writedec
		call crlf
		

		salir:
	mainE19 ENDP

	END mainE19
