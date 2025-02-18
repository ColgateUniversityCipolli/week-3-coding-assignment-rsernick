## Create the real set as a vector
primes = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47)
prime.products = c()
for(i in 1:length(primes)){
  prime.products = c(prime.products, primes[i]*primes[-i])
}
prime.products = prime.products[-which(prime.products>100)]
prime.products = unique(prime.products)
prime.products = sort(prime.products)

## Create the given set as a vector

given.products = c(6, 10, 14, 15, 21, 22, 26, 33, 34, 35, 38, 39, 46, 51, 55, 57, 58, 62, 65, 69,
                   75, 77, 82, 85, 86, 87, 91, 93, 94, 95)

## See where given.products does not equal prime.products to find the error

given.products[which(prime.products!=given.products)]

