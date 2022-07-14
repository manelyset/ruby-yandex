n = gets.chomp.to_i
array = []
previous = nil
n.times do
    input = gets.chomp.to_i
    if (input != previous)
    	array << input
    	previous = input
    end    
end
for i in array
	puts i
end

