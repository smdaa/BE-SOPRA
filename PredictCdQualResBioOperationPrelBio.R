# Read hydrobio Data
S_hydrobio = read.csv("hydrobio/Stations_hydrobio_garonne.CSV", sep=";")
O_hydrobio = read.csv("hydrobio/Operations_hydrobio_garonne.CSV", sep=";")
C_hydrobio = read.csv("hydrobio/ConditionsEnvironnementales_hydrobio_garonne.CSV", sep=";")

# Can we predict CdQualResBioOperationPrelBio using
# CdStationMesureEauxSurface : La station de mesure
# CdPointEauxSurf            : Point de prélèvement de l’opération
# CdMethode                  : La méthode de l’opération de prélèvement
# CdProducteur               : Code de l’intervenant producteur du prélèvement 
# CdPreleveur                : Code de l’intervenant ayant effectué l’opération de prélèvement biologique
# CdDeterminateur            : Code de l’intervenant ayant réalisé la détermination taxonomique
# LongProspecOperationPrelBio        |
# LargeurMoyLameEauOperationPrelBio  | Data about the equipment would probably be useful but
# HMoyLamOperationPrelBio            | not available in our case
# SurfTotProspecteeOperationPrelBio  |

# Logistic regression
O_hydrobio$CdQualResBioOperationPrelBio = as.factor(O_hydrobio$CdQualResBioOperationPrelBio)
glm.out    = glm(CdQualResBioOperationPrelBio~CdStationMesureEauxSurface+CdPointEauxSurf+
                   CdMethode+CdProducteur+CdPreleveur+CdDeterminateur+CdDeterminateur, O_hydrobio, family=binomial)


summary(glm.out)
# The only relevant predictor is CdStationMesureEauxSurface
length(unique(O_hydrobio$CdStationMesureEauxSurface))
# We have 34 different stations

# what makes some stations produce more correct results
data = merge(S_hydrobio, O_hydrobio[,c(1, 22)], on="CdStationMesureEauxSurface")

# Can we predict CdQualResBioOperationPrelBio using
# DurStationMesureEauxSurface           : Dureté moyenne de l’eau (would be useful but N/A)
# CodeRegion                            : Code INSEE de la région
# CdTronconHydrographique               : Code du tronçon hydrographique associé à la station
# CodeTypEthStationMesureEauxSurface    : Type d’entité hydrographique de la station de mesure
# DateCreationStationMesureEauxSurface  : Date de création de la station de mesure
# CodeNatureStationMesureEauxSurface    : Code de la nature de la station de mesure (Manuel/ Automatic) not relevant because all stations are manual
# AltitudePointCaracteritisque          : Altitude du point caractéristique de la station de mesure

glm.out1 = glm(CdQualResBioOperationPrelBio~CodeRegion+CodeTypEthStationMesureEauxSurface+
                 DateCreationStationMesureEauxSurface+
                 AltitudePointCaracteritisque+CdTronconHydrographique, data, family=binomial)

summary(glm.out1)
# nothing is relevant to explain why some stations give more correct results.

# Can we use conditions to predict CdQualResBioOperationPrelBio using
# CdParametreEnv                    : Code du paramètre environnemental
# RsParEnvOpPrelBio                 : Mesure de la condition environnementale
# CdMethodeParEnvPrelBio            : Code de la méthode de la condition environnementale de l’opération de prélèvement
# RefOperationPrelBio               : Référence de l’opération de prélèvement
# CdStatutParEnvPrelBio             : Code du statut de la condition environnementale de l’opération de prélèvement

data1 = merge(C_hydrobio, O_hydrobio[,c(4, 22)], on="CdSupport")
glm.out2 = glm(CdQualResBioOperationPrelBio~CdParametreEnv+RsParEnvOpPrelBio
                +CdMethodeParEnvPrelBio+RefOperationPrelBio+CdStatutParEnvPrelBio, data1, family=binomial)

coef(summary(glm.out2))[,'Pr(>|z|)']
# nothing is statistically significant!

