# Read physico Data
stations_physico   = read.csv("physico/Stations_physico_garonne.CSV", sep=";")
operations_physico = read.csv("physico/Operations_physico_garonne.CSV", sep=";")
analyses_physico   = read.csv("physico/Analyses_physico_garonne.CSV", sep=";")
conditions_physico = read.csv("physico/ConditionsEnvironnementales_physico_garonne (1).CSV", sep=";")

# Read hydrobio Data
stations_hydrobio   = read.csv("hydrobio/Stations_hydrobio_garonne.CSV", sep=";")
operations_hydrobio = read.csv("hydrobio/Operations_hydrobio_garonne.CSV", sep=";")
resultatsbiologiques_hydrobio = read.csv("hydrobio/Resultats_hydrobio_garonne.CSV", sep=";")
ListesFauneFlore_hydrobio = read.csv("hydrobio/ListesFauneFlore_hydrobio_garonne.CSV", sep=";")
conditionsEnvironnementales_hydrobio = read.csv("hydrobio/ConditionsEnvironnementales_physico_garonne.CSV", sep=";")

