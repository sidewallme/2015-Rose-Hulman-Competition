

n <- test
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