#Clasius_Clapeyron Equation

rm(list=ls())

#Octamethylcyclotetrasiloxane (D4)
C = 0#8.296*10^-5;                #gravity vs blades contributions




Q = 0.5;                                      # flow rate (ml/min)
Q = Q*10^-6*60
Nb = 3;                                       # number of blades
Dm = 10^-16                                   # diffusion coefficient (m^2/sec)
D=4;                                          # diameter (inch)
D=D*2.54*.01;
H=13.52                                       # height (inch)
H=H*2.54*.01                                  
w=300                                         #rpm
w=w/60
te = 0.38                                     # thickness of the film (mm)
te = te*.001                       
rho=1000;                                     #density (kg/m^3)
vis=3000                                      #viscosity (cp)
vis=vis*.001


sig= (2*3.14*D*D/Q)*(w*Dm/Nb)^.5
Ns = 3*vis*w*Nb*H/(rho*9.8*te^2)
Ns = w*Nb*H/((1-C)*rho*9.8*te*te/(3*vis)+C*3.14*D*w);

ratio = 1/(1+sig)^Ns
pass = c(0:6)
SC = 0.01*c(73.335, 97.994, 99.881, 99.823, 99.924, 99.945, 99.956)     #solid percent/100
#plot(pass,SC,xlim=c(0,6),ylim=c(0,1), xlab="Pass #",ylab="(conc. of i in residue/conc. of i in feed)  ,   Solid Ratio", pch=0,cex.lab=1.5, cex.axis=1.5)
plot(pass,SC,xlim=c(0,6),ylim=c(0.7,1), xlab="Pass #",ylab="Solid Ratio", pch=0,cex.lab=1.5, cex.axis=1.5)

#par(new=TRUE)
#plot(5,ratio^6,xlim=c(0,6),ylim=c(0,1), xlab="Pass #",ylab="(conc. of i in residue/conc. of i in feed)  ,   Solid Ratio", pch=0,cex.lab=1.5, cex.axis=1.5)

#plot(pass,SR,xlim=c(0,6),ylim=c(0,1), xlab="Pass #",ylab="(conc. of i in residue/conc. of i in feed)", pch=0,cex.lab=1.5, cex.axis=1.5)

