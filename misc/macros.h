#pragma GCC optimize("Ofast,unroll-loops")       // unroll long, simple loops
#pragma GCC target("avx2,fma")                   // vectorizing code
#pragma GCC target("lzcnt,popcnt,abm,bmi,bmi2")  // for fast bitset operation

#include <bits/extc++.h>  // bits/stdc++.h + extensions

#include <tr2/dynamic_bitset>

using namespace std;
using namespace __gnu_pbds;  // ordered_set, gp_hash_table
using namespace __gnu_cxx;   // rope, cut and insert subarray in O(logn)

// for templates to work
#define rep(i, a, b) for (int i = a; i < (b); ++i)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
#define pb push_back
#define eb emplace_back
typedef long long ll;
typedef pair<int, int> pii;
typedef vector<int> vi;

// fast map
const int RANDOM = chrono::high_resolution_clock::now().time_since_epoch().count();
struct chash {  // customize hash function for gp_hash_table
  int operator()(int x) const { return x ^ RANDOM; }
};
gp_hash_table<int, int, chash> table;

/* ordered set
    find_by_order(k): returns an iterator to the k-th element (0-based)
    order_of_key(k): returns the number of elements in the set that are strictly less than k
*/
template <typename T>
using ordered_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

// dynamic bitset
using bs = tr2::dynamic_bitset<uint64_t>;

/*  rope
    rope <int> cur = v.substr(l, r - l + 1);
    v.erase(l, r - l + 1);
    v.insert(v.mutable_begin(), cur);
*/