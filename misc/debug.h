#define print_op(...) ostream& operator<<(ostream& out, const __VA_ARGS__& u)
// DEBUGING TEMPLETE
// ////////////////////////////////////////////////////////////////////////
// ...
// for printing std::pair
template <class U, class V>
print_op(pair<U, V>) {
  return out << "(" << u.first << ", " << u.second << ")";
}
// for printing collection
template <class Con, class = decltype(begin(declval<Con>()))>
typename enable_if<!is_same<Con, string>::value, ostream&>::type operator<<(
    ostream& out, const Con& con) {
  out << "{";
  for (auto beg = con.begin(), it = beg; it != con.end(); ++it)
    out << (it == beg ? "" : ", ") << *it;
  return out << "}";
}
// for printing std::tuple
template <size_t i, class T>
ostream& print_tuple_utils(ostream& out, const T& tup) {
  if constexpr (i == tuple_size<T>::value)
    return out << ")";
  else
    return print_tuple_utils<i + 1, T>(out << (i ? ", " : "(") << get<i>(tup),
                                       tup);
}
template <class... U>
print_op(tuple<U...>) {
  return print_tuple_utils<0, tuple<U...>>(out, u);
}

// Demo
struct Circle {
  double x, y, r;
  Circle(double x_, double y_, double r_) : x(x_), y(y_), r(r_) {
    assert(r >= 0);
  }
  friend print_op(Circle) {
    return out << "(x " << showpos << -u.x << ") ^ 2 + (y " << showpos << -u.y
               << ")^2 = " << u.r << "^2";
  }
};