x2 <- matrix(1:9,nrow = 3, ncol = 3)
i <- solve(x, ...)

A <- makeCacheMatrix((matrix(c(2,1,5,3),2,2 )))
##(matrix(c(3,-1,5,2),2,2 )
A <- makeCacheMatrix((matrix(c(1:9),3,3 )))
##system is exactly singular: U[3,3] = 0 
A <- makeCacheMatrix(matrix(c(2,-2,3,2,1,0,0,1,1 ) ,3,3))
# > A.inverse
# [,1]       [,2]       [,3]
# [1,]  0.08333333 -0.1666667  0.1666667
# [2,]  0.41666667  0.1666667 -0.1666667
# [3,] -0.25000000  0.5000000  0.5000000