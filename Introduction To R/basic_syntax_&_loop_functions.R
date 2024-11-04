#switch (expresion, case1, case2, case3.....)

switch(3,"red","green","blue")

switch("length","color"="red","shape"="square", "length=5")



#While loop(cond)

i<-1
while (i < 6 ){
  print(i)
  i<-i+1
}


#break statement in while loop

i<-1
while (i < 6 ){
  print(i)
  i<-i+1
  if(i==4){
    break
  }
}

i<-0
while (i < 6 ){
  i<-i+1
  if(i==4){
    break
  }
  print(i)
}

#Continue statement in while loop

i<-0
while (i < 6 ){
  i<-i+1
  if(i==4){
    next
  }
  print(i)
}


#for loop statement
#for(var in seq)


for(x in 1:10){
  print(x)
}

for(x in 1:10){
  x=x+1
  print(x)
}


#for loop(nested)

for (x in 1:2){
  for (y in 1:3){
    print(x*y)
  }
}


#Function keyword
#myfunction <- function(arg1, arg2,....){
#  statements
#  return(object)
# }


add_numbers<- function(a,b){
  sum<- a+b
  return(sum)
}
print(add_numbers(5,5))
