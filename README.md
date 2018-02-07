complex
=======

This project is the code used in the Meta-Learning (MtL) evaluation of the ICPR 2018 paper "An updated analysis of complexity measures for classification problems". The experiments are divided in two steps. The first is related to the base-level and the second to the meta-level performance. To run the experiment we need the [ECoL](https://github.com/SmartDataAnalytics/ECoL) and some other R packages.

## Datasets

<details>
  <summary>Click to expand</summary>
Summary of datasets characteristics: identifier, name, number of examples, number of features (numeric/categorical), number of classes and the majority class proportion of each dataset.

|ID    |Dataset                           |Examples |Feautures    |Class |%MC |
|:-----|:---------------------------------|:--------|:------------|:-----|:---|
|1455  |acute inflammations               |120      |6 (1/5)      |2     |1   |
|1556  |acute inflammations               |120      |6 (1/5)      |2     |1   |
|1043  |ada agnostic                      |4562     |47 (47/0)    |2     |3   |
|458   |analcatdata authorship            |841      |70 (70/0)    |4     |6   |
|448   |analcatdata boxing1               |120      |3 (0/3)      |2     |2   |
|444   |analcatdata boxing2               |132      |3 (0/3)      |2     |1   |
|461   |analcatdata creditscore           |100      |6 (3/3)      |2     |3   |
|469   |analcatdata dmft                  |797      |4 (0/4)      |6     |1   |
|475   |analcatdata germangss             |400      |5 (1/4)      |4     |1   |
|450   |analcatdata lawsuit               |264      |4 (3/1)      |2     |13  |
|1456  |appendicitis                      |106      |7 (7/0)      |2     |4   |
|1061  |ar4                               |107      |29 (29/0)    |2     |4   |
|292   |Australian                        |690      |14 (14/0)    |2     |1   |
|1547  |autoUniv au1 1000                 |1000     |20 (20/0)    |2     |3   |
|1548  |autoUniv au4 2500                 |2500     |100 (58/42)  |3     |6   |
|1555  |autoUniv au6 1000                 |1000     |40 (37/3)    |8     |3   |
|1551  |autoUniv au6 400                  |400      |40 (37/3)    |8     |4   |
|1549  |autoUniv au6 750                  |750      |40 (37/3)    |8     |3   |
|1552  |autoUniv au7 1100                 |1100     |12 (8/4)     |5     |2   |
|1554  |autoUniv au7 500                  |500      |12 (8/4)     |5     |4   |
|1553  |autoUniv au7 700                  |700      |12 (8/4)     |3     |1   |
|463   |backache                          |180      |31 (5/26)    |2     |6   |
|1121  |badges2                           |294      |10 (7/3)     |2     |2   |
|11    |balance scale                     |625      |4 (4/0)      |3     |6   |
|1460  |banana                            |5300     |2 (2/0)      |2     |1   |
|1558  |bank marketing                    |4521     |16 (7/9)     |2     |8   |
|1462  |banknote authentication           |1372     |4 (4/0)      |2     |1   |
|1463  |blogger                           |100      |5 (0/5)      |2     |2   |
|1464  |blood transfusion service center  |748      |4 (4/0)      |2     |3   |
|1465  |breast tissue                     |106      |9 (9/0)      |6     |2   |
|1559  |breast tissue                     |106      |9 (9/0)      |4     |4   |
|21    |car                               |1728     |6 (0/6)      |4     |19  |
|1466  |cardiotocography                  |2126     |35 (35/0)    |10    |11  |
|1467  |climate model simulation crashes  |540      |20 (20/0)    |2     |11  |
|23    |cmc                               |1473     |9 (2/7)      |3     |2   |
|31    |credit g                          |1000     |20 (7/13)    |2     |2   |
|1075  |datatrieve                        |130      |8 (8/0)      |2     |11  |
|37    |diabetes                          |768      |8 (8/0)      |2     |2   |
|694   |diggle table a2                   |310      |8 (8/0)      |9     |2   |
|1473  |fertility                         |100      |9 (9/0)      |2     |7   |
|1475  |first order theorem proving       |6118     |51 (51/0)    |6     |5   |
|4538  |GesturePhaseSegmentationProcessed |9873     |32 (32/0)    |5     |3   |
|338   |grub damage                       |155      |8 (2/6)      |4     |3   |
|43    |haberman                          |306      |3 (2/1)      |2     |3   |
|329   |hayes roth                        |160      |4 (4/0)      |3     |2   |
|1565  |heart h                           |294      |13 (13/0)    |5     |13  |
|1512  |heart long beach                  |200      |13 (13/0)    |5     |6   |
|53    |heart statlog                     |270      |13 (13/0)    |2     |1   |
|1479  |hill valley                       |1212     |100 (100/0)  |2     |1   |
|1566  |hill valley                       |1212     |100 (100/0)  |2     |1   |
|1480  |ilpd                              |583      |10 (9/1)     |2     |2   |
|59    |ionosphere                        |351      |33 (33/0)    |2     |2   |
|61    |iris                              |150      |4 (4/0)      |3     |1   |
|375   |JapaneseVowels                    |9961     |14 (14/0)    |9     |2   |
|1073  |jEdit 4.4.2                       |274      |8 (8/0)      |2     |1   |
|1048  |jEdit 4.4.3                       |369      |8 (8/0)      |2     |1   |
|1066  |kc1 binary                        |145      |86 (86/0)    |2     |1   |
|1065  |kc3                               |458      |39 (39/0)    |2     |10  |
|3     |kr vs kp                          |3196     |36 (0/36)    |2     |1   |
|40496 |LED display domain 7digit         |500      |7 (7/0)      |10    |2   |
|1484  |lsvt                              |126      |307 (307/0)  |2     |2   |
|1485  |madelon                           |2600     |500 (500/0)  |2     |1   |
|1056  |mc1                               |9466     |38 (38/0)    |2     |138 |
|1054  |mc2                               |161      |39 (39/0)    |2     |2   |
|12    |mfeat factors                     |2000     |216 (216/0)  |10    |1   |
|14    |mfeat fourier                     |2000     |76 (76/0)    |10    |1   |
|16    |mfeat karhunen                    |2000     |64 (64/0)    |10    |1   |
|18    |mfeat morphological               |2000     |6 (6/0)      |10    |1   |
|20    |mfeat pixel                       |2000     |240 (0/240)  |10    |1   |
|22    |mfeat zernike                     |2000     |47 (47/0)    |10    |1   |
|164   |molecular biology promoters       |106      |57 (0/57)    |2     |1   |
|333   |monks problems 1                  |556      |6 (0/6)      |2     |1   |
|334   |monks problems 2                  |601      |6 (0/6)      |2     |2   |
|335   |monks problems 3                  |554      |6 (0/6)      |2     |1   |
|1116  |musk                              |6598     |167 (166/1)  |2     |5   |
|1071  |mw1                               |403      |37 (37/0)    |2     |12  |
|311   |oil spill                         |937      |48 (48/0)    |2     |22  |
|28    |optdigits                         |5620     |62 (62/0)    |10    |1   |
|1487  |ozone level 8hr                   |2534     |72 (72/0)    |2     |15  |
|30    |page blocks                       |5473     |10 (10/0)    |5     |175 |
|1488  |parkinsons                        |195      |22 (22/0)    |2     |3   |
|1068  |pc1                               |1109     |21 (21/0)    |2     |13  |
|1069  |pc2                               |5589     |36 (36/0)    |2     |242 |
|1050  |pc3                               |1563     |37 (37/0)    |2     |9   |
|1049  |pc4                               |1458     |37 (37/0)    |2     |7   |
|1167  |pcreq                             |320      |8 (7/1)      |2     |2   |
|1489  |phoneme                           |5404     |5 (5/0)      |2     |2   |
|1490  |planning relax                    |182      |12 (12/0)    |2     |2   |
|1100  |PopularKids                       |478      |10 (6/4)     |3     |3   |
|446   |prnn crabs                        |200      |7 (6/1)      |2     |1   |
|464   |prnn synth                        |250      |2 (2/0)      |2     |1   |
|1494  |qsar biodeg                       |1055     |41 (41/0)    |2     |2   |
|1495  |qualitative bankruptcy            |250      |6 (0/6)      |2     |1   |
|1496  |ringnorm                          |7400     |20 (20/0)    |2     |1   |
|679   |rmftsa sleepdata                  |1024     |2 (2/0)      |4     |4   |
|1519  |robot failures lp4                |117      |90 (90/0)    |3     |3   |
|1520  |robot failures lp5                |164      |90 (90/0)    |5     |2   |
|1498  |sa heart                          |462      |9 (8/1)      |2     |2   |
|294   |satellite image                   |6435     |36 (36/0)    |6     |2   |
|182   |satimage                          |6430     |36 (36/0)    |6     |2   |
|312   |scene                             |2407     |299 (294/5)  |2     |5   |
|40877 |seeds                             |210      |7 (7/0)      |3     |1   |
|36    |segment                           |2310     |18 (18/0)    |7     |1   |
|40878 |seismic bumps                     |2584     |15 (11/4)    |2     |14  |
|1501  |semeion                           |1593     |256 (256/0)  |10    |1   |
|40    |sonar                             |208      |60 (60/0)    |2     |1   |
|44    |spambase                          |4601     |57 (57/0)    |2     |2   |
|336   |SPECT                             |267      |22 (0/22)    |2     |4   |
|1600  |SPECTF                            |267      |44 (44/0)    |2     |4   |
|46    |splice                            |3190     |60 (0/60)    |3     |2   |
|1504  |steel plates fault                |1941     |33 (33/0)    |2     |2   |
|377   |synthetic control                 |600      |60 (60/0)    |6     |1   |
|48    |tae                               |151      |5 (3/2)      |3     |1   |
|1115  |teachingAssistant                 |151      |6 (2/4)      |3     |1   |
|1506  |thoracic surgery                  |470      |16 (3/13)    |2     |6   |
|40474 |thyroid allbp                     |2800     |26 (6/20)    |5     |53  |
|40475 |thyroid allhyper                  |2800     |26 (6/20)    |5     |53  |
|50    |tic tac toe                       |958      |9 (0/9)      |2     |2   |
|1507  |twonorm                           |7400     |20 (20/0)    |2     |1   |
|1508  |user knowledge                    |403      |5 (5/0)      |5     |5   |
|54    |vehicle                           |846      |18 (18/0)    |4     |1   |
|1523  |vertebra column                   |310      |6 (6/0)      |3     |2   |
|685   |visualizing livestock             |130      |2 (1/1)      |5     |1   |
|1527  |volcanoes a1                      |3252     |3 (3/0)      |5     |51  |
|1528  |volcanoes a2                      |1623     |3 (3/0)      |5     |51  |
|1529  |volcanoes a3                      |1521     |3 (3/0)      |5     |47  |
|1530  |volcanoes a4                      |1515     |3 (3/0)      |5     |47  |
|1535  |volcanoes b5                      |9989     |3 (3/0)      |5     |369 |
|1538  |volcanoes d1                      |8753     |3 (3/0)      |5     |148 |
|1539  |volcanoes d2                      |9172     |3 (3/0)      |5     |155 |
|1540  |volcanoes d3                      |9285     |3 (3/0)      |5     |151 |
|1541  |volcanoes d4                      |8654     |3 (3/0)      |5     |146 |
|1497  |wall robot navigation             |5456     |24 (24/0)    |4     |7   |
|1526  |wall robot navigation             |5456     |4 (4/0)      |4     |7   |
|60    |waveform 5000                     |5000     |40 (40/0)    |3     |1   |
|1510  |wdbc                              |569      |30 (30/0)    |2     |2   |
|1511  |wholesale customers               |440      |8 (7/1)      |2     |2   |
|1570  |wilt                              |4839     |5 (5/0)      |2     |18  |
|187   |wine                              |178      |13 (13/0)    |3     |1   |
|40733 |yeast                             |1269     |8 (8/0)      |4     |3   |
|316   |yeast ml8                         |2417     |116 (103/13) |2     |70  |

</details>

## Technical Requirements

R version 3.4.3 -- "Kite-Eating Tree"

Packages: `caret`, `ECoL`, `e1071`, `foreign`, `kknn`, `randomForest`, `RWeka`, `ggplot2`

```r

# install the packages
install.packages(c("caret", "ECoL", "e1071", "foreign", "kknn", 
  "randomForest", "RWeka", "ggplot2"))


```

## Base-level

The base-level folder is in charge to extract the complexity measures from the [datasets](https://github.com/lpfgarcia/complex/tree/master/source/base/datasets). To extract the complexity measure and the classification performance over 10-fold cross-validation, execute the `run.r` script.

```r
cd source/base
R CMD BATCH run.r out.log

```

## Meta-level

The meta-level is in charge to generate the meta-dataset and run the meta-regressors. The database folder contains the `.RData` files with the complexity measures and the classification performance for each dataset. To extract the MtL performance you need to execute the `run.r` script.

```r
cd source/meta
R CMD BATCH run.r out.log

```

## Contact

Report at [project issues](https://github.com/lpfgarcia/complex/issues).

