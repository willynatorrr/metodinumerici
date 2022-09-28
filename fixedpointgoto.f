      PROGRAM fixedpoint
C     Il codice calcola il punto fisso della funzione 1/sin(x) con un'approssimazione di 1e-6
C     numero massimo di interazioni itmax=50, numero di interazioni it
      implicit none
      integer it, itmax
      real xold, xnew, eps, err
      parameter (itmax=50, eps=1e-6)
      it=1
      write(6,*) 'Inserire il valore iniziale'
      read(5,*) xold
      xnew=1/sin(xold)
      err=abs(xnew-xold)
 10   if (err.ge.eps.and.it.le.50) then
         it=it+1
         xold=xnew
         xnew=1/sin(xold)
         err=abs(xnew-xold)
         goto 10
      end if
      write(6,*) 'Il punto fisso della funzione e'': ', xnew
      write(6,*) 'Con una precisione di: ', err
      write(6,*) 'E un numero di interazioni pari a: ', it
      END
      
