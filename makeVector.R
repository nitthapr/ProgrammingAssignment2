makeVector <- function(x  = numeric()){
        m <- NULL
        set <- function(y){
                ## save in cache x & m 
                x <<- y
                ##print(paste("save in cache",x))
                m <<- NULL
                ##print(paste("save in cache m <<- NULL"))
        }
        get <- function() x
        setmean <- function (mean) m <<- mean
        getmean <- function () m
        list (set = set, get = get, setmean = setmean, getmean = getmean)
}

cachemean <- function (x, ...) {
        m <- x$getmean()
        if (!is.null(m)){
                message("getting cache data")
                return(m)
        }
        
        data <- x$get()
        m <- mean(data,...)
        x$setmean(m)
}