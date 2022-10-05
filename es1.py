import matplotlib.pyplot as plt
import pylab
import numpy as np
#x=np.arange(0,110001,1)
y=np.loadtxt('dati.txt', 'float')
#plt.title('Pseudo-random extractions')
plt.plot(y,'red',)
plt.xlim(0,110000)
plt.xlabel('Number of extractions')
plt.ylabel('$x_k$')

plt.show()
