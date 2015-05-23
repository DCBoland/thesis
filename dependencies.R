deps <- c("knitr","dplyr","tidyr","caret","RSQLite","changepoint","ggplot2","infotheo","likert","mvtnorm","polycor","likert","nlme","multcomp")
new.packages <- deps[!(deps %in% installed.packages()[,"Package"])]
if(length(new.packages)) {
	install.packages(new.packages, repos="http://cran.us.r-project.org")
}
