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
	mainE15 PROC
		;L�gica del Programa
		
		println "Salario por Horas:"
		call readint
		mov ebx, eax
		push ebx
		mov ecx, 7

		ciclo:
			mov eax, 10
			call randomrange
			add ebx, eax
		loop ciclo

		println "El Empleado Trabajo Durante la Semana: "
		mov eax, ebx
		call writedec
		call crlf
		println "El Salario del Trabajador por la Semana Trabajada es de:"
		pop ebx
		mul ebx
		call writedec
		
		exit	

	mainE15 ENDP

	END mainE15
