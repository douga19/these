# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=78, RUN=1000

list_78_1000 = [Polyhedron(vertices = [[19,2],[13,28],[3,16],[1,13],[4,0],[3,1],[22,4],[23,6],[14,29],[1,12],[17,31],[21,3],[7,0],[24,34],[25,31],[2,5],[19,32],[26,20]]),Polyhedron(vertices = [[19,2],[13,28],[3,16],[1,13],[4,0],[3,1],[22,4],[23,6],[14,29],[1,12],[17,31],[7,0],[24,34],[25,31],[2,5],[19,32],[26,20]]),Polyhedron(vertices = [[19,2],[13,28],[3,16],[1,13],[4,0],[3,1],[22,4],[23,6],[14,29],[1,12],[17,31],[7,0],[24,34],[25,31],[2,5],[19,32],[26,20],[17,1]]),Polyhedron(vertices = [[19,2],[13,28],[3,16],[1,13],[4,0],[3,1],[22,4],[23,6],[14,29],[1,12],[17,31],[7,0],[24,34],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21]]),Polyhedron(vertices = [[19,2],[3,16],[1,13],[4,0],[3,1],[22,4],[23,6],[14,29],[1,12],[17,31],[7,0],[24,34],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21]]),Polyhedron(vertices = [[19,2],[3,16],[1,13],[4,0],[3,1],[22,4],[23,6],[14,29],[1,12],[17,31],[7,0],[24,34],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26]]),Polyhedron(vertices = [[19,2],[3,16],[1,13],[4,0],[3,1],[22,4],[23,6],[14,29],[1,12],[17,31],[7,0],[24,34],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12]])]
sum = 0.
for p in list_78_1000:
	sum += float(p.volume())
print(sum/len(list_78_1000))
