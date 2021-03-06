# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=83, RUN=1000

list_83_1000 = [Polyhedron(vertices = [[19,2],[3,16],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[22,33]]),Polyhedron(vertices = [[19,2],[3,16],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[22,33],[26,18]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[22,33],[26,18]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[22,33],[26,18],[3,17]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[10,26],[25,12],[9,25],[1,10],[24,7],[6,0],[10,0],[23,32],[22,33],[26,18],[3,17],[2,15]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[10,26],[25,12],[9,25],[1,10],[24,7],[10,0],[23,32],[22,33],[26,18],[3,17],[2,15]])]
sum = 0.
for p in list_83_1000:
	sum += float(p.volume())
print(sum/len(list_83_1000))
