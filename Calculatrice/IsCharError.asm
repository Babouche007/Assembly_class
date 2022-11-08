			org 	$4
			
Vector_001	dc.l	Main
			org		$500
			
Main		movea.l	#STRING,a0

IsCharError	movem.l	a0/d0,-(a7)

\loop		move.b	(a0)+,d0
			beq		\quit
			
			cmpi.b	#'0',d0
			blo		\false
			
			cmpi.b	#'9',d0
			bhi		\false
			
			jmp		\loop
		
\false		ori.b	#%00000100,ccr
			jmp		\quit
			
\true		andi.b #%11111011,ccr
			jmp		\quit
		
\quit		movem.l	(a7)+,a0/d0
			illegal

			org		$550
			
STRING		dc.b	"1 * 2 *23- 30",0
