# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=9, RUN=100000

sum = 0.
for p in list_9_100000:
	sum += float(p.volume())
print 9," ", sum/len(list_9_100000)