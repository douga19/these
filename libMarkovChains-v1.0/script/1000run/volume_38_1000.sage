# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=38, RUN=1000

list_38_1000 = [Polyhedron(vertices = [[21,9],[0,3],[0,4],[9,24],[18,1],[16,17],[23,3],[5,1],[14,20],[23,5],[2,2],[5,21],[7,24],[14,0],[3,17],[1,10],[12,0],[2,14]]),Polyhedron(vertices = [[21,9],[0,3],[0,4],[9,24],[18,1],[16,17],[23,3],[5,1],[14,20],[23,5],[2,2],[5,21],[7,24],[14,0],[3,17],[12,0],[2,14]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[5,1],[14,20],[23,5],[2,2],[5,21],[7,24],[14,0],[3,17],[12,0],[2,14]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[5,1],[14,20],[23,5],[2,2],[5,21],[7,24],[14,0],[3,17],[2,14]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[2,2],[5,21],[7,24],[14,0],[3,17],[2,14]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[2,2],[5,21],[7,24],[14,0],[3,17],[2,14],[1,10]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[2,2],[5,21],[7,24],[14,0],[3,17],[2,14],[1,10],[21,2]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[2,2],[5,21],[14,0],[3,17],[2,14],[1,10],[21,2]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[2,2],[5,21],[14,0],[3,17],[2,14],[1,10],[21,2],[11,23]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[5,21],[14,0],[3,17],[2,14],[1,10],[21,2],[11,23]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[5,21],[14,0],[3,17],[2,14],[1,10],[21,2],[11,23],[10,0]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[23,3],[14,20],[23,5],[5,21],[14,0],[3,17],[2,14],[1,10],[21,2],[11,23],[10,0],[3,2]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[14,20],[23,5],[5,21],[14,0],[3,17],[2,14],[1,10],[21,2],[11,23],[10,0],[3,2]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[14,20],[23,5],[5,21],[14,0],[3,17],[2,14],[1,10],[21,2],[10,0],[3,2]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[2,14],[1,10],[21,2],[10,0],[3,2]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[1,10],[21,2],[10,0],[3,2]]),Polyhedron(vertices = [[21,9],[0,3],[9,24],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[1,10],[21,2],[10,0],[3,2],[10,24]]),Polyhedron(vertices = [[21,9],[0,3],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[1,10],[21,2],[10,0],[3,2],[10,24]]),Polyhedron(vertices = [[21,9],[0,3],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[1,10],[21,2],[10,0],[3,2],[10,24],[6,24]]),Polyhedron(vertices = [[21,9],[0,3],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[1,10],[21,2],[10,0],[3,2],[6,24]]),Polyhedron(vertices = [[21,9],[0,3],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[1,10],[21,2],[10,0],[3,2],[6,24],[9,25]]),Polyhedron(vertices = [[21,9],[0,3],[18,1],[16,17],[14,20],[23,5],[14,0],[3,17],[1,10],[21,2],[10,0],[3,2],[6,24],[9,25],[5,23]])]
sum = 0.
for p in list_38_1000:
	sum += float(p.volume())
print(sum/len(list_38_1000))
