# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=51, RUN=1000

list_51_1000 = [Polyhedron(vertices = [[22,6],[1,5],[22,5],[19,19],[0,12],[18,2],[21,11],[21,4],[11,21],[3,20],[18,20],[6,2],[16,1],[0,18],[12,21]]),Polyhedron(vertices = [[22,6],[1,5],[22,5],[19,19],[0,12],[18,2],[21,11],[21,4],[11,21],[3,20],[18,20],[16,1],[0,18],[12,21]]),Polyhedron(vertices = [[22,6],[1,5],[22,5],[19,19],[0,12],[18,2],[21,11],[21,4],[11,21],[3,20],[18,20],[16,1],[0,18],[12,21],[6,1]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[21,11],[21,4],[11,21],[3,20],[18,20],[16,1],[0,18],[12,21],[6,1]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[21,11],[21,4],[11,21],[3,20],[16,1],[0,18],[12,21],[6,1]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[21,4],[11,21],[3,20],[16,1],[0,18],[12,21],[6,1]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[21,4],[11,21],[3,20],[16,1],[0,18],[12,21],[6,1],[23,13]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[11,21],[3,20],[16,1],[0,18],[12,21],[6,1],[23,13]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[3,20],[16,1],[0,18],[12,21],[6,1],[23,13]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2]]),Polyhedron(vertices = [[22,6],[1,5],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2],[12,0]]),Polyhedron(vertices = [[22,6],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2],[12,0]]),Polyhedron(vertices = [[22,6],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2],[12,0],[23,10]]),Polyhedron(vertices = [[22,6],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2],[12,0],[23,10],[1,18]]),Polyhedron(vertices = [[22,6],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2],[12,0],[23,10],[1,18],[22,15]]),Polyhedron(vertices = [[22,6],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2],[12,0],[23,10],[1,18],[22,15],[2,4]]),Polyhedron(vertices = [[22,6],[19,19],[0,12],[18,2],[3,20],[16,1],[12,21],[6,1],[23,13],[0,10],[16,21],[20,18],[4,2],[12,0],[23,10],[1,18],[22,15],[2,4],[11,0]])]
sum = 0.
for p in list_51_1000:
	sum += float(p.volume())
print(sum/len(list_51_1000))