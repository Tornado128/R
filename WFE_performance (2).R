#Clasius_Clapeyron Equation

rm(list=ls())

#Octamethylcyclotetrasiloxane (D4)





Q = 1;                                        # flow rate (ml/min)
Q = Q*10^-6*60
Nb = 3;                                       # number of blades
Dm = c(10^-15, 10^-12, 10^-9, 10^-6, 10^-3)   # diffusion coefficient (m^2/sec)
D=4;                                          # diameter (inch)
D=D*2.54*.01;
H=13.52                                       # height (inch)
H=H*2.54*.01                                  
w=300                                         #rpm
w=w/60

sig= (2*3.14*D*D/Q)*(w*Dm/Nb)^.5
Ns = H*Nb/(3.14*D)

N = c(1, 2, 4, 8, 16)

ratio = 1/(1+sig)^Ns

plot(Dm,ratio,xlim=c(10^-15,10^-3),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec)",ylab="C_F/C_0", pch=0,cex.lab=1.5, cex.axis=1.5)
par(new=TRUE)
plot(Dm,ratio^5,xlim=c(10^-15,10^-3),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec)",ylab="C_F/C_0", pch=2,cex.lab=1.5, cex.axis=1.5)
par(new=TRUE)
plot(Dm,ratio^10,xlim=c(10^-15,10^-3),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec)",ylab="C_F/C_0", pch=4,cex.lab=1.5, cex.axis=1.5)
par(new=TRUE)
plot(Dm,ratio^15,xlim=c(10^-15,10^-3),ylim=c(0,1),log="x", xlab="Diffusivity (m2/sec)",ylab="C_F/C_0", pch=5,cex.lab=1.5, cex.axis=1.5)
legend("topright", legend = c("1st pass", "5th pass", "10th pass", "15th pass"), pch = c(0,2,4,5), bty = "n", text.col = "black",cex = 1.25)
total <- rbind(Dm,ratio)
print(total)
