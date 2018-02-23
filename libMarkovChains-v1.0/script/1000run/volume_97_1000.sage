# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=97, RUN=1000

list_97_1000 = [Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[16,30],[25,17],[0,6],[8,0],[9,25],[26,25]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[16,30],[25,17],[0,6],[8,0],[26,25]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[0,6],[8,0],[26,25]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[0,6],[8,0]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[0,6],[8,0],[26,24]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[0,6],[8,0],[26,24],[16,32]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[0,6],[8,0],[26,24],[16,32],[20,3]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[0,6],[8,0],[26,24],[16,32],[20,3],[26,25]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[8,0],[26,24],[16,32],[20,3],[26,25]]),Polyhedron(vertices = [[3,1],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[12,0],[20,31],[1,12],[15,1],[22,6],[1,3],[25,17],[8,0],[26,24],[16,32],[20,3],[26,25],[5,20]])]
sum = 0.
for p in list_97_1000:
	sum += float(p.volume())
print(sum/len(list_97_1000))
