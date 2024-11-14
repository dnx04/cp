#define PROBLEM "https://judge.yosupo.jp/problem/enumerate_cliques"

#include <bits/stdc++.h>

using namespace std;

#define rep(i, a, b) for (int i = a; i < (b); ++i)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
typedef long long ll;
typedef unsigned long long ull;
typedef pair<int, int> pii;
typedef vector<int> vi;

#include "../math/ModInt.h"
#include "../misc/MaximalCliques.h"

using Fp = modint<998244353>;

void solve() {
  int n, m;
  cin >> n >> m;
  vector<Fp> x(n);
  rep(i, 0, n) cin >> x[i];
  vector<B> g(n);
  rep(i, 0, m) {
    int u, v;
    cin >> u >> v;
    g[u][v] = g[v][u] = 1;
  }
  Fp ans = 0;
  cliques(g, [&](const B &clique) {
    if(!clique.any()) return;
    Fp prod = 1;
    for(int i = clique._Find_first(); i < n; i = clique._Find_next(i)) prod *= x[i];
    ans += prod;
  });
  cout << ans << '\n';
}

int main() {
  cin.tie(0)->sync_with_stdio(0);
  cin.exceptions(cin.failbit);
  int tc = 1;
//   cin >> tc;
  for (int i = 1; i <= tc; ++i) {
    solve();
  }
}
