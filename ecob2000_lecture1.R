#I think it's interesting that the average age (both for males and females) of respondents was in their mid 50s. With increased skeptism surrounding COVID and government agencies, I'm surprised the average age was of an older generation.
#I found the difference between those vaccinated and those not to be interestingly large; As the gap within US is about 15% (and the data shows 11.5%). Although, I am curious when this dataset was created and who conducted the survey. I think those factors would impact the audience participating as well as acknowledge accessibility issues.

#1 Adeel Arshid and Ksenia Guseinova

R version 4.1.3 (2022-03-10) -- "One Push-Up"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> load("/Users/cassidydrummond/Downloads/Household_Pulse_data.RData")
> getwd()
[1] "/Users/cassidydrummond/Desktop/CCNY/ECONOMETRICS"
> getwd()
[1] "/Users/cassidydrummond/Desktop/CCNY/ECONOMETRICS"
> setwd"R/ecob2000_lecture1"
Error: unexpected string constant in "setwd"R/ecob2000_lecture1""
> setwd"R/ecob2000_lecture1.Rproj"
Error: unexpected string constant in "setwd"R/ecob2000_lecture1.Rproj""
> load("Household_Pulse_data.RData")
> #glimpse(acs2017_ny) try this later
  > Household_Pulse_data[1:10,1:7]
RHISPANIC RRACE      EEDUC      MS EGENID_BIRTH GENID_DESCRIBE
1  Not Hispanic White   bach deg      NA       female         female
2  Not Hispanic White HS diploma married       female         female
3  Not Hispanic White   bach deg widowed       female         female
4  Not Hispanic White    adv deg   never       female         female
5  Not Hispanic Black  some coll   never       female         female
6      Hispanic White   bach deg   never       female         female
7  Not Hispanic White    adv deg widowed       female         female
8  Not Hispanic White  some coll widowed       female         female
9  Not Hispanic White  assoc deg married       female         female
10 Not Hispanic White    adv deg married       female         female
SEXUAL_ORIENTATION
1            straight
2            straight
3            straight
4            straight
5            straight
6            straight
7            straight
8            straight
9            straight
10           straight
> attach(Household_Pulse_data)
> 
  > summary(Household_Pulse_data)
RHISPANIC       RRACE                EEDUC               MS       
Not Hispanic:62660   White:56938   less than hs:  411   NA       :  881  
Hispanic    : 6454   Black: 5412   some hs     :  936   married  :40036  
Asian: 3561   HS diploma  : 7857   widowed  : 3872  
Other: 3203   some coll   :14596   divorced :10310  
assoc deg   : 7508   separated: 1214  
bach deg    :20075   never    :12801  
adv deg     :17731                    
EGENID_BIRTH       GENID_DESCRIBE       SEXUAL_ORIENTATION
male  :27592   NA         : 1131   NA            : 1506   
female:41522   male       :26796   gay or lesbian: 2343   
female     :40263   straight      :61238   
transgender:  202   bisexual      : 2288   
other      :  722   something else:  871   
dont know     :  868   

KIDS_LT5Y                         KIDS_5_11Y   
NA                        :62342   NA                       :58467  
Yes children under 5 in HH: 6772   Yes children 5 - 11 in HH:10647  





KIDS_12_17Y   
NA                        :58046  
Yes children 12 - 17 in HH:11068  





ENROLLNONE                  RECVDVACC    
NA                                :64285   NA                 :  851  
children not in any type of school: 4829   yes got vaxx       :60326  
no did not get vaxx: 7937  




DOSESRV                          GETVACRV    
NA                       : 9105   NA                      :61159  
yes got all doses        :57762   definitely will get vaxx:  609  
yes plan to get all doses: 1993   probably will get vaxx  :  731  
no will not get all doses:  254   unsure about vaxx       : 1584  
probably not            : 1599  
definitely not          : 3432  

KIDDOSES    
NA                                :58318  
Yes kids got or will get all doses: 7135  
no kids did not or will not       : 3661  




KIDGETVAC                          HADCOVID    
NA                      :65384   NA                       : 1363  
definitely will get vaxx:  487   yes doctor told had covid: 9122  
probably will get vaxx  :  439   no did not               :58221  
unsure about vaxx       :  736   not sure                 :  408  
probably not            :  593                                    
definitely not          : 1036                                    
dont know yet           :  439                                    
WRKLOSSRV                              ANYWORK     
NA                    : 1961   NA                           : 2135  
yes recent HH job loss: 8058   yes employment in last 7 days:39237  
no recent HH job loss :59095   no employment in last 7 days :27742  




