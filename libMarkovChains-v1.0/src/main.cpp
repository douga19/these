#include <iostream>
#include <cstdlib>
#include <string.h>
#include <cmath>
#include <fstream>
#include "../header/Matrix.hpp"
#include "../header/MarkovChain.hpp"
#include "../header/convexHull.hpp"
#include "../header/State.hpp"

using namespace std;

int largestSize(int k, int run, State* initialState);
std::vector<Point> randomSimplex(int k);
int max(int* t, int length);
float mean(int* t, int length);
void outputScript(int k, int run, State* s);

int main(int argc, char const *argv[]) {
  int d = 2;
  int run = stoi(argv[1]);

  //int k = atoi(argv[1]);

  // Initialisation
  std::vector<Point> s = {{0,0},{0,1},{1,0}};
  State* initState = new State(3,s);

  // Plus grand nombre de points d'un état qu'on peut atteindre pour une marche de 100000 pas
  // for (size_t k = 10; k < 100; k++) {
  //   cout << k << " " << largestSize(k,10000,initState) << endl;
  // }

  // Plus grand nombre de points d'un état qu'on peut atteindre pour une marche qui realise le diametre
  // int diam;
  // int *t = new int[1000];
  // for (size_t i = 3; i <= 100; i++) {
  //    diam = floor(2*pow(i,(float)4/3) + 4*(d+1));
  //    for (size_t j = 0; j < 1000; j++) {
  //      t[j] = largestSize(i,diam,initState);
  //    }
  //    cout << i << " " << pow(i,(float)4/3) << " " << diam << " " << mean(t,1000) << endl;
  // }

  // Nombre moyen de sommets d'un polygone

  // for (size_t k = 3; k <= 100; k++) {
  //   int* t = new int[run];
  //   for (size_t i = 0; i < run; i++) {
  //     initState->updateConvexHull(randomPoint(k));
  //     t[i] = initState->getNVertices();
  //   }
  //   cout << k << " " <<  mean(t, run) << endl;
  //   free(t);
  // }

  // Distribution pour le nombre de sommets
  int k = stoi(argv[2]);
  int* valeur = new int[k*k];
  double* moyenne = new double[k*k];
  for (size_t i = 0; i < k*k; i++) moyenne[i] = 0;

  for (size_t j = 1; j <= 1000; j++) {
    for (size_t i = 0; i < k*k; i++) valeur[i] = 0;
    valeur[3] = 1;
    for (size_t i = 0; i < run; i++) {
      initState->updateConvexHull(randomPoint(k));
      valeur[initState->getNVertices()]++;
    }
    for (size_t i = 3; i < k*k; i++) {
      moyenne[i] = (double) ((j-1)*moyenne[i]/j) + (double) (valeur[i]/j);
    }
  }

  free(valeur);

  for (size_t i = 0; i < k*k; i++) {
    cout << i << " " << moyenne[i] << endl;
  }
  free(moyenne);


  // Output pour le calcul du volume sur SAGEmath
  // Ne prend en compte que le cas où on ne boucle pas

  // for (size_t i = 3; i <= 100; i++) {
  //   outputScript(i,run,initState);
  // }

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

void outputScript(int k, int run, State* s){
  string fileName = "script/100000run/volume_" + to_string(k) + "_" + to_string(run) + ".sage";
  ofstream file(fileName, ios::out | ios::trunc);

  if(file){
    int cmpt = 0;

    file << "# COUNT ONLY UPDATED STATES WITH ADDING OR DELETION OF A VERTEX" << endl;
    file << "# K=" << k << ", RUN=" << run << endl;
    file << endl;
    file << "list_" << k << "_" << run << " = [";

    int size = s->getNVertices();
    file << "Polyhedron(vertices = ";
    file << "[";
    for (int i=0; i< size-1; i++){
      file << "[" << s->getConvexHull()[i].x << "," << s->getConvexHull()[i].y << "],";
    }
    file << "[" << s->getConvexHull()[size-1].x << "," << s->getConvexHull()[size-1].y << "]])";

    for (size_t i = 0; i < run; i++) {
      int prevSize = s->getNVertices();
      s->updateConvexHull(randomPoint(k));
      // Condition pour ne prendre en compte que le cas où l'on ne boucle pas
      if(prevSize != s->getNVertices()){
        file << ",";
        int size = s->getNVertices();
        file << "Polyhedron(vertices = ";
        file << "[";
        for (int i=0; i< size-1; i++){
          file << "[" << s->getConvexHull()[i].x << "," << s->getConvexHull()[i].y << "],";
        }
        file << "[" << s->getConvexHull()[size-1].x << "," << s->getConvexHull()[size-1].y << "]])";
        cmpt++;
      }
    }
    file << "]" << endl;
    file << "sum = 0." << endl;
    file << "for p in list_" << k << "_" << run << ":" << endl;
    file << "\tsum += float(p.volume())" << endl;
    file << "print " << k << ",\" \", sum/len(list_" << k << "_" << run << ")" << endl;
    file.close();
  } else {
    std::cerr << "ERREUR file not found" << endl;
  }


}
