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
var1_6 dword 100
CostodeP dword 0
MateriaP dword 0
PrecioV dword 0

.code
	mainE6 PROC
		;Lógica del Programa
		
		println "Introdusca Costos de Materia Prima"
		call readint 
		mov MateriaP, eax  
		call crlf
		
		invalido2:
		println "Que Precio de Venta Decea Consultar :"
		call readint
		call crlf


		cmp eax, 2
		jl clave1y5
		jg comp1
		jmp clave2y6
		comp1:
		cmp eax, 4
		jl clave3y4
		jg comp2
		jmp clave3y4
		comp2:
		cmp eax, 6
		jl clave1y5
		jg invalido
		jmp clave2y6

		invalido:
		println "La Clave es Invalida Intente de Nuevo"
		jmp invalido2


		clave1y5:
		cmp eax, 2
		jl clave1
		jmp clave5

		clave1:
		println "El Precio de Venta de la Calve 1 es: "
		;Mano de Obra
		mov ebx, 40
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		push eax

		;Gastos de Fabricacion
		mov ebx, 40
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		;Costo de Produccion
		add eax, MateriaP

		;precio de venta
		push eax
		mov ebx, 10 
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		call writedec
		jmp salir


		clave5:
		println "El Precio de Venta de la Calve 5 es: "
		;Mano de Obra
		mov ebx, 40
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		push eax

		;Gastos de Fabricacion
		mov ebx, 10
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		;Costo de Produccion
		add eax, MateriaP

		;precio de venta
		push eax
		mov ebx, 10 
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		call writedec
		jmp salir
		

		clave3y4:	
		cmp eax, 4
		jl clave3
		jmp clave4

		clave3:
		println "El Precio de Venta de la Calve 3 es: "
		;Mano de Obra
		mov ebx, 20
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		push eax

		;Gastos de Fabricacion
		mov ebx, 20
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		;Costo de Produccion
		add eax, MateriaP

		;precio de venta
		push eax
		mov ebx, 10 
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx
		jmp salir


		clave4:
		println "El Precio de Venta de la Calve 4 es: "
		;Mano de Obra
		mov ebx, 20
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		push eax

		;Gastos de Fabricacion
		mov ebx, 40
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		;Costo de Produccion
		add eax, MateriaP

		;precio de venta
		push eax
		mov ebx, 10 
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx
		jmp salir



		clave2y6:
		cmp eax, 4
		jl clave2
		jmp clave6
		
		clave2:
		println "El Precio de Venta de la Calve 2 es: "
		;Mano de Obra
		mov ebx, 60
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		push eax

		;Gastos de Fabricacion
		mov ebx, 10
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		;Costo de Produccion
		add eax, MateriaP

		;precio de venta
		push eax
		mov ebx, 10 
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx
		jmp salir

		clave6:
		println "El Precio de Venta de la Calve 6 es: "
		;Mano de Obra
		mov ebx, 60
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		push eax

		;Gastos de Fabricacion
		mov ebx, 20
		mov eax, MateriaP
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		;Costo de Produccion
		add eax, MateriaP

		;precio de venta
		push eax
		mov ebx, 10 
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		pop ebx
		add eax, ebx

		salir:
		exit	

	mainE6 ENDP

	END mainE6
