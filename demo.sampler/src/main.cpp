#include <iostream>
#include "../header/convexHull.hpp"

using namespace std;

int main(int argc, char const *argv[]) {
  if(argc < 4){
    cout << "Mettre en argument le nombre de x de sommets à tirer, la valeur kMax de la boite et le nombre nExp d'experimentations à faire" << endl;
  }

  //var
  int x = atoi(argv[1]);
  int kMax = atoi(argv[2]);
  int nExp = atoi(argv[3]);
  vector<Point> listPoints;
  vector<Point> convexHull;

  //init tableau des resultats
  int** res;
  res = new int*[nExp];
  for (size_t i = 0; i < nExp; i++) {
    res[i] = new int[kMax-1];
  }

  //titre
  cout << "x: " << x << " k: 2 -> " << kMax << endl;
  cout << "-----------------" << endl;

  //experimentations
  for (size_t i = 0; i < nExp; i++) {
    for (size_t k = 2; k <= kMax ; k++) {
      int rejet = 0;
      //init
      listPoints = randomVectorPoint(x,k);
      convexHull = computeConvexHull(listPoints, x);

      //sample
      while(x - convexHull.size() != 0 && rejet < 1000){
        listPoints = randomVectorPoint(x,k);
        convexHull = computeConvexHull(listPoints, x);
        rejet++;
      }
      res[i][k-2] = rejet;
      //cout << rejet << "\t";
    }
    //cout << endl;
  }
  //cout << "-----------------" << endl;

  //pourcentage moyenne du nombre de rejets pour chaque k
  int sum;
  for (size_t j = 0; j < kMax-1; j++) {
    sum = 0;
    for (size_t i = 0; i < nExp; i++) {
      sum += res[i][j];
    }
    cout << (float) sum / nExp << "\t";
  }
  cout << endl;
  cout << "-----------------" << endl;
  return 0;
}
