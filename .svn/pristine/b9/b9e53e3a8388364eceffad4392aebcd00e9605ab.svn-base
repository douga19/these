#ifndef _HZONOTOPE_HPP
#define _HZONOTOPE_HPP

#include <iostream>
#include <stdlib.h>
#include <string>
#include <vector>
#include "../headers/operation.hpp"

using namespace std;

class Hzonotope{
private:
    int dim;
    int q;
    int p;
    std::vector<int*> generator;
    std::vector<int*> vertices;

public:
    std::vector<int*> v;
    Hzonotope(){}
    ~Hzonotope(){}
    Hzonotope(int q, int dim, int p);
    void setDim(int value) { dim = value; }
    void setQ(int value){ q = value; }
    void setP(int value){ p = value; }
    void setGenerator();
    void setVertices();
    int getDim(){ return dim; }
    int getQ(){ return q; }
    int getP(){ return p; }

    std::vector<int*> getGenerator(){ return generator; }
    std::vector<int*> getVertices(){ return vertices; }
    void displayGenerator();
    void displayVertices();
    void sumPartition(int *temp, int compteur);
    void output();
    void toPlot();
    void formatForPolymake();
    int sumGenFirstCoordinates();
};

#endif
