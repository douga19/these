#include "../headers/Hzonotope.hpp"

Hzonotope::Hzonotope(int q, int dim, int p){
  setDim(dim);
  setQ(q);
  setP(p);
  setGenerator();
  setVertices();
}

void Hzonotope::setGenerator(){
  int *element = new int[dim];
  // d unit vecteur
  for (size_t i = 0; i < dim; i++) {
    element = getUnitVector(dim,i);
    generator.push_back(element);
  }

  //(d 2) (1,1,....0)
  for (size_t i = 0; i < dim - 1; i++) {
    for (size_t j = i+1; j < dim; j++) {
      element = getPosPermutation(dim,i,j);
      generator.push_back(element);
    }
  }

  // //(d 2) (1,-1,....0)
  for (size_t i = 0; i < dim - 1; i++) {
    for (size_t j = i+1; j < dim; j++) {
      element = getNegPermutation(dim,i,j);
      generator.push_back(element);
    }
  }
  // delete [] element;
}

void Hzonotope::setVertices(){
  int *vertex = new int[dim];
  for (size_t i = 0; i < dim; i++) vertex[i] = 0;
  sumPartition(vertex,0);
  delete [] vertex;
  //TODO
  //rejet des points interieurs
}

void Hzonotope::sumPartition(int *temp, int compteur){
  if(compteur < generator.size()-1){
    sumPartition(temp,compteur+1);
    sumPartition(vectorSum(temp, generator[compteur], dim),compteur+1);
  } else {
    if(isNotIn(vertices,temp,dim))
      vertices.push_back(temp);
    if(isNotIn(vertices,vectorSum(temp, generator[compteur], dim),dim))
      vertices.push_back(vectorSum(temp, generator[compteur], dim));
  }
}

void Hzonotope::displayGenerator(){
  cout << "------------------" << endl;
  cout << "List of generators" << endl;
  for (size_t i = 0; i < generator.size(); i++) {
    displayTabInt(generator[i],dim);
  }
  cout << endl;
}

void Hzonotope::displayVertices(){
  cout << "------------------" << endl;
  cout << "List of vertices" << endl;
  for (size_t i = 0; i < vertices.size(); i++) {
    displayTabInt(vertices[i],dim);
  }
  cout << endl;
  // for (size_t i = 0; i < vertices.size(); i++){
  //   for (size_t j = 0; j < dim - 1; j++) {
  //     cout << "\t1 " << vertices[i][j] << " ";
  //   }
  //   cout << vertices[i][dim-1] << endl;
  // }
}

void Hzonotope::output(){
  ofstream file ("output/Hzonotope.ext", ios::out);
  if(file.is_open()) {
    int nbVertices = vertices.size();
    cout << nbVertices << endl;
    file << "*Output Hzonotope H:" << endl;
    file << "*q = " << q << ", d = " << dim << ", p = " << p << endl;
    file << "V-representation" << endl;
    file << "begin" << endl;
    file << "\t" << nbVertices << "\t" << dim + 1 << "\tinteger" << endl;
    file << "\t1 ";
    for (size_t i = 0; i < dim - 1; i++) {
      file << "0 ";
    }
    file << "0" << endl;
    for (size_t i = 1; i < vertices.size(); i++){
      file << "\t1 ";
      for (size_t j = 0; j < dim - 1; j++) {
        file << vertices[i][j] << " ";
      }
      file << vertices[i][dim-1] << endl;
    }
    file << "end";
    cout << "Job done" << endl;
    file.close();
  }
  else {
    cout << "Erreur" << endl;
  }
}

void Hzonotope::toPlot(){
  ofstream file ("output/plot.dat", ios::out);
  if(file.is_open()) {
    for (size_t i = 0; i < dim - 1; i++) {
      file << "0 ";
    }
    file << "0" << endl;
    for (size_t i = 1; i < vertices.size(); i++){
      for (size_t j = 0; j < dim - 1; j++) {
        file << vertices[i][j] << " ";
      }
      file << vertices[i][dim-1] << endl;
    }
    file.close();
  }
  for (size_t i = 0; i < dim - 1; i++) {
    file << "0 ";
  }
  file << "0" << endl;
}

void Hzonotope::formatForPolymake(){
  char buffer [30];
  int n = sprintf(buffer,"output/polymakeOutputDim%d.txt",dim);
  ofstream file (buffer, ios::out);
  if(file.is_open()) {
    int nbVertices = vertices.size();
    file << "1 ";
    for (size_t i = 0; i < dim - 1; i++) file << "0 ";
    file << "0" << endl;
    for (size_t i = 1; i < vertices.size(); i++){
      file << "1 ";
      for (size_t j = 0; j < dim - 1; j++) file << vertices[i][j] << " ";
      file << vertices[i][dim-1] << endl;
    }
    cout << "Ready for polymake" << endl;
    file.close();
  }
  else {
    cout << "Erreur" << endl;
  }
}

int Hzonotope::sumGenFirstCoordinates(){
  int sum = 0;
  for (size_t i = 0; i < generator.size(); i++) {
    sum += generator[i][0];
  }
  return sum;
}
