# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=10, RUN=100000

sum = 0.
for p in list_10_100000:
	sum += float(p.volume())
print 10, " ", sum/len(list_10_100000)