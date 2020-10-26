# ProgrammingAssignment2Prueba
Repository created to share the assignment of the third week.

#makeCacheMatrix() 
is that it builds a set of functions and returns the functions within a list to the parent environment.
1- initialize objects x and inv
2- define the set function.   
3- Assign the input argument to the x object in the parent environment
4- Assign the value of NULL to the inv object in the parent environment. 
5- define the get function.
6- defines the setter for the inversa inv.
7- defines the getter for the inversa inv.
8- assigns each of these functions as an element within a list

# cacheSolve () 
calculates and / or retrieves the inverse of an object of type makeCacheMatrix ()

1- calls the getInversa() function on the input object
2- checks to see whether the result is NULL
3- cached matrix and can return it to the parent environment
4- If the result of !is.null(m) is FALSE, calculates a inv whit solve()
5- returns the value of the inverse to the parent environment by printing the inverse matrix object.
  

