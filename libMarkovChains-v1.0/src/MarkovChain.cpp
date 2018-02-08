#include "../header/MarkovChain.hpp"

MarkovChain::MarkovChain(int nbEtats, double epsilon){
  setNbEtats(nbEtats);
  P = new Matrix(nbEtats,nbEtats);
  mu_0 = new Matrix(1, nbEtats);
  mu_t = new Matrix(1, nbEtats);

  P->setValues();
  mu_0->setValues();

  mixingTime = 0;
  errorMargin = epsilon;
}

MarkovChain::MarkovChain(string transitionMatrix, string initialDistribution, double epsilon){
  P = new Matrix(transitionMatrix);
  mu_0 = new Matrix(initialDistribution);

  setNbEtats(P->getRow());

  mu_t = new Matrix(1, nbEtats);

  mixingTime = 0;
  errorMargin = epsilon;
}

void MarkovChain::setTransitionMatrix(double** v){
  for (size_t i = 0; i < getNbEtats(); i++){
    for (size_t j = 0; j < getNbEtats(); j++){
      P->getValues()[i][j] = v[i][j];
    }
  }
}

void MarkovChain::setInitialDistribution(double** v){
  for (size_t i = 0; i < getNbEtats(); i++) {
    mu_0->getValues()[0][i] = v[0][i];
  }
}

void MarkovChain::computeStationnaryDist(){
  mu_t = mu_0->productWith(P);
  while (!(mu_t->equals(mu_t->productWith(P),errorMargin))) {
    mu_t = mu_t->productWith(P);
    mixingTime++;
  }
}

void MarkovChain::toString(){
  cout << "Matrice de transition P:" << endl;
  P->display();
  cout << "Distribution initiale mu_0:" << endl;
  mu_0->display();
  cout << "Distribution stationnaire pi:" << endl;
  mu_t->display();
  if(isStationnaryUniform()){
    cout << "Distribution stationnaire Uniforme!!" << endl;
  }
  cout << "Mixing time a " << errorMargin << " pres = " << mixingTime << endl;
}

bool MarkovChain::isStationnaryUniform(){
  bool res = false;
  for (size_t i = 0; i < getNbEtats(); i++) {
    if(fabs(mu_t->getValues()[0][i] - (1/getNbEtats())) < errorMargin) res = true;
  }
  return res;
}

bool MarkovChain::isIrreductible(){
  return true;
}
