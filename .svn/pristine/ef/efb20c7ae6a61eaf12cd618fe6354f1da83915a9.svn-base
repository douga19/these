#include <iostream>
#include <cstdlib>
#include <ctime>
#include "../headers/operation.hpp"
#include "../headers/Hzonotope.hpp"

using namespace std;

int main(int argc, char const *argv[]) {
  int dim = atoi(argv[1]);
  clock_t begin = clock();
  Hzonotope* h = new Hzonotope(1,dim,2);

  cout << "H1(" << h->getDim() << ",2)" << endl;

  h->displayGenerator();
  h->displayVertices();

  clock_t end = clock();
  cout << "2d - 1 = " << 2*dim - 1 << endl;
  cout << "Sum of generators' first coordinate: " << h->sumGenFirstCoordinates() << endl;
  cout << "Execution time: " << (long double) (end - begin) * 1000.0/ CLOCKS_PER_SEC << "ms" << endl;
  return 0;
}
