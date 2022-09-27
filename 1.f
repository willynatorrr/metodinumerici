	PROGRAM prodotto
C	dati due numeri reali a e b, calcola il prodotto c
	implicit none
	real*16 a,b,c
	
	WRITE(6,*) 'Hey, inserisci un numero:'
	read(5,*) a
	write(6,*) 'Ora inseriscine un altro:'
	read(5,*) b
	
	c=a*b
	write(6,*) 'Il prodotto di ', a, ' e ', b, 'vale: ', c
	END
