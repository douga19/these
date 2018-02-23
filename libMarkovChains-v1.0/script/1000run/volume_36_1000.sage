# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=36, RUN=1000

list_36_1000 = [Polyhedron(vertices = [[21,9],[0,3],[2,1],[6,23],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[17,16],[23,3],[22,2],[12,22],[1,15],[18,1]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[6,23],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[17,16],[23,3],[22,2],[12,22],[1,15],[18,1],[7,24]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[6,23],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[17,16],[23,3],[22,2],[12,22],[1,15],[18,1],[7,24],[13,0]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[6,23],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[7,24],[13,0]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[7,24],[13,0]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[7,24],[13,0],[16,17]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[13,0],[16,17]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[23,5],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[13,0],[16,17],[8,24]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[13,0],[16,17],[8,24]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[13,0],[16,17],[8,24],[20,11]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[13,0],[16,17],[20,11]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[1,15],[18,1],[13,0],[16,17],[20,11],[7,24]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[13,21],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[3,19],[9,24],[8,0],[23,3],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[3,19],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[3,19],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[3,19],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[3,19],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3],[5,23]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3],[5,23]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3]]),Polyhedron(vertices = [[21,9],[0,3],[2,1],[0,4],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3],[4,22]]),Polyhedron(vertices = [[21,9],[0,3],[0,4],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3],[4,22]]),Polyhedron(vertices = [[21,9],[0,3],[0,4],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3],[4,22],[5,1]]),Polyhedron(vertices = [[21,9],[0,3],[0,4],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[20,11],[7,24],[2,16],[23,3],[4,22],[5,1],[23,4]]),Polyhedron(vertices = [[21,9],[0,3],[0,4],[9,24],[8,0],[22,2],[12,22],[18,1],[13,0],[16,17],[7,24],[2,16],[23,3],[4,22],[5,1],[23,4]])]
sum = 0.
for p in list_36_1000:
	sum += float(p.volume())
print(sum/len(list_36_1000))