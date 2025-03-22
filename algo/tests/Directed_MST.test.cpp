#define PROBLEM "https://judge.yosupo.jp/problem/directedmst"
#ifdef LOCAL
#include "algo-ng/extc++.h"
#include "algo-ng/prettyprint.hpp"
#else
#include <bits/extc++.h>
#endif

using namespace std;
using namespace __gnu_pbds;
using namespace __gnu_cxx;

#define rep(i, a, b) for (int i = a; i < (b); ++i)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
#define pb push_back
#define eb emplace_back
typedef long long ll;
typedef pair<int, int> pii;
typedef vector<int> vi;

#include "../graph/DirectedMST.h"

void solve() {
  int n, m, s;
  cin >> n >> m >> s;
  vector<Edge> edges;
  rep(i, 0, m) {
    int a, b;
    ll w;
    cin >> a >> b >> w;
    edges.push_back({a, b, w});
  }
  for (int i = 0; i < n; i++) {
    if (i != s) edges.push_back({i, s, 0});
  }
  auto [res, par] = DMST(n, s, edges);
  vi ans(n);
  ans[s] = s;
  for (auto i : par) {
    ans[edges[i].b] = edges[i].a;
  }
  cout << res << '\n';
  if (res != -1) {
    for (auto x : ans) cout << x << ' ';
  }
  // if (res == -1) {
  //   cout << "NO\n";
  // } else {
  //   cout << "YES\n";
  //   rep(i, 0, n) {
  //     if (i == s) continue;
  //     cout << par[i] << '\n';
  //   }
  // }
}

int main() {
  cin.tie(0)->sync_with_stdio(0);
  cin.exceptions(cin.failbit);
  int tc = 1;
  // cin >> tc;
  for (int i = 1; i <= tc; ++i) {
    solve();
  }
}
