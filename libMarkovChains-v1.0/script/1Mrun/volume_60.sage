# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=60, RUN=1000000

sum = 0.
for p in list_60_1000000:
	sum += float(p.volume())
print 60," ", sum/len(list_60_1000000)