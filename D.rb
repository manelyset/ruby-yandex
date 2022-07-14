def generate (s, left, right)
	return nil if(left > right) 
	if(left == 0 && right == 0)
		puts s
		return nil
	end
	generate(s + "(", left - 1, right) if(left > 0)
	generate(s + ")", left, right - 1) if(right > 0)
	
end

n = gets.chomp.to_i
s = ""
generate("", n, n)
