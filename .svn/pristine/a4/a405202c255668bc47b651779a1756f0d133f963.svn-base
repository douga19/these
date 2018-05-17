#ifndef _CONVEX_HULL_HPP
#define _CONVEX_HULL_HPP

#include <iostream>
#include <stack>
#include <cstdlib>
#include <vector>

using namespace std;

struct Point
{
    int x, y;
};

Point nextToTop(stack<Point> &S);
void swap(Point &p1, Point &p2);
int distSq(Point p1, Point p2);
int orientation(Point p, Point q, Point r);
int compare(const void *vp1, const void *vp2);
vector<Point> computeConvexHull(vector<Point> listPoints, int n);
Point randomPoint(int k);
int findIn(vector<Point> v, Point p);
bool isEqual(vector<Point> u, vector<Point> v);
void displayPoint(Point p);
void clearOccurences(vector<Point> &listPoints);
vector<Point> randomVectorPoint(int size, int k);


#endif
