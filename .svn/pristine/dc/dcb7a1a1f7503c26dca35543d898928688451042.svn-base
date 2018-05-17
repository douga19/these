#include "../header/RandomDistSampler.cpp"

RandomDistSampler::RandomDistSampler(int size){
  setSize(size);
  randomDist = new double[size];

  unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
  default_random_engine generator (seed);

  discrete_distribution<int> distribution(0.0,1.0);

}
