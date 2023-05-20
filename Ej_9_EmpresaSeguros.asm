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
var1_E9 dword 10
var2_E9 dword 10

.code
	mainE9 PROC
		;Lógica del Programa
		
		println "Que Plan desea, el Plan A(1200 Dolares) o el PlanB(950 Dolares)"
		println "Marque 1 Para el Plan A"
		println "Marque 2 para el Plan B"
		call readint 
		cmp eax, 2
		jl plan1

		println "Bebe alcohol"
		println "Marque 1 si es si o 2 si es no  "
		call readint
		cmp eax, 2
		jl si1
		mov var1_E9, 950
		jmp si2

		plan1:
		mov var1_E9, 1200
		println "Bebe alcohol"
		println "Marque 1 si es si o 2 si es no "
		call readint
		cmp eax, 2
		jl si1
		jmp si2

		si1:
		mov eax, var1_E9
		mov ebx, 20
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		add var2_E9, eax

		si2:
		println "Usa Lentes"
		println "Marque 1 si es si o 2 si es no"
		call readint
		cmp eax, 1
		jg si3
		mov eax, var1_E9
		mov ebx, 10
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		add var2_E9, eax

		si3:
		println "Padece Alguna Enfermedad como Problemas al Corazon o Diabetes"
		println "Marque 1 si es si o 2 si es no"
		call readint
		cmp eax, 1
		jg si31
		mov eax, var1_E9
		mov ebx, 30
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		add var2_E9, eax
		jmp salir

		si31:
		mov eax, var1_E9
		mov ebx, 10
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		add var2_E9, eax

		salir:
		println "El Costo Total por el Seguro es de: "
		mov eax, var2_E9
		call writedec

		exit	

	mainE9 ENDP

	END mainE9