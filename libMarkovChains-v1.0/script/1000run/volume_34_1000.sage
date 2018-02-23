# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=34, RUN=1000

list_34_1000 = [Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[22,4],[12,0],[0,2],[6,23],[9,25],[12,24],[21,9],[1,12],[0,3]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[0,2],[6,23],[9,25],[12,24],[21,9],[1,12],[0,3]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[0,2],[6,23],[9,25],[12,24],[21,9],[1,12],[0,3],[2,1]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[0,2],[6,23],[9,25],[12,24],[21,9],[1,12],[0,3],[2,1],[24,2]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[0,2],[6,23],[9,25],[12,24],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[0,2],[6,23],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[0,2],[6,23],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0],[10,25]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[6,23],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0],[10,25]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0],[10,25]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0],[10,25],[6,23]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0],[10,25],[6,23],[18,15]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0],[10,25],[6,23]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[6,0],[10,25],[6,23],[23,5]]),Polyhedron(vertices = [[2,18],[4,21],[19,1],[14,21],[12,0],[9,25],[21,9],[1,12],[0,3],[2,1],[24,2],[10,25],[6,23],[23,5]])]
sum = 0.
for p in list_34_1000:
	sum += float(p.volume())
print(sum/len(list_34_1000))