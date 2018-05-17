#ifndef _RANDOMDISTSAMPLER_HPP
#define _RANDOMDISTSAMPLER_HPP

#include <iostream>
#include <random>
#include <chrono>

using namespace std;

class RandomDistSampler{
private:
  int size; //number of state
  double* randomDist;

public:
  RandomDistSampler(int size);
  ~RandomDistSampler(){}

  double* getRandomDist(){ return randomDist; }
  int getSize(){ return size; }

  void setSize(int s){ size = s; }
};

#endif
