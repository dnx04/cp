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

void solve() {}

int main() {
  cin.tie(0)->sync_with_stdio(0);
  cin.exceptions(cin.failbit);
  int tc = 1;
  // cin >> tc;
  for (int i = 1; i <= tc; ++i) {
    solve();
  }
}
