#ifndef _STATE_HPP
#define _STATE_HPP

#include <iostream>
#include <vector>
#include <algorithm>
#include "convexHull.hpp"

using namespace std;

class State{
private:
  int nVertices;
  int nAdd;
  int nDel;
  int nUp;
  int nLoop;
  vector<State*> neighbors;
  vector<Point> convexHull;
public:
  State(int n, vector<Point> c);
  ~State(){}

  bool isEqual(State * s);

  int getNVertices(){ return nVertices; }
  vector<State*> getNeighbor(){ return neighbors; }
  vector<Point> getConvexHull(){ return convexHull; }

  void setConvexHull(vector<Point> c){ convexHull = c; }

  void addNeighbor(State* x);
  void updateConvexHull(Point p);
  void display();
  void printStat();
};

#endif
