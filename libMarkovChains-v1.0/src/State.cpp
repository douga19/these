#include "../header/State.hpp"

State::State(int n, vector<Point> c){
  nVertices = n;
  convexHull = c;
  nAdd = nDel = nUp = nLoop = nMov = 0;
}

void State::addNeighbor(State* x){
  neighbors.push_back(x);
}

bool State::isEqual(State * s){
  if(convexHull.size()==s->getConvexHull().size()){
    qsort(&convexHull[1], convexHull.size() - 1, sizeof(Point), compare);
    qsort(&s->getConvexHull()[1], convexHull.size() - 1, sizeof(Point), compare);
    for(int i=0;i<convexHull.size();i++)
      if( convexHull[i].x != s->getConvexHull()[i].x ||
          convexHull[i].y != s->getConvexHull()[i].y)
         return false;
    return true;
  }
  return false;
}


void State::updateConvexHull(Point p){
  int i = findIn(convexHull,p);
  if (i > -1 && convexHull.size() - 1 > 3){
    convexHull.erase(convexHull.begin()+i);
    nDel++;
  }
  else {
    std::vector<Point> v = convexHull;
    int taille = convexHull.size();
    v.push_back(p);
    v = computeConvexHull(v, taille + 1);
    if (v.size() == taille +1){
      convexHull.push_back(p);
      nAdd++;
    }
    else nLoop++;
  }
  nUp++;
}

void State::updateConvexHullWithMove(Point p){
  int i = findIn(convexHull,p);
  if (i > -1){
    // Si ce n'est pas un simplexe, on supprime le point
    if (convexHull.size() - 1 > 3){
      convexHull.erase(convexHull.begin()+i);
      nDel++;
      cout << "del " << nDel << endl;
    }
    // Si c'est un simplexe on choisit de le déplacer
    // Recalcule l'enveloppe convexe si il est bon on déplace
    // Sinon on boucle
    else {
      std::vector<Point> v = convexHull;
      Point u = moveToNeighbor(v[i]);
      v.erase(v.begin()+i);
      v.push_back(u);
      v = computeConvexHull(v, v.size());
      if (v.size() == 3){
        convexHull.erase(convexHull.begin()+i);
        convexHull.push_back(u);
        nMov++;
        cout << "move " << nMov << endl;
      } else {
        nLoop++;
        cout << "loop " << nLoop << endl;
      }

    }
  }
  else {
    std::vector<Point> v = convexHull;
    int taille = convexHull.size();
    v.push_back(p);
    v = computeConvexHull(v, taille + 1);
    if (v.size() == taille +1){
      convexHull.push_back(p);
      nAdd++;
      cout << "add " << nAdd << endl;
    }
    else {
      nLoop++;
      cout << "loop " << nLoop << endl;
    }
  }
  nUp++;
  cout << "up " << nUp << endl;
}

void State::display(){
  cout << "------------------------" << endl;
  std::vector<Point> v = getConvexHull();
  for (size_t i = 0; i < v.size(); i++) {
    cout << "( " << v[i].x << ", " << v[i].y << " )"<< endl;
  }
}

void State::printStat(){
  cout << "------------------------" << endl;
  cout << "Nombre updates: " << nUp << endl;
  cout << "Nombre d'ajouts: " << nAdd << endl;
  cout << "Nombre de deplacement" << nMov << endl;
  cout << "Nombre de suppressions: " << nDel << endl;
  cout << "Nombre de boucles: " << nLoop << endl;

}
