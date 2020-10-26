## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix() is that it builds a set of functions and returns the functions within a list to the parent environment. 


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL                              # 1- initialize objects x and inv
  set <- function(y){                      # 2- define the set function.   
    x <<- y                                # 3- Assign the input argument to the x object in the parent environment
    inv <<- NULL                           # 4- Assign the value of NULL to the inv object in the parent environment. 
  }
  get <- function() {x}                    # 5- define the get function.
  setInversa <- function(inversa) inv <<- inversa         # 6- defines the setter for the inversa inv.
  getInversa <- function() inv                            # 7- defines the getter for the inversa inv.
  
  list(set = set,                          # 8- assigns each of these functions as an element within a list
       get = get, 
       setInversa = setInversa,
       getInversa = getInversa)  

}


## Write a short comment describing this function
# cacheSolve () calculates and / or retrieves the inverse of an object of type makeCacheMatrix ()


cacheSolve <- function(x, ...) {
  inv <- x$getInversa()               # 1- calls the getInversa() function on the input object
  if(!is.null(inv)){                  # 2- checks to see whether the result is NULL
    message("getting cached data")
    return(inv)                       # 3- cached matrix and can return it to the parent environment
  }
  mat <- x$get()                      # 4- If the result of !is.null(m) is FALSE, calculates a inv whit solve()
  inv <- solve(mat, ...)
  x$setInversa(inv)
  inv                                 # 5- returns the value of the inverse to the parent environment by printing the inverse matrix object.
  

}
