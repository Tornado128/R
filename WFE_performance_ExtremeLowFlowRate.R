#Clasius_Clapeyron Equation

rm(list=ls())

#Octamethylcyclotetrasiloxane (D4)
C = 6.01040189280479e-05;                #gravity vs blades contributions




Q = 0.5;                                                # flow rate (ml/min)
Q = Q*10^-6*60
Nb = 3;                                                 # number of blades
Dm = c(10^-24, 10^-22, 10^-20, 10^-19, 10^-18, 10^-17, 10^-16, 10^-15, 10^-14, 10^-13, 10^-12, 10^-8)    # diffusion coefficient (m^2/sec)
D=4;                                          # diameter (inch)
D=D*2.54*.01;
H=13.52                                       # height (inch)
H=H*2.54*.01                                  
w=300                                         #rpm
w=w/60
te = 0.38                                     # thickness of the film (mm)
te = te*.001                       
rho=1000;             #density (kg/m^3)
vis=3000            #viscosity (cp)
vis=vis*.001


sig= (2*3.14*D*D/Q)*(w*Dm/Nb)^.5
Ns = 3*vis*w*Nb*H/(rho*9.8*te^2)
Ns = w*Nb*H/((1-C)*rho*9.8*te*te/(3*vis)+C*3.14*D*w);


ratio = 1/(1+sig)^Ns

#plot(pass,ratio,xlim=c(10^-24,10^-4),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec) of component i",ylab="(conc. of i in residue/conc. of i in feed)", pch=0,cex.lab=1.5, cex.axis=1.5)

plot(Dm,ratio,xlim=c(10^-8,10^-24),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec) of component i",ylab="(conc. of i in residue/conc. of i in feed)", pch=0,cex.lab=1.5, cex.axis=1.5)
par(new=TRUE)
plot(Dm,ratio^2,xlim=c(10^-8,10^-24),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec) of component i",ylab="(conc. of i in residue/conc. of i in feed)", pch=2,cex.lab=1.5, cex.axis=1.5)
par(new=TRUE)
plot(Dm,ratio^4,xlim=c(10^-8,10^-24),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec) of component i",ylab="(conc. of i in residue/conc. of i in feed)", pch=4,cex.lab=1.5, cex.axis=1.5)
par(new=TRUE)
plot(Dm,ratio^6,xlim=c(10^-8,10^-24),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec) of component i",ylab="(conc. of i in residue/conc. of i in feed)", pch=5,cex.lab=1.5, cex.axis=1.5)
par(new=TRUE)
plot(Dm,ratio^8,xlim=c(10^-8,10^-24),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec) of component i",ylab="(conc. of i in residue/conc. of i in feed)", pch=7,cex.lab=1.5, cex.axis=1.5)
legend("topleft", legend = c("1st pass", "2th pass", "4th pass", "6th pass","8th pass"), pch = c(0,2,4,5,7), bty = "n", text.col = "black",cex = 1.25)
total <- rbind(Dm,ratio)
print(total)

