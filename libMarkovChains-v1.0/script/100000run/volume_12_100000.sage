# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=12, RUN=100000

sum = 0.
for p in list_12_100000:
	sum += float(p.volume())
print 12," ", sum/len(list_12_100000)