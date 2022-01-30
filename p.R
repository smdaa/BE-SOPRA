# Read physicochimiques Data
A_physico = read.csv("physico/Analyses_physico_garonne.CSV", sep=";")

# Distribution of Analysis over the 34 Stations
X11()
barplot(table(A_physico$CdStationMesureEauxSurface), las=2)

# 11 stations take the lead : where we make the vast majority of Analysis
sort(table(A_physico$LbStationMesureEauxSurface), decreasing=TRUE)[1:11]

# What parameters do we analyze often
X11()
barplot(table(A_physico$CdParametre), las=2)

# Mostly uniform ie we analyze multiple parameters with same frequency