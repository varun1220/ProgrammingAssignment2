
makeMatrix <- function (x = matrix()){
m <- NULL
set <- function (y){
x <<- y 
m <- NULL
}
get <- function()x 
setmatrix <- function (solve) m <<- solve 
getmatrix <- function () m 
list (set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)

}
cacheMatrix <- function (x, ... )
{
m <- x$getmatrix()
if (!is.null(m)){
message ("getting chached data")
return(m)
}else {
matrix <- x$get()
m <- solve(matrix,...)
x$setmatrix(m)
m
}
}
