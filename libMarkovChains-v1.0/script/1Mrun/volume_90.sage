# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=90, RUN=1000000

sum = 0.
for p in list_90_1000000:
	sum += float(p.volume())
print 90," ", sum/len(list_90_1000000)