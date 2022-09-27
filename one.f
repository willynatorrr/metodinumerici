	PROGRAM one
	implicit none
	real x, ret
	write(6,*) 'Inserisci un numero'
	read(5,*) x
	if (x.gt.0.and.x.lt.1) then
		ret=1
	elseif (x.lt.-1.or.x.gt.1) then
		ret=-1
	else
		ret=0
	endif
	write(6,*) 'L'' output e'': ', ret
	END
