#include "../headers/operation.hpp"

int fact(int n){
  if(n == 1 || n == 0) return 1;
  return n * fact(n-1);
}

int comb(int n, int k){
  return fact(n)/(fact(k) * fact(n-k));
}

// Prend en argument la dimension et une cordonée i, renvoie le vecteur unitaire pour la i-ème coordonée
int *getUnitVector(int dim, int indice){
  int *unitVector = new int[dim];
  for (size_t i = 0; i < dim; i++) unitVector[i] = 0;
  unitVector[indice] = 1;
  return unitVector;
}

int *getPosPermutation(int dim, int i, int j){
  int *unitVector = new int[dim];
  for (size_t i = 0; i < dim; i++) unitVector[i] = 0;
  unitVector[i] = 1;
  unitVector[j] = 1;
  return unitVector;
}

int *getNegPermutation(int dim, int i, int j){
  int *unitVector = new int[dim];
  for (size_t i = 0; i < dim; i++) unitVector[i] = 0;
  unitVector[i] = 1;
  unitVector[j] = -1;
  return unitVector;
}

int *vectorSum(int *a, int *b, int dim){
  int *sum = new int[dim];
  for (size_t i = 0; i < dim; i++) {
    sum[i] = a[i] + b[i];
  }
  return sum;
}

bool isEqual(int *a, int *b, int dim){
  int count = 0;
  for (size_t i = 0; i < dim; i++){
    if (a[i] == b[i]) count++;
  }
  if (count == dim) return true;
  return false;
}

bool isNotIn(std::vector<int*> v, int *elm, int dim){
  for (size_t i = 0; i < v.size(); i++) {
    if(isEqual(v[i],elm,dim)) return false;
  }
  return true;
}

void displayTabInt(int *tab, int taille){
  cout << "(";
  for (int i=0; i<taille-1; i++){
    cout << tab[i] << ",";
  }
  cout << tab[taille-1] << ")" << endl;
}

void formatTabForOutput(int *t, int dim) {
  for (size_t i = 0; i < dim-1; i++) {
    cout << " 1 " << t[i] << " ";
  }
  cout << t[dim-1] << endl;
}
