n <- train

n <- concat.split.expanded(n, "NVCat", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat1", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat2", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat3", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat4", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat5", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat6", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat7", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat8", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat9", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat10", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat11", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat12", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Model", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Make", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "CalendarYear", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "ModelYear", "-", type = "character", 
                           fill = 0, drop = TRUE)
n$RowID<-NULL
n$Make<-NULL
n$ModelYear<-NULL
n$CalendarYear<-NULL
n$Cat1<-NULL
n$Cat2<-NULL
n$Cat3<-NULL
n$Cat4<-NULL
n$Cat5<-NULL
n$Cat6<-NULL
n$Cat7<-NULL
n$Cat8<-NULL
n$Cat9<-NULL
n$Cat10<-NULL
n$Cat11<-NULL
n$Cat12<-NULL
n$NVCat<-NULL
n$class<-0
n$class<-n$Claim
n$Claim<-NULL

a <- n[1:ncol(n)-1]
trainLabels <- as.factor(n$class)

n <- tesing

n <- concat.split.expanded(n, "NVCat", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat1", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat2", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat3", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat4", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat5", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat6", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat7", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat8", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat9", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat10", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat11", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Cat12", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Model", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "Make", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "CalendarYear", "-", type = "character", 
                           fill = 0, drop = TRUE)
n <- concat.split.expanded(n, "ModelYear", "-", type = "character", 
                           fill = 0, drop = TRUE)
n$RowID<-NULL
n$Make<-NULL
n$ModelYear<-NULL
n$CalendarYear<-NULL
n$Cat1<-NULL
n$Cat2<-NULL
n$Cat3<-NULL
n$Cat4<-NULL
n$Cat5<-NULL
n$Cat6<-NULL
n$Cat7<-NULL
n$Cat8<-NULL
n$Cat9<-NULL
n$Cat10<-NULL
n$Cat11<-NULL
n$Cat12<-NULL
n$NVCat<-NULL
n$class<-0
n$class<-n$Claim
n$Claim<-NULL

b <- n[1:ncol(n)-1]
testLabels <- as.factor(n$class)

common_cols <- intersect(colnames(a), colnames(b))
trainingRose <- subset(a, select = common_cols)
testingRose <- subset(b, select = common_cols)

