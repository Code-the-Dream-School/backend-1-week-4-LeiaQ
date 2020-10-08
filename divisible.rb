# (1) Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. Then call the method in your program and print out what it returns.  Call the program divisible.rb.

def divisible
    div = []
    for item in 1 .. 100 
        if (item % 2 == 0 || item % 3 == 0) || (item % 5 == 0)
            div.push(item)
        end
    end
    print div
end

divisible()
