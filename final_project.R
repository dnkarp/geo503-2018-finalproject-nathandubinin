# Making Pollen Diagrams
 
# With the help of the Blarquez lab (laboratoire de paleoeologie) and 
# Benjamin Bell's blog for the 'rioja' package

# packages:
library(rioja)
library(ggplot2)
library(grid)
library(neotoma)
library(analogue)

# Info from Neotoma Explorer (Data originally from European Pollen Database)


# Complete name : Lake Sambösjön
# Acronym : SAMBOTOT
# Country : Sweden

# Source of the data : Digerfeldt Gunnar
# Latitude : 57°8'0" N
# Longitude : 12°25'0" E
# Elevation : 35m

# References :
# Digerfeldt, G. 1982. The Holocene development of Lake Sambosjon. 1. The regional vegetation history. Lundqua Report, 23:1-24.f Lake Sambosjon. 1. The regional vegetation history. Lundqua Report 23:1-24.
# Description "Lake. Physiography: lake. Surrounding vegetation: 10-15m broad and continuous Alnus belt."
# Site name: Lake Sambösjön
# Site ID: 3398

# Getting data using Neotoma's API for 
# Lake Sambösjön
sam <- get_site(sitename = 'Lake Sambösjön')
sam_pollen=get_dataset(sam)
sam_data=get_download(sam_pollen)

# head(sam_data[[1]]$counts)

sam.core.pct <- data.frame(tran(sam_data[[1]]$counts, method = 'percent'))

sam.depth <- sam_data[[1]]$sample.meta$depth
# For now, will exclude anything less than 10% (will need to research more if this is appropriate)
sam.core.pct <- chooseTaxa(sam.core.pct, max.abun = 10)

# plot using strat.plot ('rioja')


# Define colour scheme
sam.p.col <- c(rep("lightblue", times=20))
# Define y axis 
sam.y.scale <- sam.depth
# filled plot with bars

sam.pol.plot <- strat.plot(sam.core.pct, yvar=sam.y.scale, y.tks=sam.y.scale, y.rev=TRUE, plot.line=FALSE, plot.poly=TRUE, plot.bar=TRUE, col.bar="black", col.poly=sam.p.col, col.poly.line="black", scale.percent=TRUE, xSpace=0.01, x.pc.lab=TRUE, x.pc.omit0=TRUE, las=2)



# Info from Neotoma Explorer and European Pollen Database


# Complete name : Lake Flarken
# Acronym : FLARKTOT
# Country : Sweden

# Source of the data : Digerfeldt Gunnar
# Latitude : 58°35'0" N
# Longitude : 13°40'0" E
# Elevation : 109m

# References :
# Digerfeldt, G. 1977. The Flandrian development of Lake Flarken. Regional vegetation history and palaeolimnology. University of Lund Department of Quaternary Geology. Report 13:1-101.

# Site name: Lake Flarken
# Site ID:3107

# Getting data using Neotoma's API for 
# Lake Flarken
flarken <- get_site(sitename = 'Lake Flarken')
flarken_pollen=get_dataset(flarken)
flarken_data=get_download(flarken_pollen)

# head(flarken_data[[1]]$counts)

flarken.core.pct <- data.frame(tran(flarken_data[[1]]$counts, method = 'percent'))

flarken.depth <- flarken_data[[1]]$sample.meta$depth
# For now, will exclude anything less than 10% (will need to research more if this is appropriate)
flarken.core.pct <- chooseTaxa(flarken.core.pct, max.abun = 10)

# plot using strat.plot ('rioja')


# Define colour scheme
flarken.p.col <- c(rep("lightblue", times=20))
# Define y axis 
flarken.y.scale <- flarken.depth
# filled plot with bars

flarken.pol.plot <- strat.plot(flarken.core.pct, yvar=flarken.y.scale, y.tks=flarken.y.scale, y.rev=TRUE, plot.line=FALSE, plot.poly=TRUE, plot.bar=TRUE, col.bar="black", col.poly=flarken.p.col, col.poly.line="black", scale.percent=TRUE, xSpace=0.01, x.pc.lab=TRUE, x.pc.omit0=TRUE, las=2)


# Info from Neotoma Explorer and European Pollen Database

# Complete name : Dags Mosse
# Acronym : DAGSMOO
# Country : Sweden

# Source of the data : Göransson Hans
# Latitude : 58°20'0" N
# Longitude : 14°42'0" E
# Elevation : 260m

# References :
# Göransson, H. 1989. Dags Mosse-Östergötlands förhistoriska kalender. Svensk Botanisk Tidskrift 83:371-407.
# Description: "Raised Pinus-Sedum-Sphagnum bog. Physiography: tills and glaciofluvial depressions. Surrounding vegetation: Pinus-Betula (Picea) belt."
# Site name: Dags Mosse
# Site ID:3077

