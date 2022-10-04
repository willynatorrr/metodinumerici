C     ALGORITMO DI METROPOLIS-HASTINGS
C     Applicazione per la gaussiana
C     Parte 1 - Generazione campione stocastico gaussiano con mu=5, sigma=1
C     IANIA WILLIAM --- VALENTINO ALESSANDRA
C     Metodi Numerici per la Fisica - a.a. 2022/2023
      
C     Avvio il programma che scrive nel file 'dati.dat' il campione generato
      program es1
      implicit none
      integer, parameter :: nstart = 110000
      real, parameter :: mu=5.0, sigma2=1, delta=0.1, start=0.0
      integer i, acc
      real :: x, xtry, q, r
      real :: random_uniform, gaussian
      x=start
      open(10,file='dati.dat',status='unknown')
      do i=0,nstart
         xtry=random_uniform(x-delta,x+delta)
         q=gaussian(x,xtry,mu,sigma2) !rapporto fra le gaussiane
         call random_stduniform(r)
         if (r.lt.q) then
            acc=1
            x=xtry
         else
            acc=0
         end if
         write(10,*) x            
      end do
      end program

C     Parto da x_0=pi.
C     Dichiaro la function che genero un numero casuale nell'intervallo [a,b]
      function random_uniform(a,b) result(xtry)
      implicit none
      real, intent(in) :: a, b
      real :: u
      real :: xtry
      call random_stduniform(u) !genera un numero u casuale in (0,1]
      xtry = (b - a ) * u + a !genera un numero xtry casuale
      end function random_uniform

      
C     Dichiaro la function che genera il rapporto fra le probabilità gaussiane
      function gaussian(x,y,mu,sigma2) result(q)
      implicit none
      real, intent(in) :: x, y, mu, sigma2
      real :: q
      q=exp(-(y-mu)**2/(2*sigma2)+(x-mu)**2/(2*sigma2))
      end function gaussian

      subroutine random_stduniform(w)
      implicit none
      real,intent(out) :: w
      real :: r
      call random_number(r)
      w = 1 - r
      end subroutine random_stduniform
      



      

      
      
