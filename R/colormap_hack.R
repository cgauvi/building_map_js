
base <- 10

vals <- sapply(seq(0,8), function(x) 1+ (x/8)*(10000-1)) %>% log(base=base)
cols_init <- c(
  '#F2F12D',
  '#EED322',
  '#E6B71E',
  '#DA9C20',
  '#CA8323',
  '#B86B25',
  '#A25626',
  '#8B4225',
  '#723122'
)
cols <- cols_init

cat(paste(vals, paste0("'", cols, "'"), sep=',\n', collapse = ',\n'))
cat(paste0("<div><span style='background-color:", cols, "'></span>" , base**vals, "</div>", collapse = '\n') )



# ----



base <- 10
thresh <- c(1,1000,3000,50000)

vals1 <- sapply(seq(0,2), function(x) thresh[1] + (x/3)*(thresh[2] -thresh[1] )) %>% log(base=base)
cols1 <- cols_init[1:3]

vals2 <- sapply(seq(1,3), function(x) thresh[2] + (x/3)*(thresh[3]-thresh[2])) %>% log(base=base)
cols2 <- cols_init[4:6]


vals3 <- sapply(seq(1,3), function(x) thresh[3]+ (x/3)*(thresh[4]-thresh[3])) %>% log(base=base)
cols3 <-  cols_init[7:9]


vals <- c(vals1,vals2,vals3)
cols <- c(cols1,cols2,cols3)

cat(paste(vals, paste0("'", cols), sep=',\n', collapse = ',\n'))
cat(paste0("<div><span style='background-color:", paste0(cols, "'"), "></span>" , base**vals, "</div>", collapse = '\n') )
