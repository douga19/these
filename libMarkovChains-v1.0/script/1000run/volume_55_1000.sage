# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=55, RUN=1000

list_55_1000 = [Polyhedron(vertices = [[22,6],[19,19],[18,2],[12,21],[6,1],[0,10],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[23,11]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[12,21],[6,1],[0,10],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[23,11],[0,14]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[12,21],[6,1],[0,10],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[12,21],[6,1],[0,10],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[6,1],[0,10],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[6,1],[0,10],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0],[9,25]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[6,1],[0,10],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0],[9,25],[23,13]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[6,1],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0],[9,25],[23,13]]),Polyhedron(vertices = [[22,6],[19,19],[18,2],[6,1],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0],[9,25],[23,13],[11,26]]),Polyhedron(vertices = [[22,6],[18,2],[6,1],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0],[9,25],[23,13],[11,26]]),Polyhedron(vertices = [[22,6],[18,2],[6,1],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[11,0],[9,25],[23,13],[11,26],[15,23]]),Polyhedron(vertices = [[22,6],[18,2],[6,1],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[9,25],[23,13],[11,26],[15,23]]),Polyhedron(vertices = [[18,2],[6,1],[4,2],[23,10],[1,18],[22,15],[2,4],[21,4],[18,20],[4,22],[15,1],[3,21],[1,6],[0,14],[9,25],[23,13],[11,26],[15,23]])]
sum = 0.
for p in list_55_1000:
	sum += float(p.volume())
print(sum/len(list_55_1000))
