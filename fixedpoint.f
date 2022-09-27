      PROGRAM fixedpoint
C     Il codice calcola il punto fisso della funzione 1/sin(x) con un'approssimazione di 1e-6, numero massimo di interazioni itmax=50, numero di interazioni it
C     Modifica di prova
      implicit none
      integer it, itmax
      real xold, xnew, eps, err
      parameter (itmax=50, eps=1e-6)
      it=1
      write(6,*) 'Inserire il valore iniziale'
      read(5,*) xold
      xnew=1/sin(xold)
      err=abs(xnew-xold)
      do while (err.ge.eps.and.it.le.50)
         it=it+1
         xold=xnew
         xnew=1/sin(xold)
         err=abs(xnew-xold)
      end do
      write(6,*) 'Il punto fisso della funzione e'': ', xnew
      write(6,*) 'Con una precisione di: ', err
      write(6,*) 'E un numero di interazioni pari a: ', it
      END
      
