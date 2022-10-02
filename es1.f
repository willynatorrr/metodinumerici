C     ALGORITMO DI METROPOLIS-HASTINGS
C     Applicazione per la gaussiana
C     Parte 1 - Generazione campione stocastico gaussiano con mu=5, sigma=1
C     IANIA WILLIAM --- VALENTINO ALESSANDRA
C     Metodi Numerici per la Fisica - a.a. 2022/2023
C     Parto da x_0=pi. Genero un numero casuale nell'intervallo (x_0-delta,x-O+delta) con delta=10**(-2)
C     Dichiaro la subroutine che mi permette di fare ciò nel programma main.
      subroutine random_uniform(x,a,b)
      implicit none
      real, intent(out) :: x
      real, intent(in) :: a, b
      real :: u
      call random_number(u)
      x= (b - a ) * u + a
      end subroutine
C     Avvio il programma che scrive nel file 'dati.dat' il campione generato
      program es1
      implicit none
      real, parameter :: pi = 3.141592, e = 2.71828, delta=1E-2
      real :: x
      integer :: i
      x=pi
      open(10,file='dati.dat',status='unknown')
      do i=0,50
         call random_uniform(x,x-delta,x+delta)
         write(10,*) x
      end do
      end program
      
      
      