KINDWORK                RSNNOWRKRV   
NA                 :30540   NA              :42659  
work for govt      : 6378   retired         :15024  
work for private co:21370   other           : 4027  
work for nonprofit : 5055   sick or disabled: 1451  
self employed      : 4966   caring for kids : 1329  
work in family biz :  805   laid off        : 1164  
(Other)         : 3460  
CHLDCARE    
NA                                       :58419  
yes impacts to childcare because pandemic: 2566  
no                                       : 8129  




CURFOODSUF   
NA                            : 6770  
had enough food               :49234  
had enough but not what wanted: 9947  
sometimes not enough food     : 2486  
often not enough food         :  677  


CHILDFOOD    
NA                                                 :64258  
often kids not eating enough because couldnt afford:  271  
sometimes kids not eating enough                   : 1191  
kids got enough food                               : 3394  



ANXIOUS     
NA                                             : 7946  
no anxiety over past 2 wks                     :26611  
several days anxiety over past 2 wks           :19794  
more than half the days anxiety over past 2 wks: 6140  
nearly every day anxiety                       : 8623  


WORRY      
NA                                             : 8016  
no worry over past 2 wks                       :31876  
several days worried over past 2 wks           :17936  
more than half the days worried over past 2 wks: 4979  
nearly every day worry                         : 6307  


TENURE     
NA                           :11103  
housing owned free and clear :16738  
housing owned with mortgage  :28016  
housing rented               :12579  
housing occupied without rent:  678  


LIVQTRRV                RENTCUR     
live in detached 1 family          :41348   NA             :56572  
NA                                 :11336   current on rent:11239  
live in bldg w 5+ apts             : 6731   behind on rent : 1303  
live in 1 family attached to others: 4628                          
live in mobile home                : 1781                          
live in building with 3-4 apts     : 1737                          
(Other)                            : 1553                          
MORTCUR     
NA                 :41200  
current on mortgage:26462  
behind on mortgage : 1452  




EVICT      
NA                                        :67859  
very likely evicted in next 2 months      :  207  
somewhat likely evicted in next 2 months  :  377  
not very likely evicted in next 2 months  :  345  
not at all likely evicted in next 2 months:  326  


FORCLOSE               EST_ST     
NA                                        :67695   California   : 5359  
very likely forclosed in next 2 months    :   65   Texas        : 3766  
somewhat likely forclosed in next 2 months:  218   Florida      : 2728  
not very likely forclosed in next 2 months:  474   Washington   : 2634  
not at all forclosed in next 2 months     :  662   Massachusetts: 1965  
Oregon       : 1934  
(Other)      :50728  
PRIVHLTH                      PUBHLTH     
has private health ins:46869   has public health ins:23346  
no private health ins :11275   no public health ins :33381  
NA                    :10970   NA                   :12387  




REGION                        INCOME       TBIRTH_YEAR  
Northeast:10478   NA                   :14637   Min.   :1933  
South    :22680   HH income $100k - 149:10117   1st Qu.:1955  
Midwest  :13651   HH income $50k - 74.9: 9330   Median :1967  
West     :22305   HH income $75 - 99.9 : 7830   Mean   :1968  
HH income $200k +    : 6117   3rd Qu.:1981  
HH income $35k - 49.9: 5805   Max.   :2003  
(Other)              :15278                 
Num_kids_Pub_School Num_kids_Priv_School Num_kids_homeschool
Min.   :0.00        Min.   :0.00         Min.   :0.00       
1st Qu.:1.00        1st Qu.:0.00         1st Qu.:0.00       
Median :2.00        Median :1.00         Median :1.00       
Mean   :1.71        Mean   :1.03         Mean   :0.87       
3rd Qu.:2.00        3rd Qu.:2.00         3rd Qu.:2.00       
Max.   :4.00        Max.   :2.00         Max.   :2.00       
NA's   :55108       NA's   :66430        NA's   :67421      
        Works_onsite            works_remote            Shop_in_store  
 NA           : 6350   NA             : 8022   NA              : 6873  
 worked onsite:34918   worked remotely:22863   shopped in store:53576  
 no           :27846   no             :38229   no              : 8665  
                                                                       
                                                                       
                                                                       
                                                                       
                 eat_in_restaurant
 NA                       : 7217  
 eat at restaurant indoors:32405  
 no                       :29492  
                                  
                                  
                                  
                                  
