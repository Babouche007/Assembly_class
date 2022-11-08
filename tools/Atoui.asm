			org	$4
	
Vector_001 	dc.l 	Main

			org 	$500

Main 		movea.l #STRING,a0 ; Initialise A0 avec l'adresse de la chaîne.

Aouti	 	clr.b	d0
			
\loop		move.b	(a0)+,d1
			beq		\quit
			
			subi.b	#'0',d1
			mulu.w	#$10,d0
			add.l	d1,d0
			
			bra		\loop
						
\quit			
			illegal

			org $550

STRING 		dc.b "956874",0
