# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=3, RUN=100000

sum = 0.
for p in list_3_100000:
	sum += float(p.volume())
print 3, " ", sum/len(list_3_100000)