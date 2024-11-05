#define PROBLEM "https://judge.yosupo.jp/problem/sqrt_mod"
#define IGNORE

#include <bits/stdc++.h>

using namespace std;

#define rep(i, a, b) for (int i = a; i < (b); ++i)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
typedef long long ll;
typedef unsigned long long ull;
typedef pair<int, int> pii;
typedef vector<int> vi;

#include "../math/ModMulPow.h"
#include "../math/ModSQRT.h"

void solve() {
  ll a, p;
  cin >> a >> p;
  cout << modsqrt(a, p) << '\n';
}

int main() {
  cin.tie(0)->sync_with_stdio(0);
  cin.exceptions(cin.failbit);
  int tc = 1;
  cin >> tc;
  for (int i = 1; i <= tc; ++i) {
    solve();
  }
}
