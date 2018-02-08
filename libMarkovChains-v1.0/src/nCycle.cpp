double** randomWalkMatrix;
int dim = 101;
randomWalkMatrix = new double*[dim];
for (size_t i = 0; i < dim; i++) {
  randomWalkMatrix[i] = new double[dim];
}


for (size_t i = 0; i < dim; i++) {
    for (size_t j = 0; j < dim; j++) {
        randomWalkMatrix[i][j] = 0;
    }
}
randomWalkMatrix[0][1] = 0.5;
randomWalkMatrix[0][dim-1] = 0.5;
randomWalkMatrix[dim-1][0] = 0.5;
randomWalkMatrix[dim-1][dim-2] = 0.5;
for (size_t i = 1; i < dim-1; i++) {
    randomWalkMatrix[i][i-1] = 0.5;
    randomWalkMatrix[i][i+1] = 0.5;
}

for (size_t i = 0; i < dim; i++) {
    for (size_t j = 0; j < dim; j++) {
        std::cout << randomWalkMatrix[i][j] << "\t";
    }
std::cout << std::endl;
}


------------------
distribution initiale
>>>>>>>>>>>>>>>>>>

double** randomWalkMatrix;
int dim = 101;
randomWalkMatrix = new double*[1];
for (size_t i = 0; i < 1; i++) {
  randomWalkMatrix[i] = new double[dim];
}


for (size_t i = 0; i < 1; i++) {
    for (size_t j = 0; j < dim; j++) {
        randomWalkMatrix[i][j] = 0;
    }
}

randomWalkMatrix[0][0] = 1;

for (size_t i = 0; i < 1; i++) {
    for (size_t j = 0; j < dim; j++) {
        std::cout << randomWalkMatrix[i][j] << "\t";
    }
std::cout << std::endl;
}
