def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(array)
	x = 0
	y = 0
	array.each do |a|
		x = a + y
		y = x
	end
	return x
end

def multiply(collection, *x)
	collection * x
end
