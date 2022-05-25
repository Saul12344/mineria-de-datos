<p align="center">
    <img alt="Logo" src="https://www.tijuana.tecnm.mx/wp-content/uploads/2021/08/liston-de-logos-oficiales-educacion-tecnm-FEB-2021.jpg" width=850 height=250>
</p>
<H2><p align="center">Unit#3 branch. Data mining.</p></H2>
<H2><p align="Center">STUDENT'S NAMES: </p></H2>

<H2><p align="Center">López Higuera Saúl Alfredo #18210493</p></H2>
<H2><p align="Center">Munguia Silva Edgar Geovanny #17212344</p></H2>
## Evaluative practice#3

## Code
~~~
## Install necessary libraries.

install.packages ("e1071")
library(e1071)
library(caTools)
library(ElemStatLearn)


## Load the CSV file

csvdata = read.csv(file.choose())

## Define what columns to use
csvdata = csvdata[3:5]
csvdata

## Get "purchased" column from the data

csvdata$Purchased=factor(csvdata$Purchased, levels = c(0,1))


## Using caTools library
set.seed(123)
split <- sample.split(csvdata$Purchased, SplitRatio = 0.75)
training_set <- subset(csvdata, split == TRUE)
test_set <- subset(csvdata, split == FALSE)
training_set[-3]=scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

##Using e1071 library

classifier = naiveBayes(formula = Purchased ~ .,
                        data=training_set,
                        type='c-classification',
                        kernel = 'linear')
naiveBayes


## Predictions 

y_pred=predict(classifier, newdata = test_set[-3])
y_pred


## Creating confusion matrix
cm = table(test_set[, 3], y_pred)
cm

## Visualizing the training set results (using ElemStatLearn library)

set=training_set
x1=seq(min(set[, 1]) - 1, max(set[, 1]) +1, by =0.01)
x2=seq(min(set[, 2]) - 1, max(set[, 2]) +1, by =0.01)
grid_set=expand.grid(x1,x2)
colnames(grid_set)=c('Age', 'Estimated salary')
y_grid=predict(classifier,newdata=grid_set)
plot(set[, -3],
     main='Naive Bayes (Training set)',
     xlab = 'Age', ylab = 'Estimated salary',
     xlim = range(x1), ylim=range(x2))
contour(x1, x2, matrix(as.numeric(y_grid), length(x1), length(x2)), add=TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

## Visualizing the test set results (using ElemStatLearn library)

set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier,newdata = grid_set)
plot(set[, -3], main = 'Naive Bayes (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
~~~
