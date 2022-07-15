def bfs(graph, start) 
	dist = []
	graph.size.times do
		dist << graph.size
	end
	dist[start - 1] = 0
	queue = []
	queue << start
	
	while queue.size != 0
		v = queue.shift
		for u in graph[v - 1]
			if (dist[u - 1] > dist[v - 1] + 1)
				dist[u - 1] = dist[v - 1] + 1
				queue << u
			end
		end
	end
	dist
	
end

n = gets.to_i
cities = []
n.times do
	x, y =  gets.chomp.split(' ')
	cities << [x.to_i, y.to_i]	
end
max_dist = gets.to_i
a, b = gets.chomp.split(' ')
a, b = a.to_i, b.to_i

graph = []

n.times do
graph << []
end

i = 0
while(i < n) do
	j = i
	while(j < n) do
		if((cities[i][0]-cities[j][0]).abs + (cities[i][1]-cities[j][1]).abs <= max_dist) && (i != j)
			graph[i] << j + 1
			graph[j] << i + 1
		end
		j+= 1
	end
	i+= 1
end

dist = bfs(graph, a)
if dist[b - 1] == n
	puts "-1"
else
	puts dist[b - 1]
end
