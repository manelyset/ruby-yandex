s1 = gets.chomp.split('')
s2 = gets.chomp.split('')

if s1.sort == s2.sort
	puts "1"
else
	puts "0"
end
