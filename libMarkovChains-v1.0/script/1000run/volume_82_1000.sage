# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=82, RUN=1000

list_82_1000 = [Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[23,5]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[22,4],[14,29],[1,12],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[14,29],[1,12],[25,31],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[26,21],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[22,33]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[22,33]])]
sum = 0.
for p in list_82_1000:
	sum += float(p.volume())
print(sum/len(list_82_1000))
