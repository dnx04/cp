#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>
#include <tr2/dynamic_bitset>

using namespace std;
using namespace __gnu_pbds;
using namespace __gnu_cxx;
using namespace tr2;

#define rep(i, a, b) for (int i = a; i < (b); ++i)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
#define pb push_back
#define eb emplace_back
typedef long long ll;
typedef unsigned long long ull;
typedef pair<int, int> pii;
typedef vector<int> vi;

template <typename T>
using ordered_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;
const int RANDOM = chrono::high_resolution_clock::now().time_since_epoch().count();
struct chash { int operator()(int x) const { return x ^ RANDOM; } };
using fast_map = gp_hash_table<int, int, chash>;
using bs = dynamic_bitset<uint64_t>;

void solve() {}

signed main() {
#ifdef LOCAL
  freopen("input.txt", "r", stdin);
  freopen("output.txt", "w+", stdout);
  freopen("debug.log", "w+", stderr);
#endif
  ios::sync_with_stdio(0);
  cin.tie(0);
  int tc = 1;
  // cin >> tc;
  for(int i = 1; i <= tc; ++i) solve();
}