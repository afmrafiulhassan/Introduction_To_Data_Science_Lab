#                         R Data Structures

#vectors
#matrices
#arrays
#data frame
#factors
#lists



#   vector (single data type)
# One dimentional array


a<- c(1,3,5,7,6,-2,4,6)
b<- c("one","two","three")
c<- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)

print(a)
print(b)
print(c)
print(sum(a))
min(a)
max(a)
mean(a)
mode(a)


name<- c("Hello World!")
nchar(name)

name<- c("Hello", "World!")
nchar(name)


#   vector sort in increasing order

X<- c(20,10,40,30)
sort(X)



#   vector sort in decreasing order

X<- c("B","D","C","A")
sort(X)
sort(X, decreasing = TRUE)




#   Access Vector

X<- c(20,10,40,30)
X[1]
X[3]

#consicutive function

X<- c(20,10,40,30)
X[1:4]

#with combine function

X<- c(20,10,40,30)
X[c(1,3)]








#             Matrices

#Two dimentional array
#Each element has the same mode(numeric, character, or logical)



mymatrix<- matrix(1:20, nrow = 5, ncol=4)
mymatrix




mymatrix<- matrix(1:20, nrow = 5, ncol=4, byrow=TRUE)
mymatrix




cells<- c(1:4)
rnames<- c("R1","R2","R3","R4","R5")
cnames<- c("C1","C2","C3","C4")
mymatrix<- matrix(1:20, nrow = 5, ncol=4, byrow=TRUE, dimnames = list(rnames,cnames))
mymatrix


mymatrix[2,]
mymatrix[,3]

mymatrix[1,3]


mymatrix[1,c(2,3)]
mymatrix[,c(2:3)]
mymatrix[,c(2,4)]




#           Array

# similar to matrices
#can have more than two dimentions
# myarray <- array(vector, dimentions, dimnames)

myarray <- array(1:24,c(2,3,2))
myarray

myarray[1,2,1]





#                Data Frames

#can contains different modes of data(numeric,character,etc....)
#similar to dataset





patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type2")
status <- c("Poor","Improved","Excellent","Poor")


patientdata <- data.frame(patientID, age, diabetes, status)
patientdata