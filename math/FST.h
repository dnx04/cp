template <typename T>
void FST(vector<T>& a, bool inv, string type) {
  for (int n = sz(a), step = 1; step < n; step *= 2) {
    for (int i = 0; i < n; i += 2 * step) rep(j, i, i + step) {
        T &u = a[j], &v = a[j + step];
        if (type == "and") tie(u, v) = inv ? make_pair(v - u, u) : make_pair(v, u + v);
        else if (type == "or") tie(u, v) = inv ? make_pair(v, u - v) : make_pair(u + v, u);
        else if (type == "xor") tie(u, v) = make_pair(u + v, u - v);
      }
  }
  if (inv && type == "xor")
    for (T& x : a) x /= sz(a);
}
template <typename T>
vector<T> conv(vector<T> a, vector<T> b, string type) {
  FST(a, 0, type);
  FST(b, 0, type);
  rep(i, 0, sz(a)) a[i] *= b[i];
  FST(a, 1, type);
  return a;
}