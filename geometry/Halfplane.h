#include "Point.h"

template<class T>
struct Halfplane {
  typedef Point<T> P;
  P p, pq;
  long double angle;
  Halfplane(const P& a, const P& b): p(a), pq(b - a) {
    angle = atan2l(pq.y, pq.x);
  }
  bool out(const P& r) {

  }
};