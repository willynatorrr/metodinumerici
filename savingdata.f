      PROGRAM savingdata
C     Il codice salva dati in un file
      implicit none
      real a, b, c
      integer i, n
C     parameter(a.eq.12.5, b.eq.15.8, c.eq.81.89, i.eq.2, n.eq.100)
      open(10, FILE='dati.dat', STATUS='old')
      open(11, FILE='risultati.ris', STATUS='unknown')
      read(10,*) a, b, c, i, n
      write(11,*) a, b, c, i, n
      close(10)
      close(11)
      END
      
