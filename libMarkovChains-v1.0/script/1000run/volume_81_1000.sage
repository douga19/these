# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=81, RUN=1000

list_81_1000 = [Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[17,31],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[17,31],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[17,31],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[22,33]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[17,31],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32]])]
sum = 0.
for p in list_81_1000:
	sum += float(p.volume())
print(sum/len(list_81_1000))
