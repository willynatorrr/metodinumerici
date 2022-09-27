      PROGRAM massimo
C     il programma calcola il valore massimo fra due reali a e b, memorizzandolo nella variabile max
      implicit none
      real*8 a, b, max
      write(6,*) 'Inserisci un numero:'
      read(5,*) a
      write(6,*) 'Inseriscine un altro:'
      read(5,*) b
      if (a.ge.b) then
         max=a
      else
         max=b
      end if
      write(6,*) 'Il massimo fra ', a, ' e ', b, 'e'':', max
      END   
