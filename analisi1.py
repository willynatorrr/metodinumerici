'''Algoritmo M-H per una gaussiana, valori veri: mu=5, sigma2=1, delta=10e-1'''


#librerie
import numpy
from numpy import mean
import statistics
from matplotlib import pyplot
import pylab
import math

#importo il file dei dati
xk = numpy.loadtxt('dati.dat',  unpack = True)
N=110000

#media e deviazione standard: mean()=media,
v=numpy.array(xk)
data = [v]
print ("The mean is =",numpy.mean(data))

st_dev = numpy.std(data)
print("Standard deviation of the data:", st_dev/numpy.sqrt(N*(N-1)))

print("<x>=", numpy.mean(data), "+-", st_dev/numpy.sqrt(N*(N-1)))



#grafici
#pyplot.figure(1)
pyplot.plot(xk,'red',)
pyplot.xlim(0,110100)
pyplot.xlabel('Number of extractions')
pyplot.ylabel('$x_k$')
pyplot.show()

'''
pyplot.figure(2)
x=numpy.linspace(0,1.1e5,1.1e5)
y=numpy.loadtxt('data.dat')
pyplot.title('?')
pyplot.show(2)
'''

#Il codice è poco implementato, ma avrò modo di rivederlo quando questa materia non mi farà così schifo ed anche quando mi ricorderò qualcosa di pyplot e Python in generale. Il fatto è che io ho plottato qualcosa, ma non ho capito cosa.
