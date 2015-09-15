i = 1
counter = 0
while (true)
    if isprime(i)
        if counter == 10000
            println(i)
            break
        end
        counter += 1
    end
    i += 1
end
