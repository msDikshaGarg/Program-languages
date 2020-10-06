# Recursive program for factorial
fact(n) = n==0 ? 1 : n* fact(n-1) % BigInt

function memorize(func)
    results = Dict()
    n -> helper(n, func, results)
end

function helper(n, func, results)
    if haskey(results, n)
       	return results[n]
    end
    ans = func(n)
   	results[n] =ans
    ans
end
