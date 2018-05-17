#include "../header/Matrix.hpp"

Matrix::Matrix(int row, int column){
    setRow(row);
    setColumn(column);
    values = new double*[row];
    for (size_t i = 0; i < row; i++) {
        values[i] = new double[column];
    }
    for (size_t i = 0; i < row; i++) {
        for (size_t j = 0; j < column; j++) {
            values[i][j] = 0;
        }
    }

}

Matrix::Matrix(string fileName){
  int r, c;
  std::cout << "Tafiditra " << fileName << '\n';
  std::ifstream afile(fileName);
  if (afile.is_open()) {
    afile >> r >> c;
    setRow(r);
    setColumn(c);
    values = new double*[row];
    for (size_t i = 0; i < row; i++) {
        values[i] = new double[column];
    }
    for (size_t i = 0; i < row; i++) {
        for (size_t j = 0; j < column; j++) {
            afile >> values[i][j];
        }
    }
  }
  else {
    std::cerr << "Unable to open file\n";
  }
  // cout << r << c << endl;
  afile.close();
}

void Matrix::setValues(){
    for (size_t i = 0; i < getRow(); i++) {
        for (size_t j = 0; j < getColumn(); j++) {
            cout << "[" << i << "]" << "[" << j << "]:";
            cin >> values[i][j];
        }
    }
}


// Copie dans la matrice P les valeurs de la matrice m donnée en paramètre
void Matrix::copy(Matrix* m){
  if(getRow() == m->getRow() && getColumn() == m->getColumn()){
    for (size_t i = 0; i < getRow(); i++) {
        for (size_t j = 0; j < getColumn(); j++) {
            values[i][j] = m->values[i][j];
        }
    }
  }
  else{
    std::cout << "Can't copy!! Different dimensions matrices" << std::endl;
    return;
  }
}


void Matrix::display(){
    std::cout << "--" << std::endl;
    for (size_t i = 0; i < getRow(); i++) {
        for (size_t j = 0; j < getColumn(); j++) {
            std::cout << values[i][j] << "\t";
        }
    std::cout << std::endl;
    }
    std::cout << "--" << std::endl;
}

// Renvoie le résultat d'une multiplication d'une matrice P par la droite par une matrice m donnée en paramètre
// P*m
Matrix* Matrix::productWith(Matrix* m){
    Matrix* res = new Matrix(getRow(),m->getColumn());
    for (size_t i = 0; i < getRow(); i++) {
        for (size_t j = 0; j < m->getColumn(); j++) {
            for (size_t k = 0; k < getColumn(); k++) {
                res->values[i][j] += this->values[i][k] * m->values[k][j];
            }
        }
    }
    return res;
}

// Renvoie la matrice élevée à la puissance n
Matrix* Matrix::toThe(int n){
    Matrix* res = new Matrix(getRow(), getColumn());
    res->copy(this);
    int i = 1;
    while(i < n){
      res = res->productWith(this);
      i++;
    }
    return res;
}

// Compare les valeurs de P avec les valeurs d'une matrice m donnée en paramètre suivant une marge d'erreur
// Renvoie true si |P_ij - m_ij| = e
bool Matrix::equals(Matrix *m, double epsilon){
  bool res = false;
  for (size_t i = 0; i < getRow(); i++) {
      for (size_t j = 0; j < getColumn(); j++) {
          if(fabs(values[i][j] - m->values[i][j]) < epsilon) res = true;
          else res = false;
      }
  }
  return res;
}
