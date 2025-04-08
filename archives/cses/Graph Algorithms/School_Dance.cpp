#line 1 "School_Dance.cpp"
#include <bits/stdc++.h>

using namespace std;

using ll = long long;
using ull = unsigned long long;

#line 1 "algo/graph/bipartite_matching.hpp"
// Max Bipartite matching.
// Index from 0
// Assume 2 sides have same number of vertices
//
// Notes:
// - If TLE --> try shuffle edges
//   REP(i,n) shuffle(ke[i].begin(), ke[i].end(), rng)
// - It should be quite fast, can AC 10^5 vertices

struct bipartite_matching {
  int n;
  vector<vector<int> > ke;
  vector<int> seen;
  vector<int> matchL, matchR;
  int iteration;

  bipartite_matching(int _n)
      : n(_n),
        ke(_n),
        seen(_n, false),
        matchL(_n, -1),
        matchR(_n, -1),
        iteration{0} {}

  void add_edge(int u, int v) { ke[u].push_back(v); }

  bool dfs(int u) {
    seen[u] = iteration;
    for (int v : ke[u]) {
      if (matchR[v] < 0) {
        matchR[v] = u;
        matchL[u] = v;
        return true;
      }
    }
    for (int v : ke[u]) {
      if (seen[matchR[v]] != iteration && dfs(matchR[v])) {
        matchR[v] = u;
        matchL[u] = v;
        return true;
      }
    }
    return false;
  }

  int match() {
    int res = 0;
    int newMatches = 0;
    do {
      iteration++;
      newMatches = 0;
      for (int u = 0; u < n; u++) {
        if (matchL[u] < 0 && dfs(u)) ++newMatches;
      }
      res += newMatches;
    } while (newMatches > 0);
    return res;
  }
};
#line 9 "School_Dance.cpp"

signed main() {
  ios::sync_with_stdio(false);
  cin.tie(nullptr), cin.exceptions(cin.failbit);

  int n, m, k;
  cin >> n >> m >> k;
  bipartite_matching g(max(n, m));
  for (int i = 0; i < k; ++i) {
    int u, v;
    cin >> u >> v, --u, --v;
    g.add_edge(u, v);
  }
  cout << g.match() << '\n';
  for(int i = 0; i < n; ++i) {
    if(g.matchL[i] != -1) cout << i + 1 << ' ' << g.matchL[i] + 1 << '\n';
  }
}
