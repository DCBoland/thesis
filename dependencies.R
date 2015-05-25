deps <- c("knitr","dplyr","tidyr","caret","RSQLite","changepoint","ggplot2","infotheo","likert","mvtnorm","polycor","nlme","multcomp","survival")
# If future package changes break something, use install_version to get the versions I used
vers <- c("1.9","0.41","0.2.0","6.0-41","1.0.0","1.1.5","1.0.1","1.2.0","1.2","1.0-2","0.7-8","3.1-120","1.4-0","2.38-1")
new.packages <- deps[!(deps %in% installed.packages()[,"Package"])]
if(length(new.packages)) {
	install.packages(new.packages, repos="http://cran.us.r-project.org",lib="~/R/library")
}
