# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=88, RUN=1000

list_88_1000 = [Polyhedron(vertices = [[19,2],[3,1],[14,29],[2,5],[26,20],[17,1],[9,25],[1,10],[10,0],[26,18],[3,17],[2,15],[21,4],[24,29],[11,0],[10,26],[23,9]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[2,5],[26,20],[17,1],[9,25],[1,10],[10,0],[26,18],[3,17],[2,15],[21,4],[24,29],[11,0],[10,26],[23,9],[19,31]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[2,5],[26,20],[17,1],[1,10],[10,0],[26,18],[3,17],[2,15],[21,4],[24,29],[11,0],[10,26],[23,9],[19,31]]),Polyhedron(vertices = [[19,2],[3,1],[14,29],[2,5],[26,20],[17,1],[1,10],[10,0],[26,18],[3,17],[2,15],[21,4],[24,29],[10,26],[23,9],[19,31]])]
sum = 0.
for p in list_88_1000:
	sum += float(p.volume())
print(sum/len(list_88_1000))
