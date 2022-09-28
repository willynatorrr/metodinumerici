      PROGRAM sommanumeripari
C     Il codice calcola la somma dei primi 50 numeri pari
      implicit none
      integer i, n
      n=0
      do i=2,50,2 !i va da 2 a 50 con un passo di 2
         n=n+i
      end do
      write(6,*) 'La somma dei primi 50 numeri pari e'': ', n
      END
