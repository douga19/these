# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX
# K=11, RUN=100000

sum = 0.
for p in list_11_100000:
	sum += float(p.volume())
print 11, " ", sum/len(list_11_100000)