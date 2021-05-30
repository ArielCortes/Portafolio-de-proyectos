#Premisas
CantEquipos <- 5
MediaGrupo <- 92.4
NuestroEquipo <- 100
EquipoMenor <- 87

PuntosGlobales <- MediaGrupo*CantEquipos
print(PuntosGlobales)

PuntosGlobales <- PuntosGlobales - NuestroEquipo

PuntosGlobales <- PuntosGlobales - EquipoMenor
print(PuntosGlobales)




#H0: Otro equipo saco 100
OtroEquipo100 <- 100

PuntosGlobales <- PuntosGlobales - OtroEquipo100
print(PuntosGlobales)

MediaDosEquipos <- PuntosGlobales/2
print(MediaDosEquipos)

PuntosGlobales <- MediaDosEquipos*2

MinimaCalif <- EquipoMenor

MaxCalif <- PuntosGlobales - MinimaCalif

EquipoX1 <- MinimaCalif
EquipoX2 <- MaxCalif

while(EquipoX2 >= EquipoX1) {
    Comb1 <- c(EquipoX1)
    Comb2 <- c(EquipoX2)
    EquipoX1 <- EquipoX1 + 1
    EquipoX2 <- EquipoX2 -1
}

print(Comb1)
print(Comb2)

EquipoX1 <- Comb1
EquipoX2 <- Comb2

Calificaciones <- c(NuestroEquipo,OtroEquipo100,EquipoMenor,EquipoX1,EquipoX2)
print(Calificaciones)

CalificacionesOtros <- CantEquipos -1

CasosConOtro100 <- factorial(CalificacionesOtros)

print(CasosConOtro100)




#Reset
CantEquipos <- 5
MediaGrupo <- 92.4
NuestroEquipo <- 100
EquipoMenor <- 87

PuntosGlobales <- MediaGrupo*CantEquipos
print(PuntosGlobales)

PuntosGlobales <- PuntosGlobales - NuestroEquipo

PuntosGlobales <- PuntosGlobales - EquipoMenor
print(PuntosGlobales)




#H1: Sólo nosotrxs sacamos 100
MinimaCalif <- EquipoMenor
MaxCalif <- 99

PosiblesCalif <- 87:99
print(PosiblesCalif)

Sumador <- MinimaCalif

Bodega <- 1

while(Sumador<100) {
    Recopilador <- Sumador+PosiblesCalif
    Bodega <- c(Bodega,Recopilador)
    Sumador <- Sumador + 1
}

Almacen <- Bodega

Sumador <- MinimaCalif

while(Sumador<100) {
    Recopilador <- Sumador+Almacen
    Bodega <- c(Bodega,Recopilador)
    Sumador <- Sumador + 1
}

print(Bodega)

CantCombinaciones <- Bodega[Bodega==PuntosGlobales]
CasosSinOtro100 <- length(CantCombinaciones)*(CantEquipos-1)




#Prueba de Fuego
PosiblesCombinaciones <- CasosSinOtro100 + CasosConOtro100

print(PosiblesCombinaciones)

ProbabilidadOtro100 <- CasosConOtro100/PosiblesCombinaciones
ProbabilidadOtro100 <- sprintf("%0.2f%%",ProbabilidadOtro100*100)

ProbablidadUnico100 <- CasosSinOtro100/PosiblesCombinaciones
ProbablidadUnico100 <- sprintf("%0.2f%%",ProbablidadUnico100*100)

TablitaComparativa <- data.frame(Escenario = c("Otro equipo saco 100","Nadie más saco 100"), Probabilidad = c(ProbabilidadOtro100,ProbablidadUnico100) )
print(TablitaComparativa)