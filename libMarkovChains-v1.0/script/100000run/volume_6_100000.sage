# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=6, RUN=100000

sum = 0.
for p in list_6_100000:
	sum += float(p.volume())
print 6," ", sum/len(list_6_100000)