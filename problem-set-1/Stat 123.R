# This is a comment. This is not a code.
# First window is called the source editor.
# The window below is called the console or the GUI (Graphical User Interface.)
# The 3rd window is for Environment, History and Connections.
# The 4th window saves your files, plots, visualizations, install packages, help is help.

# This a vector (array).
x <- c(1,3,1,2,6)
x
print (x)
# To run, press Ctrl + Enter.
# Subsetting
x[4] # The 4th element of x
x[1:3] # The 1st 3 elements of x 
x[0] # Index in R starts at 1
# Descriptive statistics 
# Measures of Location
mean(x) # The arithmetic mean of vector x.
y <- c(1.6,1.6,1.6,1.6,1.6)
mean(y)

median(x) # The middlemost value of vector x.



prod(x)^(1/5)
# Length is the number of elements in a vector.
prod(x)^(1/length(x))


# Measures of Variability
var(x) # Variance of x.
mad(x) # Mean Absolute Deviation of x.
sd(x)==sqrt(var(x))
max(x)-min(x) # Range of x.
sd(x)/mean(x) # Coefficient of variation of x.

quantile(x,0.50) # 50th percentile

boxplot(x)

temp <- c(78,79,80,80,82,83,85,86,87,87,88,88,90,92)
sales <- c(23,22,24,22,24,26,27,25,28,26,29,30,31,31)
# Scatter plot
plot(temp,sales,main="Scatter plot of Temperature and Sales in a Bottling Company",xlab="Temperature in Celsius", ylab="Sales in Dollars")

cov(temp,sales) # Covariance between Temperature and Sales
cor(temp,sales) # Correlation measures the linear association between 2 variables.
