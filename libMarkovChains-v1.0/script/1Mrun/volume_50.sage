# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=50, RUN=1000000

sum = 0.
for p in list_50_1000000:
	sum += float(p.volume())
print 50," ", sum/len(list_50_1000000)