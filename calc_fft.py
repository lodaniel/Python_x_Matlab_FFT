# Author: Luciano de Oliveira Daniel
# https://sites.google.com/site/professorlucianodaniel

from scipy.io import savemat
import numpy as np
import matplotlib.pyplot as plt
import time

def pause():
    input("Press the <ENTER> key to continue...")

Fs = 1E6
T = 1/Fs
L = 1E5
t=np.linspace(0.0,0.1,num=100000)
volt = np.sin(2*np.pi*60*t)
harm1=.05*np.sin(2*np.pi*3*60*t)+.040*np.sin(2*np.pi*7*60*t)+.044*np.sin(2*np.pi*11*60*t)
harm2=.045*np.sin(2*np.pi*6*60*t)+.035*np.sin(2*np.pi*18*60*t)+.025*np.sin(2*np.pi*24*60*t)
harm3=.01*np.sin(2*np.pi*100*60*t)+.007*np.sin(2*np.pi*200*60*t)+.003*np.sin(2*np.pi*300*60*t)
S = volt + harm1 + harm2 + harm3
#plt.plot(t, S)
#plt.xlim([0.0, 0.1])
#plt.ylim([-1.5, 1.5])
#plt.title('Tensão com Harmônicos')
#plt.xlabel('Tempo [ms]')
#plt.ylabel('Tensão v(t) [V]')
#plt.show()
t = time.time()
FFT_P = np.fft.fft(S)
elapsed = time.time() - t
print('FFT elapsed time in PYTHON (executable) is:', elapsed, 'seconds', '\n')
savemat('FFT.mat', {'FFT_P': FFT_P})
pause()

freq = np.fft.fftfreq(t.shape[-1])
#f = Fs*(0:(L/10))/L
plt.plot(freq, FFT)
#plt.xlim([0.0, 0.1])
#plt.ylim([-1.5, 1.5])
plt.title('Espectro da tensão v(t)')
plt.xlabel('Frequência (Hz)')
plt.ylabel('|FFT(f)|')
plt.show()