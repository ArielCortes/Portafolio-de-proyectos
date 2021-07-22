#Código que determina el porcentaje de probabilidad de tener 2 equipos con valor 100 en un grupo de 5 equipos en Python.
#Premisas en Python
CantEquipos = 5
MediaGrupo = 92.4
NuestroEquipo = 100
EquipoMenor = 87

PuntosGlobales = MediaGrupo*CantEquipos
print(PuntosGlobales)

PuntosGlobales = PuntosGlobales-NuestroEquipo

PuntosGlobales = PuntosGlobales-EquipoMenor
print(PuntosGlobales)



#H0: Otro quipo saco 100 en Python
OtroEquipo = 100

PuntosGlobales = PuntosGlobales - OtroEquipo

MediaDosEquipos = PuntosGlobales/2
print(MediaDosEquipos)

MinCalif = EquipoMenor
MaxCalif = PuntosGlobales-MinCalif
Cosa1 = []
Cosa2 = []

while (MaxCalif>=MinCalif):
    Cosa1.append(MinCalif)
    Cosa2.append(MaxCalif)
    MinCalif += 1
    MaxCalif -= 1

print(Cosa1)
print(Cosa2)

Equipo1 = (Cosa1)
Equipo2 = int(Cosa2[0])

print(Equipo2)

StringEq1 = [str(integer) for integer in Equipo1]
StringyEq1 = "".join(StringEq1)
Equipo1 = int(StringyEq1)

StringEq2 = [str(integer) for integer in Equipo2]
StringyEq2 = "".join(StringEq2)
Equipo2 = int(StringyEq2)

Calificaciones = [NuestroEquipo,OtroEquipo,EquipoMenor,Equipo1,Equipo2]
print(Calificaciones)

CalificacionOtros = CantEquipos - 1

def factorizamelo(n):
    return 1 if (n==1 or n==0) else n * factorizamelo(n -1);

CasosConOtro100 = factorizamelo(CalificacionOtros)
print(CasosConOtro100)



#reset in Python uwu
CantEquipos = 5
MediaGrupo = 92.4
NuestroEquipo = 100
EquipoMenor = 87

PuntosGlobales = MediaGrupo*CantEquipos
print(PuntosGlobales)

PuntosGlobales = PuntosGlobales-NuestroEquipo

PuntosGlobales = PuntosGlobales-EquipoMenor
print(PuntosGlobales)



#Let's say that we weren't lol literally impossible xd
MinimaCalif = EquipoMenor
MaxCalif = 99

PosiblesCalif = []

for i in range(87,100):
    PosiblesCalif.append(i)

print(PosiblesCalif)

Contador = MinimaCalif

Bodega = []

