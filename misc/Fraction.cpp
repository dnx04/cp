#include <bits/stdc++.h>

using namespace std;

#define rep(i, a, b) for (int i = a; i < (b); ++i)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
typedef long long ll;
typedef pair<int, int> pii;
typedef vector<int> vi;
typedef unsigned long long ull;
typedef __int128_t i128;

struct Frac {
  i128 p, q;
};

i128 sumsq(ull to) { return i128(to) / 2 * ((to - 1) | 1); }

i128 divsum(ull to, ull c, ull k, ull m) {
  i128 res = k / m * sumsq(to) + c / m * to;
  k %= m;
  c %= m;
  if (!k) return res;
  i128 to2 = (to * k + c) / m;
  return res + (to - 1) * to2 - divsum(to2, m - 1 - c, m, k);
}

const i128 inf = 1e18 + 1;

i128 count(Frac f, ull n) { return divsum(n + 1, 0, f.p, f.q); }

void solve() {
  ull n, k;
  cin >> n >> k;

  vector<Frac> bound = {{0, 1}, {1, 0}};
  Frac cur = {1, 0};
  bool turn_left = false;
  while (true) {
    int i = sz(bound) - 1;
    i128 lo = 0, hi = inf;
    while (lo < hi) {
      i128 mid = (lo + hi + 1) >> 1;
      Frac f{bound[i - 1].p + bound[i].p * mid,
             bound[i - 1].q + bound[i].q * mid};
      if (f.q > n) {
        hi = mid - 1;
        continue;
      }
      if (turn_left) {
        if (count(f, n) >= k)
          lo = mid;
        else
          hi = mid - 1;
      } else {
        if (count(f, n) < k)
          lo = mid;
        else
          hi = mid - 1;
      }
    }
    if (turn_left && lo == 0) break;
    Frac f{bound[i - 1].p + lo * bound[i].p, bound[i - 1].q + lo * bound[i].q};
    bound.emplace_back(f);
    if (count(f, n) >= k) cur = f;
    turn_left = !turn_left;
  }
  i128 cnt = count(cur, n);
  i128 cnt_same = n / cur.q;
  Frac ans = {cur.p * (k - (cnt - cnt_same)), cur.q * (k - (cnt - cnt_same))};
  cout << uint64_t(ans.p) << ' ' << uint64_t(ans.q) << '\n';
}
