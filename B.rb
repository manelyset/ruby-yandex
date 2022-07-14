n = gets.chomp.to_i
ones_max = ones_current = 0
n.times do
    input = gets.chomp.to_i
    if (input == 1)
    	ones_current+= 1
    else
    	ones_max = ones_current if ones_current > ones_max
    	ones_current = 0
    end
end
ones_max = ones_current if ones_current > ones_max
puts ones_max

