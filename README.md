### Introduction

This is the second protramming assignment of the coursera course 
r-programming.
The task is to write a matrix "object" that is able to cache the 
result of the calculation of its inverse.
In order to solve this task, we make use of the operator  `<<-` 
which can be used to assign a value to an object in an environment 
that is different from the current environment. 


The matrix "object" is represented by a list of 4 "methods" (which are, 
in reality, items in the list). 
The task is solved used by writing two functions with names given by the 
author of the course:  
    1. `makeCacheMatrix`: returns a matrix that contains the list
    1. `cacheSolve`: allows to calculate and cache the inverse 
        (in case the cache value is NULL) or retrieve the inverse 
        (in case the cache value is not NULL)
The four "methods" defined in the function `makeCacheMatrix` are:
    1. set: a method to initialize the matrix
    1. get: a method that returns the matrix
    1. setinverse: a method that allows to manually override the calculation of the 
        inverse
    1. getinverse: a method that retrieves the cached inverse 

The function `cacheSolve` provides the means of calculating the inverse 
(if the cached value is not NULL). If the cached value of the inverse is not NULL,
`cacheSolve` will simply retrieve the cached value.


