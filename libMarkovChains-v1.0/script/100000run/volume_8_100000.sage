# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=8, RUN=100000

sum = 0.
for p in list_8_100000:
	sum += float(p.volume())
print 8," ", sum/len(list_8_100000)