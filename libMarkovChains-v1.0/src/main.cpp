#include <iostream>
#include <cstdlib>
#include <string.h>
#include <cmath>
#include "../header/Matrix.hpp"
#include "../header/MarkovChain.hpp"
#include "../header/convexHull.hpp"
#include "../header/State.hpp"

using namespace std;

int largestSize(int k, int run, State* initialState);
std::vector<Point> randomSimplex(int k);
int max(int* t, int length);
float mean(int* t, int length);

int main(int argc, char const *argv[]) {
  int d = 2, k = 10;

  // Initialisation
  std::vector<Point> s = {{0,0},{0,1},{1,0}};
  State* initState = new State(3,s);

  // Plus grand nombre de points d'un état qu'on peut atteindre pour une marche de 100000 pas
  // for (size_t k = 10; k < 100; k++) {
  //   cout << k << " " << largestSize(k,10000,initState) << endl;
  // }

  // Plus grand nombre de points d'un état qu'on peut atteindre pour une marche qui realise le diametre
  int diam;
  int *t = new int[1000];
  for (size_t i = 3; i <= 100; i++) {
     diam = floor(2*pow(i,(float)4/3) + 4*(d+1));
     for (size_t j = 0; j < 1000; j++) {
       t[j] = largestSize(i,diam,initState);
     }
     cout << i << " " << pow(i,(float)4/3) << " " << diam << " " << mean(t,1000) << endl;
  }

  // Volume 




  // if (argc > 2){
  //   int d = 2, k = atoi(argv[1]);
  //
  //   char option = argv[2][0];
  //
  //   cout << "Random sampling by coupling (" << d << "," << k << ")-polytope" << endl;
  //
  //   //tirer 3 points etat intial
  //   std::vector<Point> listPoints = {{0,0},{0,1},{1,0}};
  //   std::vector<Point> listPoints2 = {{2,2},{2,0},{0,1}};
  //   State* initState = new State(3, listPoints);
  //   State* initState2 = new State(3, listPoints2);
  //
  //   initState->display();
  //   initState2->display();
  //
  //   if (option == 'n'){
  //     while(!initState->isEqual(initState2)){
  //       initState->updateConvexHull(randomPoint(k));
  //       initState2->updateConvexHull(randomPoint(k));
  //     }
  //   }
  //   else if (option == 'm'){
  //     while(!initState->isEqual(initState2)){
  //       initState->updateConvexHullWithMove(randomPoint(k));
  //       initState2->updateConvexHullWithMove(randomPoint(k));
  //     }
  //   }
  //   initState->display();
  //   initState->printStat();
  //   initState2->printStat();
  // }

  return 0;
}

std::vector<Point> randomSimplex(int k){
  std::vector<Point> s;
  s.push_back(randomPoint(k));
  s.push_back(randomPoint(k));
  s.push_back(randomPoint(k));
  return s;
}

int largestSize(int k, int run, State* initialState){
  int *t = new int[run];
  for (int i = 0;i < run;i++){
    initialState->updateConvexHull(randomPoint(k));
    t[i] = initialState->getNVertices();
  }
  //initialState->printStat();
  return max(t,run);
}

int max(int* t, int length){
  int max = t[0];
  for (size_t i = 0; i < length; i++){
    if(max < t[i]) max = t[i];
  }
  return max;
}

float mean(int* t, int length){
  int sum = 0.;
  for (size_t i = 0; i < length; i++){
    sum += t[i];
  }
  return (float) sum/length;
}