# Getting data using Neotoma's API for 
# Lake Flarken
dags <- get_site(sitename = 'Dags Mosse')
dags_pollen=get_dataset(dags)
dags_data=get_download(dags_pollen)

# head(dags_data[[1]]$counts)

dags.core.pct <- data.frame(tran(dags_data[[1]]$counts, method = 'percent'))

dags.depth <- dags_data[[1]]$sample.meta$depth
# For now, will exclude anything less than 10% (will need to research more if this is appropriate)
dags.core.pct <- chooseTaxa(dags.core.pct, max.abun = 10)

# plot using strat.plot ('rioja')


# Define colour scheme
dags.p.col <- c(rep("lightblue", times=20))
# Define y axis 
dags.y.scale <- dags.depth
# filled plot with bars

dags.pol.plot <- strat.plot(dags.core.pct, yvar=dags.y.scale, y.tks=dags.y.scale, y.rev=TRUE, plot.line=FALSE, plot.poly=TRUE, plot.bar=TRUE, col.bar="black", col.poly=dags.p.col, col.poly.line="black", scale.percent=TRUE, xSpace=0.01, x.pc.lab=TRUE, x.pc.omit0=TRUE, las=2)


# Info from Neotoma Explorer and European Pollen Database


# Complete name : Mabo Moss
# Acronym : MABO
# Country : Sweden

# Source of the data : Göransson Hans
# Latitude : 58°1'0" N
# Longitude : 16°4'0" E
# Elevation : 117m

# References :
# Göransson, H. 1991. Vegetation and man around Lake Bjärsjöholmssjön during prehistoric time. Lundqua Report 31.
# Description: "Slightly raised Pinus-Ledum-Sphagnum bog. Physiography: Glaciofluvial deposits and tills. Surrounding vegetation: Pinus-Betula-Picea (Quercus)."
# Site Name: Mabo Moss
# Site ID: 15711

# Getting data using Neotoma's API for 
# Mabo Moss
mabo <- get_site(sitename = 'Mabo Moss')
mabo_pollen=get_dataset(mabo)
mabo_data=get_download(mabo_pollen)

# head(mabo_data[[1]]$counts)

mabo.core.pct <- data.frame(tran(mabo_data[[1]]$counts, method = 'percent'))

mabo.depth <- mabo_data[[1]]$sample.meta$depth
# For now, will exclude anything less than 10% (will need to research more if this is appropriate)
mabo.core.pct <- chooseTaxa(mabo.core.pct, max.abun = 10)

# plot using strat.plot ('rioja')


# Define colour scheme
mabo.p.col <- c(rep("lightblue", times=20))
# Define y axis 
mabo.y.scale <- mabo.depth
# filled plot with bars

mabo.pol.plot <- strat.plot(mabo.core.pct, yvar=mabo.y.scale, y.tks=mabo.y.scale, y.rev=TRUE, plot.line=FALSE, plot.poly=TRUE, plot.bar=TRUE, col.bar="black", col.poly=mabo.p.col, col.poly.line="black", scale.percent=TRUE, xSpace=0.01, x.pc.lab=TRUE, x.pc.omit0=TRUE, las=2)


# Info from Neotoma Explorer and European Pollen Database

# Complete name : Kansjon
# Acronym : KANSJON
# Country : Sweden

# Source of the data : Jacobson George L.
# Latitude : 57°38'0" N
# Longitude : 14°32'0" E
# Elevation : 308m

# Site name: Kansjon
# Site ID: 1401
# Description "Lake. Physiography: Rolling till surface. Surrounding vegetation: Pinus, Betula."





# Site name:	Kansjon
# Description: "Lake. Physiography: Rolling till surface. Surrounding vegetation: Pinus, Betula."

# Getting data using Neotoma's API for 
# Kansjon
kansjon <- get_site(sitename = 'Kansjon')
kansjon_pollen=get_dataset(kansjon)
kansjon_data=get_download(kansjon_pollen)

# head(kansjon_data[[1]]$counts)

kansjon.core.pct <- data.frame(tran(kansjon_data[[1]]$counts, method = 'percent'))

kansjon.depth <- kansjon_data[[1]]$sample.meta$depth
# For now, will exclude anything less than 10% (will need to research more if this is appropriate)
kansjon.core.pct <- chooseTaxa(kansjon.core.pct, max.abun = 10)

# plot using strat.plot ('rioja')


# Define colour scheme
kansjon.p.col <- c(rep("lightblue", times=20))
# Define y axis 
kansjon.y.scale <- kansjon.depth
# filled plot with bars

kansjon.pol.plot <- strat.plot(kansjon.core.pct, yvar=kansjon.y.scale, y.tks=kansjon.y.scale, y.rev=TRUE, plot.line=FALSE, plot.poly=TRUE, plot.bar=TRUE, col.bar="black", col.poly=kansjon.p.col, col.poly.line="black", scale.percent=TRUE, xSpace=0.01, x.pc.lab=TRUE, x.pc.omit0=TRUE, las=2)
