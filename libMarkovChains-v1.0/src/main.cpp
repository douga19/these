#include <iostream>
#include <cstdlib>
#include <string.h>
#include "../header/Matrix.hpp"
#include "../header/MarkovChain.hpp"
#include "../header/convexHull.hpp"
#include "../header/State.hpp"

using namespace std;

int main(int argc, char const *argv[]) {

  if (argc > 2){
    int d = 2, k = atoi(argv[1]);

    char option = argv[2][0];

    cout << "Random sampling by coupling (" << d << "," << k << ")-polytope" << endl;

    //tirer 3 points etat intial
    std::vector<Point> listPoints = {{0,0},{0,1},{1,0}};
    std::vector<Point> listPoints2 = {{2,2},{2,0},{0,1}};
    State* initState = new State(3, listPoints);
    State* initState2 = new State(3, listPoints2);

    initState->display();
    initState2->display();

    if (option == 'n'){
      while(!initState->isEqual(initState2)){
        initState->updateConvexHull(randomPoint(k));
        initState2->updateConvexHull(randomPoint(k));
      }
    }
    else if (option == 'm'){
      while(!initState->isEqual(initState2)){
        initState->updateConvexHullWithMove(randomPoint(k));
        initState2->updateConvexHullWithMove(randomPoint(k));
      }
    }
    initState->display();
    initState->printStat();
    initState2->printStat();
  }

  
  return 0;
}
