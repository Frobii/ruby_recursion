def loop_fib(position)
    fibArray = [0, 1, 1]
    until fibArray.length == position
        fibArray.push(fibArray[-1] + fibArray[-2])
    end
    return fibArray
end

p loop_fib(8)

def recursive_fib(position)
    return [] if position == 0
    return [0] if position == 1
    return [0,1] if position == 2

    sequence = recursive_fib(position - 1) 

    sequence << sequence[-2] + sequence[-1]

    return sequence
end

p recursive_fib(8)
