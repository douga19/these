# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=85, RUN=1000

list_85_1000 = [Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[25,12],[9,25],[1,10],[10,0],[23,32],[22,33],[26,18],[3,17],[2,15],[21,4],[23,7],[11,0],[24,29],[10,26]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[25,12],[9,25],[1,10],[10,0],[23,32],[22,33],[26,18],[3,17],[2,15],[21,4],[23,7],[24,29],[10,26]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[25,12],[9,25],[1,10],[10,0],[23,32],[22,33],[26,18],[3,17],[2,15],[21,4],[24,29],[10,26]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[1,12],[2,5],[19,32],[26,20],[17,1],[25,12],[9,25],[1,10],[10,0],[23,32],[22,33],[26,18],[3,17],[2,15],[21,4],[24,29],[10,26],[11,0]])]
sum = 0.
for p in list_85_1000:
	sum += float(p.volume())
print(sum/len(list_85_1000))