# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=67, RUN=1000

list_67_1000 = [Polyhedron(vertices = [[0,11],[19,2],[22,24],[25,10],[0,10],[13,28],[11,0],[24,7],[2,8],[25,11],[17,1],[23,20],[12,0],[10,25],[17,31]]),Polyhedron(vertices = [[0,11],[19,2],[22,24],[25,10],[0,10],[13,28],[11,0],[2,8],[25,11],[17,1],[23,20],[12,0],[10,25],[17,31]]),Polyhedron(vertices = [[0,11],[19,2],[22,24],[25,10],[0,10],[13,28],[11,0],[2,8],[25,11],[17,1],[23,20],[12,0],[10,25],[17,31],[20,30]]),Polyhedron(vertices = [[0,11],[19,2],[22,24],[25,10],[0,10],[13,28],[11,0],[2,8],[25,11],[17,1],[23,20],[12,0],[10,25],[17,31],[20,30],[19,32]]),Polyhedron(vertices = [[0,11],[19,2],[22,24],[25,10],[0,10],[13,28],[11,0],[2,8],[25,11],[17,1],[23,20],[12,0],[10,25],[17,31],[20,30],[19,32],[2,15]]),Polyhedron(vertices = [[0,11],[19,2],[22,24],[25,10],[0,10],[13,28],[11,0],[2,8],[25,11],[17,1],[23,20],[12,0],[10,25],[17,31],[20,30],[19,32],[2,15],[23,5]])]
sum = 0.
for p in list_67_1000:
	sum += float(p.volume())
print(sum/len(list_67_1000))
