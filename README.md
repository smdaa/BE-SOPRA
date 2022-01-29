Projet Sopra<a name="TOP"></a>
===================

- - - - 
	
# Bassin adour-garonne #
* Données Hydrobiologie (Science qui étudie la faune aquatique)
		-> https://drive.google.com/file/d/1GQtdWMoVsghquLNrVzF8PkPe31TNLRDq/view?usp=sharing
* Données Physicoshimie (propriétés physiques et chimiques de la matière)
		-> https://drive.google.com/file/d/1pB8BZGVFXFXqJ09palVIImZn_Ao1wQZs/view?usp=sharing
		
# Objectifs #
- [ ] Compréhension des données : quelle valeur métiers sont-elles susceptibles de porter ?
- [ ] Quels usages peuvent en être fait avec les données telles que disponibles actuellement ?
- [ ] Comment pourrait on donner de la valeur à l’utilisation de ces données ?
- [ ] Identifier les « manques », ou ce qui permettraient d’aller plus loin par rapport à l’état
- [ ] Formaliser le problème sous un angle data-science / Machine Learning : type de problème
- [ ] Autant que faire se peut, ébaucher cet analyse data :
- [ ] Se projeter : cette approche, si elle devait être industrialisée, quelles en seraient les contraintes (rafraichissement des données, pérennité des données…)

# Data #	
## hydrobio ##
* **Stations_hydrobio_garonne**

| Colonne   |      Description      |
|-----------|:---------------------:|
| CdStationMesureEauxSurface, LbStationMesureEauxSurface |  code & label de la station |
| ~~DurStationMesureEauxSurface~~ |    indicateur de la minéralisation de l’eau(N/A)   |
| CoordXStationMesureEauxSurface, CoordYStationMesureEauxSurface, CdProjStationMesureEauxSurface, LibelleProjection, CodeCommune, LbCommune, CodeDepartement, LbDepartement, CodeRegion, LbRegion, LocPreciseStationMesureEauxSurf
ace | Localisation |
| CdMasseDEau, CdEuMasseDEau, NomMasseDEau, CdEuSsBassinDCEAdmin, NomSsBassinDCEAdmin, CdBassinDCE, CdEuBassinDCE, NomEuBassinDCE,  | identification de la masse d'eau en frence et en europe |
| CdTronconHydrographique, CdCoursdEau, ~~NomCoursdEau~~, CodeTypEthStationMesureEauxSurface, LibelleTypEthStationMesureEauxSurface | info hydrographique |
| DateCreationStationMesureEauxSurface, ~~DateArretActiviteStationMesureEauxSurface~~, DateMAJInfosStationMesureEauxSurface  | date de création, arret, maj de la sation |
| FinaliteStationMesureEauxSurface | finalité de la station |
| ~~ComStationMesureEauxSurface~~ | commentaire |
| CodeNatureStationMesureEauxSurface, LibelleNatureStationMesureEauxSurface | manuelle, automatique |
| AltitudePointCaracteristique | altitude |
| ~~PkPointTronconEntiteHydroPrincipale~~, ~~PremierMoisAnneeEtiage~~, ~~SuperficieBassinVersantReel~~, ~~SuperficieBassinVersantTopo~~ | irrelevent |

* **Operations_hydrobio_garonne**

| Colonne   |      Description      |
|-----------|:---------------------:|





