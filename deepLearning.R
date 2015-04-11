install.packages("h2o")
install.packages("ipre")
library(devtools)
library(h2o)


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

common_cols <- intersect(colnames(dfr1), colnames(dfr2))
trainingRose <- subset(n, select = common_cols)




dat_h2o <- as.h2o(localH2O, dat, key = 'dat')
localH2O = h2o.init(ip = "localhost", port = 54321, startH2O = TRUE, Xmx = '2g')
s <- proc.time()
model <- h2o.deeplearning(x = 1:374,  # column numbers for predictors
                   y = 375,   # column number for label
                   data = dat_h2o, # data in H2O format
                   activation = "RectifierWithDropout", # or 'Tanh'
                   input_dropout_ratio = 0.2, # % of inputs dropout
                   hidden_dropout_ratios = c(0.5,0.5), # % for nodes dropout
                   balance_classes = TRUE, 
                   hidden = c(800,800), # three layers of 50 nodes
                   epochs = 500) # max. no. of epochs
e <- proc.time()
d <- e - s
d
model