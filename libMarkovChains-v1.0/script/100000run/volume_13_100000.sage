# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=13, RUN=100000

sum = 0.
for p in list_13_100000:
	sum += float(p.volume())
print 13," ", sum/len(list_13_100000)