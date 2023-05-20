TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreo Galicia Brandon Antoniol

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

.code

	main2 PROC
	
		;Lógica del Programa
		
		call readchar; eax
		call writechar
		
		exit	
	
	main2 ENDP
	
	END main2
