# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=7, RUN=100000

sum = 0.
for p in list_7_100000:
	sum += float(p.volume())
print 7, " ", sum/len(list_7_100000)