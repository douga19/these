# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=5, RUN=100000

sum = 0.
for p in list_5_100000:
	sum += float(p.volume())
print 5," ", sum/len(list_5_100000)