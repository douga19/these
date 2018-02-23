# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=44, RUN=1000

list_44_1000 = [Polyhedron(vertices = [[1,6],[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[19,20],[14,23],[0,18],[8,23],[12,0],[16,22]]),Polyhedron(vertices = [[1,6],[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[19,20],[14,23],[0,18],[8,23],[12,0],[16,22],[22,6]]),Polyhedron(vertices = [[1,6],[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[19,20],[14,23],[0,18],[8,23],[12,0],[16,22],[22,6],[20,3]]),Polyhedron(vertices = [[1,6],[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[19,20],[14,23],[0,18],[8,23],[12,0],[16,22],[22,6],[20,3],[0,11]]),Polyhedron(vertices = [[1,6],[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[19,20],[14,23],[0,18],[8,23],[12,0],[22,6],[20,3],[0,11]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[19,20],[14,23],[0,18],[8,23],[12,0],[22,6],[20,3],[0,11]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[8,23],[12,0],[22,6],[20,3],[0,11]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[22,5],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[8,23],[12,0],[22,6],[20,3],[0,11],[18,20]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[8,23],[12,0],[22,6],[20,3],[0,11],[18,20]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[8,23],[12,0],[22,6],[20,3],[0,11],[18,20],[22,5]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[12,0],[22,6],[20,3],[0,11],[18,20],[22,5]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[12,0],[22,6],[20,3],[0,11],[18,20],[22,5],[17,21]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[12,0],[22,6],[20,3],[0,11],[22,5],[17,21]]),Polyhedron(vertices = [[2,3],[3,2],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[12,0],[22,6],[20,3],[0,11],[22,5],[17,21],[16,1]]),Polyhedron(vertices = [[2,3],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[12,0],[22,6],[20,3],[0,11],[22,5],[17,21],[16,1]]),Polyhedron(vertices = [[2,3],[11,24],[5,1],[21,11],[11,0],[3,20],[14,23],[0,18],[12,0],[22,6],[20,3],[0,11],[22,5],[17,21],[16,1],[19,18]])]
sum = 0.
for p in list_44_1000:
	sum += float(p.volume())
print(sum/len(list_44_1000))
