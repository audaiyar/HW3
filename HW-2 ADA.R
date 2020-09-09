#Q1
The downloaded binary packages are in
/var/folders/4d/rl6k61yn2jbbnvtq6t9h1bh40000gn/T//RtmpyWJH6t/downloaded_packages
> library(foreign)
> library(haven)
> library(readr)

##Q2
dim(C1survey)
#[1] 32 27
summary(C1survey)



##'data.frame':	32 obs. of  27 variables:


> 
###Q3 Rename the column variables to something shorter and that is descriptive of
#what the variable is about (for example like_dogs for the ‘Do you like dogs?’
#question variable) and b. Display that they are renamed.
colnames(C1survey)
names(C1survey)[1:27]<-c("id","likecats","likedogs","desert_island_item","life_slogan",
                      "fav_day.wk","Lark.owl.humm","fav_food","fav-drk","fav_season",
                      "fav_mnth","hobby","degree","specialization","prim.software",
                      "level R","coding_comfort","duration coding","three_thingslearn this class"
                      ,"public area of interest","fav_num","Bday","Birthmnth","hme_country",
                      "hme_state","hme_city","highest_education")
colnames(C1survey)
## [1] "id"                           "likecats"                     "likedogs"                    
[4] "desert_island_item"           "life_slogan"                  "fav_day.wk"                  
[7] "Lark.owl.humm"                "fav_food"                     "fav-drk"                     
[10] "fav_season"                   "fav_mnth"                     "hobby"                       
[13] "degree"                       "specialization"               "prim.software"               
[16] "level R"                      "coding_comfort"               "duration coding"             
[19] "three_thingslearn this class" "public area of interest"      "fav_num"                     
[22] "Bday"                         "Birthmnth"                    "hme_country"                 
[25] "hme_state"                    "hme_city"                     "highest_education"           
[28] "Bday_new"                     "Birthmnth_new"                "bseason"  

##Q4
summary(C1survey)
table(sapply(C1survey,class))
##character   integer   numeric 
23         4         3 
##Q5a,b,c
Summary(C1survey$Bday)
##Length     Class      Mode 
#32 character character 
C1survey$Bday_new<-as.numeric(C1survey$Bday)
class(C1survey$Bday_new)
C1survey$Birthmnth_new<-as.numeric(C1survey$Birthmnth)
class(C1survey$Birthmnth_new)
##[1] "numeric"
median(C1survey$Bday_new, na.rm=TRUE)
##[1] 17
median(C1survey$Birthmnth_new, na.rm=TRUE)
##[1] 8.5
summary(C1survey$Bday,na.rm=TRUE)

###Q6 a,b,c.
C1survey$bseason[C1survey$Birthmnth_new==12| C1survey$Birthmnth_new==1|
                   C1survey$Birthmnth_new==2]="Winter"
C1survey$bseason[C1survey$Birthmnth==3|
C1survey$Birthmnth_new==4|
  C1survey$Birthmnth_new==5]="Spring"
C1survey$bseason[C1survey$Birthmnth_new==6|
C1survey$Birthmnth_new==7|
C1survey$Birthmnth_new==8]="Summer"
C1survey$bseason[C1survey$Birthmnth_new==9|
C1survey$Birthmnth_new==10|
C1survey$Birthmnth_new==11]="Fall"


table(C1survey$Birthmnth_new,C1survey$bseason)
Fall Spring Summer Winter Sum
1      0      0      0      1   1
3      0      2      0      0   2
4      0      1      0      0   1
5      0      3      0      0   3
6      0      0      3      0   3
7      0      0      2      0   2
8      0      0      2      0   2
9      4      0      0      0   4
10     4      0      0      0   4
11     2      0      0      0   2
12     0      0      0      4   4
Sum   10      6      7      5  28
x <-table(C1survey$Birthmnth_new,C1survey$bseason) 
addmargins(x)
#10 -fall
#6-Spring
#7-Summer
#5-Winter

##Q7

summary(C1survey$coding_comfort)

What is mean coding comfort?##2.906
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1.000   2.000   3.000   2.906   4.000   5.000 



