# Edit then press shift-enter or swipe right

# Function definitions
{sci, log10} = $blab.defs  #;

#----Parameters----#

# Speed of meteor impact (km/s)
v = 25 

# Diameter of meteor (m)
D = 981

# Density of meteor (kg/m<sup>3</sup>)
density = 3000

# Distance between seismograph and impact (km)
distance = 631

#----Computation----#

# Impactor mass (kg)
mass = density * 4/3 * pi * (D/2).pow(3)

# Mass in megatons
mass/1e9

# Impactor energy (Joules)
vm = v*1000  #; Speed in m/s
E = 1/2 * mass * vm.pow(2)  #;
sci E

# Megatons of TNT
E/4.18e15

# Impact magnitude
2/3 * log10(E) - 6

# Displacement of seismograph sensor (mm)
dm = distance*1000  #; Distance in m
seis = (0.0016*E*vm) / (5*2.7) / #;
    (4*pi * 1e10 * dm)
1000*seis  # mm

# Crater diameter (m)
modelPi2 = 1.61 * 3.7 * D / (v*1000).pow(2) #;
modelPiD = 1.6 * (modelPi2).pow(-0.22) #;

modelPiD * (mass/3000).pow(1/3)
