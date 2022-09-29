      PROGRAM savingdata
C     Il codice salva dati in un file
      implicit none
      real a, b, c
      integer i, n
      parameter(a.eq.12.5, b.eq.15.8, c.eq.81.89, i.eq.2, n.eq.100)
      open(unit1, FILE='risultati.ris', STATUS='old')
