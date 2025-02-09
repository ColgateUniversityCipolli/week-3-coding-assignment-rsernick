## Create the real set
primes = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47)
prime.products = c()
for(i in 1:length(primes)){
  prime.products = c(prime.products, primes[i]*primes[-i])
}
prime.products = prime.products[-which(prime.products>100)]
prime.products = unique(prime.products)
sort(prime.products)
