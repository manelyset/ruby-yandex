j = gets.chomp
s = gets.chomp
count = 0
stones = s.split('')
for stone in stones 
	count += 1 if j.include?(stone)
end
puts count
