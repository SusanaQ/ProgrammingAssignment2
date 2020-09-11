## Susana Quinonez
##  Third Week Assingment
##  Date: Sept 11/2020
##  Description: Function makeCacheMatrix creates a 
##  special "matrix" object that can cache its inverse.
##--------------------------------------------------------
makeCacheMatrix  <- function(x = matrix()) {
  {
    ##originalMatrix <<- NULL;
    inverseMatrix  <<- NULL;  
  }
  
  set <- function() {
    originalMatrix <<- x;
    inverseMatrix  <<- NULL;
  }
  
  get <- function() {
    originalMatrix  <<- x;
    originalMatrix;
  }
  
  setInverseMatrix <- function(inverse) {
    inverseMatrix <<- inverse;
  }
  
  getInverseMatrix <- function() {
    inverseMatrix;
  }
  
  list(set = set, 
       get = get,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix);
  
}  ## end function 
##-----------------------------------------
## Function cacheSolve()
## Computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse 
## has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
##--------------------------------------------------------
cacheSolve  <- function(x,...) {
  {
    matrix_aux    <- x$get();
  }
  
  inverse =  x$getInverseMatrix();
  
  if (!is.null(inverse)) {
    print("Getting the existing inverse matrix:");
    inverse;
  }  
  else
  {
    print("Matrix inverse doesnt exist: Calculating..");
    inverse <- solve(matrix_aux,...);
    x$setInverseMatrix(inverse);
  }  
  return(inverse);
}  ## end function cacheSolve 