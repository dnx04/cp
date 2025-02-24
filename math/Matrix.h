/*
  Matrix<int> A(3);
  A.d = {{{{1, 2, 3}}, {{4, 5, 6}}, {{7, 8, 9}}}};
  vector<int> vec = {1, 2, 3};
  vec = (A ^ N) * vec;
*/

template <class T>
struct Matrix {
  typedef Matrix M;
  int N;
  vector<vector<T>> d;
  Matrix(int n) : N(n), d(n, vector<T>(n, 0)) {}
  M operator*(const M& m) const {
    M a(N);
    rep(i, 0, N) rep(j, 0, N) rep(k, 0, N) a.d[i][j] += d[i][k] * m.d[k][j];
    return a;
  }
  vector<T> operator*(const vector<T>& vec) const {
    vector<T> ret(N);
    rep(i, 0, N) rep(j, 0, N) ret[i] += d[i][j] * vec[j];
    return ret;
  }
  M operator^(ll p) const {
    assert(p >= 0);
    M a(N), b(*this);
    rep(i, 0, N) a.d[i][i] = 1;
    while (p) {
      if (p & 1) a = a * b;
      b = b * b;
      p >>= 1;
    }
    return a;
  }
};