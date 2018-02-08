#ifndef _MARKOVCHAIN_HPP
#define  _MARKOVCHAIN_HPP

#include <iostream>
#include "Matrix.hpp"

using namespace std;

class MarkovChain {
private:
  int nbEtats;
  Matrix* P;
  Matrix* mu_0;
  Matrix* mu_t;
  int mixingTime;
  double errorMargin;

public:
  MarkovChain (int nbEtats, double epsilon);
  MarkovChain(string transitionMatrix, string initialDistribution, double epsilon);
  ~MarkovChain (){}

  void setNbEtats(int n){ nbEtats = n; }
  void setErrorMargin(double epsilon){ errorMargin = epsilon; }
  void setTransitionMatrix(double** v);
  void setInitialDistribution(double** v);

  int getNbEtats(){ return nbEtats; }
  Matrix* getTransitionMatrix(){ return P; }
  Matrix* getInitialDistribution(){ return mu_0; }
  Matrix* getStationnaryDistribution(){ return mu_t; }
  int getMixingTime(){ return mixingTime; }

  void computeStationnaryDist();
  void toString();
  bool isStationnaryUniform();
  bool isIrreductible();
};

#endif