> 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1933    1956    1968    1969    1981    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1933    1953    1965    1967    1980    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "transgender"])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1933    1975    1988    1983    1995    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "other"])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1933    1959    1973    1973    1988    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "NA"])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1933    1952    1962    1964    1977    2003 
> mean(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
[1] 1968.666
> sd(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
[1] 15.45378
> mean(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
[1] 1966.549
> 
> sd(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
[1] 16.29105
> hist(TBIRTH_YEAR[(TBIRTH_YEAR < 1950)])
> mean(TBIRTH_YEAR[ (GENID_DESCRIBE == "female") & (TBIRTH_YEAR > 1933) ]) 
[1] 1968.792
> summary(EEDUC)
less than hs      some hs   HS diploma    some coll 
         411          936         7857        14596 
   assoc deg     bach deg      adv deg 
        7508        20075        17731 
> 
> install.packages("tidyverse")
trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/tidyverse_1.3.2.tgz'
Content type 'application/x-gzip' length 420934 bytes (411 KB)
==================================================
downloaded 411 KB


The downloaded binary packages are in
	/var/folders/1g/1swvwwv97qj70c_08pw6h3jw0000gn/T//Rtmpt8mtwr/downloaded_packages
> install.packages("plyr")
trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/plyr_1.8.7.tgz'
Content type 'application/x-gzip' length 1016408 bytes (992 KB)
==================================================
downloaded 992 KB


The downloaded binary packages are in
	/var/folders/1g/1swvwwv97qj70c_08pw6h3jw0000gn/T//Rtmpt8mtwr/downloaded_packages
> library(tidyverse)
── Attaching packages ────────────────────── tidyverse 1.3.2 ──
✓ ggplot2 3.3.5     ✓ purrr   0.3.4
✓ tibble  3.1.6     ✓ dplyr   1.0.8
✓ tidyr   1.2.0     ✓ stringr 1.4.0
✓ readr   2.1.2     ✓ forcats 0.5.1
── Conflicts ───────────────────────── tidyverse_conflicts() ──
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
> library(plyr)
-------------------------------------------------------------
You have loaded plyr after dplyr - this is likely to cause problems.
If you need functions from both plyr and dplyr, please load plyr first, then dplyr:
library(plyr); library(dplyr)
-------------------------------------------------------------

Attaching package: ‘plyr’

The following objects are masked from ‘package:dplyr’:

    arrange, count, desc, failwith, id, mutate, rename,
    summarise, summarize

The following object is masked from ‘package:purrr’:

    compact

> summary(EST_ST)
             Alabama               Alaska              Arizona 
                 918                 1232                 1744 
            Arkansas           California             Colorado 
                 917                 5359                 1667 
         Connecticut             Delaware District of Columbia 
                1229                  892                  761 
             Florida              Georgia               Hawaii 
                2728                 1655                  812 
               Idaho             Illinois              Indiana 
                1245                 1387                 1247 
                Iowa               Kansas             Kentucky 
                 995                 1315                  938 
           Louisiana                Maine             Maryland 
                 895                  606                 1605 
       Massachusetts             Michigan            Minnesota 
                1965                 1753                 1488 
         Mississippi             Missouri              Montana 
                 658                 1229                  695 
            Nebraska               Nevada        New Hampshire 
                 997                 1200                  970 
          New Jersey           New Mexico             New York 
                1391                 1373                 1292 
      North Carolina         North Dakota                 Ohio 
                1310                  449                 1030 
            Oklahoma               Oregon         Pennsylvania 
                 969                 1934                 1727 
        Rhode Island       South Carolina         South Dakota 
                 634                 1042                  628 
           Tennessee                Texas                 Utah 
                1206                 3766                 1862 
             Vermont             Virginia           Washington 
                 664                 1740                 2634 
       West Virginia            Wisconsin              Wyoming 
                 680                 1133                  548 
> summary(INCOME)
                      NA HH income less than $25k 
                   14637                     5698 
 HH income $25k - $34.9k    HH income $35k - 49.9 
                    4600                     5805 
   HH income $50k - 74.9     HH income $75 - 99.9 
                    9330                     7830 
   HH income $100k - 149     HH income $150 - 199 
                   10117                     4980 
       HH income $200k + 
                    6117 
> ddply(Household_Pulse_data, .(EST_ST), summarize, mean = round(mean(2021 - TBIRTH_YEAR), 2), sd = round(sd(2021 - TBIRTH_YEAR), 2), n_obsv = length(EST_ST))
                 EST_ST  mean    sd n_obsv
1               Alabama 52.93 16.24    918
2                Alaska 51.21 15.92   1232
3               Arizona 54.70 16.09   1744
4              Arkansas 52.31 15.76    917
5            California 52.94 15.92   5359
6              Colorado 52.31 15.93   1667
7           Connecticut 53.95 15.87   1229
8              Delaware 55.45 15.64    892
9  District of Columbia 53.85 15.24    761
10              Florida 56.24 15.93   2728
11              Georgia 53.19 15.32   1655
12               Hawaii 54.28 16.45    812
13                Idaho 52.78 16.22   1245
14             Illinois 52.11 16.26   1387
15              Indiana 52.08 15.58   1247
16                 Iowa 53.83 15.63    995
17               Kansas 51.33 16.27   1315
18             Kentucky 53.57 15.51    938
19            Louisiana 51.96 15.24    895
20                Maine 54.61 15.26    606
21             Maryland 53.18 15.72   1605
22        Massachusetts 54.11 15.73   1965
23             Michigan 54.72 15.70   1753
24            Minnesota 51.35 16.04   1488
25          Mississippi 52.76 15.54    658
26             Missouri 53.84 16.11   1229
27              Montana 53.70 15.58    695
28             Nebraska 52.14 16.12    997
29               Nevada 53.86 15.86   1200
30        New Hampshire 56.08 15.38    970
31           New Jersey 54.14 15.14   1391
32           New Mexico 55.23 15.63   1373
33             New York 51.73 16.23   1292
34       North Carolina 53.27 15.74   1310
35         North Dakota 52.04 15.64    449
36                 Ohio 53.65 15.56   1030
37             Oklahoma 53.31 15.54    969
38               Oregon 51.47 16.14   1934
39         Pennsylvania 52.43 16.26   1727
40         Rhode Island 54.18 15.36    634
41       South Carolina 55.14 16.05   1042
42         South Dakota 52.69 15.84    628
43            Tennessee 51.85 16.51   1206
44                Texas 52.15 16.05   3766
45                 Utah 47.97 16.20   1862
46              Vermont 56.61 15.13    664
47             Virginia 53.37 15.22   1740
48           Washington 53.06 15.75   2634
49        West Virginia 54.32 15.48    680
50            Wisconsin 52.40 15.95   1133
51              Wyoming 54.62 15.03    548
> ddply(Household_Pulse_data, .(EST_ST), summarize, age90th = quantile((2021 - TBIRTH_YEAR),probs = 0.9), age10th = quantile((2021 - TBIRTH_YEAR),probs = 0.1), n_obs = length(TBIRTH_YEAR))
                 EST_ST age90th age10th n_obs
1               Alabama    74.0    30.0   918
2                Alaska    71.0    30.0  1232
3               Arizona    75.0    32.0  1744
4              Arkansas    73.0    31.0   917
5            California    74.0    31.0  5359
6              Colorado    73.0    31.0  1667
7           Connecticut    74.0    32.0  1229
8              Delaware    74.9    33.0   892
9  District of Columbia    74.0    34.0   761
10              Florida    76.0    34.0  2728
11              Georgia    74.0    32.0  1655
12               Hawaii    74.0    31.0   812
13                Idaho    75.0    31.0  1245
14             Illinois    73.0    30.0  1387
15              Indiana    72.0    31.0  1247
16                 Iowa    73.0    33.0   995
17               Kansas    72.0    29.0  1315
18             Kentucky    72.3    32.0   938
19            Louisiana    72.0    31.0   895
20                Maine    73.0    32.5   606
21             Maryland    74.0    32.4  1605
22        Massachusetts    74.0    32.0  1965
23             Michigan    74.0    33.0  1753
24            Minnesota    72.0    30.0  1488
25          Mississippi    73.0    32.0   658
26             Missouri    75.0    32.0  1229
27              Montana    74.0    32.0   695
28             Nebraska    74.0    31.0   997
29               Nevada    74.0    32.0  1200
30        New Hampshire    75.0    33.9   970
31           New Jersey    73.0    34.0  1391
32           New Mexico    74.0    33.0  1373
33             New York    73.0    30.0  1292
34       North Carolina    73.0    32.0  1310
35         North Dakota    71.0    32.0   449
36                 Ohio    73.0    32.0  1030
37             Oklahoma    73.0    33.0   969
38               Oregon    73.0    30.0  1934
39         Pennsylvania    73.0    31.0  1727
40         Rhode Island    73.0    33.0   634
41       South Carolina    75.0    32.0  1042
42         South Dakota    72.0    32.0   628
43            Tennessee    73.0    29.0  1206
44                Texas    73.0    30.0  3766
45                 Utah    71.0    28.0  1862
46              Vermont    74.7    36.0   664
47             Virginia    73.0    33.0  1740
48           Washington    74.0    32.0  2634
49        West Virginia    72.1    32.0   680
50            Wisconsin    73.0    31.0  1133
51              Wyoming    73.0    35.0   548
> table(EEDUC,GENID_DESCRIBE)
              GENID_DESCRIBE
EEDUC             NA  male female transgender other
  less than hs    14   158    204          11    24
  some hs         25   379    505           7    20
  HS diploma     154  2844   4734          28    97
  some coll      207  5569   8607          53   160
  assoc deg      124  2447   4835          15    87
  bach deg       319  8143  11401          46   166
  adv deg        288  7256   9977          42   168
> xtabs(~EEDUC + GENID_DESCRIBE)
              GENID_DESCRIBE
EEDUC             NA  male female transgender other
  less than hs    14   158    204          11    24
  some hs         25   379    505           7    20
  HS diploma     154  2844   4734          28    97
  some coll      207  5569   8607          53   160
  assoc deg      124  2447   4835          15    87
  bach deg       319  8143  11401          46   166
  adv deg        288  7256   9977          42   168
> prop.table(table(EEDUC,GENID_DESCRIBE))
              GENID_DESCRIBE
EEDUC                    NA         male       female
  less than hs 0.0002025639 0.0022860781 0.0029516451
  some hs      0.0003617212 0.0054836936 0.0073067685
  HS diploma   0.0022282027 0.0411494053 0.0684955291
  some coll    0.0029950517 0.0805770177 0.1245333796
  assoc deg    0.0017941372 0.0354052724 0.0699568828
  bach deg     0.0046155627 0.1178198339 0.1649593425
  adv deg      0.0041670284 0.1049859652 0.1443557022
              GENID_DESCRIBE
EEDUC           transgender        other
  less than hs 0.0001591573 0.0003472524
  some hs      0.0001012819 0.0002893770
  HS diploma   0.0004051278 0.0014034783
  some coll    0.0007668490 0.0023150158
  assoc deg    0.0002170327 0.0012587898
  bach deg     0.0006655670 0.0024018289
  adv deg      0.0006076916 0.0024307666
> mean(TBIRTH_YEAR[(REGION == "Northeast")])
[1] 1967.101
> # alternatively
> restrict1 <- as.logical((REGION == "Northeast"))
> dat_northeast <- subset(Household_Pulse_data, restrict1)
> 
> detach()
> attach(dat_northeast)
The following objects are masked from Household_Pulse_data:

    ANXIOUS, ANYWORK, CHILDFOOD, CHLDCARE, CURFOODSUF,
    DOSESRV, eat_in_restaurant, EEDUC, EGENID_BIRTH,
    ENROLLNONE, EST_ST, EVICT, FORCLOSE,
    GENID_DESCRIBE, GETVACRV, HADCOVID, INCOME,
    KIDDOSES, KIDGETVAC, KIDS_12_17Y, KIDS_5_11Y,
    KIDS_LT5Y, KINDWORK, LIVQTRRV, MORTCUR, MS,
    Num_kids_homeschool, Num_kids_Priv_School,
    Num_kids_Pub_School, PRIVHLTH, PUBHLTH, RECVDVACC,
    REGION, RENTCUR, RHISPANIC, RRACE, RSNNOWRKRV,
    SEXUAL_ORIENTATION, Shop_in_store, TBIRTH_YEAR,
    TENURE, Works_onsite, works_remote, WORRY,
    WRKLOSSRV

> 
> mean(TBIRTH_YEAR)
[1] 1967.101
> detach()

