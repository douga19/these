# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=4, RUN=100000

sum = 0.
for p in list_4_100000:
	sum += float(p.volume())
print 4," ", sum/len(list_4_100000)