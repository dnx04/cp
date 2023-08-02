---
data:
  _extendedDependsOn: []
  _extendedRequiredBy: []
  _extendedVerifiedWith: []
  _isVerificationFailed: false
  _pathExtension: hpp
  _verificationStatusIcon: ':warning:'
  attributes:
    links: []
  bundledCode: "#line 2 \"misc/static_modulo.hpp\"\n\ntemplate <int mod>\nstruct static_modulo\
    \ {\n  using Fp = static_modulo;\n\n private:\n  int x;\n\n public:\n  static_modulo()\
    \ : x(0) {}\n  static_modulo(int64_t y) : x(y >= 0 ? y % mod : (mod - (-y) % mod)\
    \ % mod) {}\n  Fp &operator+=(const Fp &p) {\n    if ((x += p.x) >= mod) x -=\
    \ mod;\n    return *this;\n  }\n  Fp &operator-=(const Fp &p) {\n    if ((x +=\
    \ mod - p.x) >= mod) x -= mod;\n    return *this;\n  }\n  Fp &operator*=(const\
    \ Fp &p) {\n    x = (int)(1ll * x * p.x % mod);\n    return *this;\n  }\n  Fp\
    \ &operator/=(const Fp &p) {\n    *this *= p.inv();\n    return *this;\n  }\n\
    \  Fp operator-() const { return Fp(-x); }\n  Fp operator+(const Fp &p) const\
    \ { return Fp(*this) += p; }\n  Fp operator-(const Fp &p) const { return Fp(*this)\
    \ -= p; }\n  Fp operator*(const Fp &p) const { return Fp(*this) *= p; }\n  Fp\
    \ operator/(const Fp &p) const { return Fp(*this) /= p; }\n  bool operator==(const\
    \ Fp &p) const { return x == p.x; }\n  bool operator!=(const Fp &p) const { return\
    \ x != p.x; }\n  Fp inv() const { return pow(mod - 2); }\n  Fp pow(int64_t n)\
    \ const {\n    Fp ret(1), mul(x);\n    while (n > 0) {\n      if (n & 1) ret *=\
    \ mul;\n      mul *= mul;\n      n >>= 1;\n    }\n    return ret;\n  }\n  friend\
    \ ostream &operator<<(ostream &os, const Fp &p) { return os << p.x; }\n  friend\
    \ istream &operator>>(istream &is, Fp &a) {\n    int64_t t;\n    is >> t;\n  \
    \  a = static_modulo<mod>(t);\n    return (is);\n  }\n  int get() const { return\
    \ x; }\n  static constexpr int get_mod() { return mod; }\n};\n"
  code: "#pragma once\n\ntemplate <int mod>\nstruct static_modulo {\n  using Fp =\
    \ static_modulo;\n\n private:\n  int x;\n\n public:\n  static_modulo() : x(0)\
    \ {}\n  static_modulo(int64_t y) : x(y >= 0 ? y % mod : (mod - (-y) % mod) % mod)\
    \ {}\n  Fp &operator+=(const Fp &p) {\n    if ((x += p.x) >= mod) x -= mod;\n\
    \    return *this;\n  }\n  Fp &operator-=(const Fp &p) {\n    if ((x += mod -\
    \ p.x) >= mod) x -= mod;\n    return *this;\n  }\n  Fp &operator*=(const Fp &p)\
    \ {\n    x = (int)(1ll * x * p.x % mod);\n    return *this;\n  }\n  Fp &operator/=(const\
    \ Fp &p) {\n    *this *= p.inv();\n    return *this;\n  }\n  Fp operator-() const\
    \ { return Fp(-x); }\n  Fp operator+(const Fp &p) const { return Fp(*this) +=\
    \ p; }\n  Fp operator-(const Fp &p) const { return Fp(*this) -= p; }\n  Fp operator*(const\
    \ Fp &p) const { return Fp(*this) *= p; }\n  Fp operator/(const Fp &p) const {\
    \ return Fp(*this) /= p; }\n  bool operator==(const Fp &p) const { return x ==\
    \ p.x; }\n  bool operator!=(const Fp &p) const { return x != p.x; }\n  Fp inv()\
    \ const { return pow(mod - 2); }\n  Fp pow(int64_t n) const {\n    Fp ret(1),\
    \ mul(x);\n    while (n > 0) {\n      if (n & 1) ret *= mul;\n      mul *= mul;\n\
    \      n >>= 1;\n    }\n    return ret;\n  }\n  friend ostream &operator<<(ostream\
    \ &os, const Fp &p) { return os << p.x; }\n  friend istream &operator>>(istream\
    \ &is, Fp &a) {\n    int64_t t;\n    is >> t;\n    a = static_modulo<mod>(t);\n\
    \    return (is);\n  }\n  int get() const { return x; }\n  static constexpr int\
    \ get_mod() { return mod; }\n};"
  dependsOn: []
  isVerificationFile: false
  path: misc/static_modulo.hpp
  requiredBy: []
  timestamp: '2023-07-25 00:50:50+07:00'
  verificationStatus: LIBRARY_NO_TESTS
  verifiedWith: []
documentation_of: misc/static_modulo.hpp
layout: document
redirect_from:
- /library/misc/static_modulo.hpp
- /library/misc/static_modulo.hpp.html
title: misc/static_modulo.hpp
---