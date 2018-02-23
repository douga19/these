# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=93, RUN=1000

list_93_1000 = [Polyhedron(vertices = [[3,1],[2,5],[10,0],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[19,31],[12,0],[7,23],[20,31],[1,12],[15,1],[25,25]]),Polyhedron(vertices = [[3,1],[2,5],[10,0],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[19,31],[12,0],[7,23],[20,31],[1,12],[15,1],[25,25],[15,29]]),Polyhedron(vertices = [[3,1],[10,0],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[19,31],[12,0],[7,23],[20,31],[1,12],[15,1],[25,25],[15,29]]),Polyhedron(vertices = [[3,1],[10,0],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[19,31],[12,0],[7,23],[20,31],[1,12],[15,1],[25,25],[15,29],[22,6]]),Polyhedron(vertices = [[3,1],[10,0],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[19,31],[12,0],[7,23],[20,31],[1,12],[15,1],[25,25],[15,29],[22,6],[1,3]]),Polyhedron(vertices = [[3,1],[10,0],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[19,31],[12,0],[7,23],[20,31],[1,12],[15,1],[25,25],[22,6],[1,3]])]
sum = 0.
for p in list_93_1000:
	sum += float(p.volume())
print(sum/len(list_93_1000))