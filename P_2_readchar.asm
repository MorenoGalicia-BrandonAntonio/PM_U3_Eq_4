TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreo Galicia Brandon Antoniol

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

.code

	main2 PROC
	
		;L�gica del Programa
		
		call readchar; eax
		call writechar
		
		exit	
	
	main2 ENDP
	
	END main2
