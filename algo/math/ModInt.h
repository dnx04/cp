template <int mod>
struct modint {
  using Fp = modint;

 private:
  int x;

 public:
  modint() : x(0) {}
  modint(int64_t y) : x(y >= 0 ? y % mod : (mod - (-y) % mod) % mod) {}
  Fp &operator+=(const Fp &p) {
    if ((x += p.x) >= mod) x -= mod;
    return *this;
  }
  Fp &operator-=(const Fp &p) {
    if ((x += mod - p.x) >= mod) x -= mod;
    return *this;
  }
  Fp &operator*=(const Fp &p) {
    x = (int)(1ll * x * p.x % mod);
    return *this;
  }
  Fp &operator/=(const Fp &p) {
    *this *= p.inv();
    return *this;
  }
  Fp operator-() const { return Fp(-x); }
  Fp operator+(const Fp &p) const { return Fp(*this) += p; }
  Fp operator-(const Fp &p) const { return Fp(*this) -= p; }
  Fp operator*(const Fp &p) const { return Fp(*this) *= p; }
  Fp operator/(const Fp &p) const { return Fp(*this) /= p; }
  bool operator==(const Fp &p) const { return x == p.x; }
  bool operator!=(const Fp &p) const { return x != p.x; }
  Fp inv() const { return pow(mod - 2); }
  Fp pow(int64_t n) const {
    Fp ret(1), mul(x);
    while (n > 0) {
      if (n & 1) ret *= mul;
      mul *= mul;
      n >>= 1;
    }
    return ret;
  }
  friend ostream &operator<<(ostream &os, const Fp &p) { return os << p.x; }
  friend istream &operator>>(istream &is, Fp &a) {
    int64_t t;
    is >> t;
    a = modint<mod>(t);
    return (is);
  }
};