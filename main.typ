#import "@preview/codly:1.0.0": *
#import "@preview/outrageous:0.3.0"
#import "@preview/cheq:0.2.2": checklist
#import "icpc.typ": *

#set outline(indent: auto, depth: 4)

#show: codly-init.with()
#show outline.entry: outrageous.show-entry.with()
#show: checklist

#codly(number-format: none)
#codly(display-icon: false) 

#show: doc => icpc(
  team: [Heroku - University of Engineering and Technology, VNU],
  icon: "uet.png",
  doc
)

#pagebreak()

= Thi cử

== Checklists

1. Wrong answer:
  - [ ] Clear data structure sau mỗi test case chưa ?
  - [ ] Thuật có đúng trong giới hạn input không ?
  - [ ] Đọc lại đề
  - [ ] Xét trường hợp biên chưa ?
  - [ ] Hiểu đúng đề chưa ?
  - [ ] Có biến nào chưa khởi tạo không ?
  - [ ] Tràn số ?
  - [ ] Nhầm biến (N với M, i với j) ?
  - [ ] Có chắc thuật đúng không ?
  - [ ] Có case nào không ngờ đến không ?
  - [ ] Nếu dùng STL, các hàm STL có hoạt động như ý muốn không ?
  - [ ] Debug bằng assert.
  - [ ] Trao đổi với teammate / 2 người cùng code.
  - [ ] Output format đúng chưa ? 
  - [ ] Đọc lại checklist.

2. Runtime error:
  - [ ] Test trường hợp biên chưa ?
  - [ ] Biến chưa khởi tạo ?
  - [ ] Tràn mảng ?
  - [ ] Fail assert nào đó ?
  - [ ] Chia/mod cho 0 ?
  - [ ] Đệ quy vô hạn ?
  - [ ] Con trỏ hoặc iterator ?
  - [ ] Dùng quá nhiều bộ nhớ ?
  - [ ] Spam sub đề debug (e.g. remapped signals, see Various).

3. Time limit exceeded:
  - [ ] Lặp vô hạn ?
  - [ ] Độ phức tạp có đúng không ?
  - [ ] Tối ưu mod ?
  - [ ] Copy biến quá nhiều ?
  - [ ] Thay vector, map thành array, unordered_map ? Thay int thành short ?

4. Memory limit exceeded:
- [ ] Tối đa cần bao nhiêu bộ nhớ ?
- [ ] Clear data structure sau mỗi test case chưa ?

#file("contest/commands.sh")

== Advices

- Nếu không sure, hãy thảo luận. Nếu kẹt, giải thích đề bài với teammate.
- Viết pseudocode trước khi code, điều này có thể tiết kiệm computer time. Không cần viết hết, mà chỉ cần những phần quan trong nhất.
- Đừng debug code trên máy. In code và debug output rồi debug trên giấy.
- Nếu kẹt, hãy đi dạo hoặc đi vệ sinh. Có thể nghĩ ra gì đó đấy.
- Nếu bị WA liên tục, để tạm đấy và xem bài khác rồi quay lại sau. 
- Đừng ngại viết lại hết code, thường chỉ mất khoảng 15 phút thôi.
- Nếu có thể dễ sinh ra input lớn hoặc tricky test, hãy cố làm điều đó trước khi nộp.
- Làm xong bài nào thì ném mọi thứ liên quan đến nó xuống đất (đề bài, giấy nháp, ...).
- Xem bảng điểm liên tục. Nếu nhiều người giải được, nghĩa là bài đó dễ.
- Ghi lại xem ai đang làm bài nào.
- Cuối giờ, mọi người tập trung vào 1 bài thôi.

= Toán

#file("math/MillerRabin.h", description: [
  *Description:* Kiểm tra số nguyên tố nhanh, *chắc chắn* đúng trong `unsigned long long`.
])
#file("math/Matrix.h")
#file("math/ModLog.h", description: [
  *Description:* Tìm $x > 0$ nhỏ nhất sao cho $a^x = b mod m$, hoặc $-1$. `modLog(a,1,m)` trả về order của $a$ trong $ZZ^*_m$. Độ phức tạp $O(sqrt(m))$.
])
#file("math/ModSQRT.h", description: [
  *Description:* Tìm căn bậc hai modulo $p$ trong trung bình $O(log p)$.
])
#file("math/Factor.h", description: [
  *Description:* Tìm một ước của $n$ nhanh trong $O(root(4, n) log n)$. Phân tích đệ quy $n$ thành thừa số nguyên tố.
])
#file("math/CRT.h", description: [
  *Description:* Duy trì các phương trình đồng dư và nghiệm thoả mãn.
])
#file("math/DivModSum.h", description: [
  *Description:* Tính $sum_(i = 0)^(n - 1) (a + i times d) / m$ and $sum_(i = 0)^(n - 1) (a + i times d) mod m $
])
#file("math/FFT.h", description: [
  *Description:* FFT trên $RR$
])
#file("math/NTT.h", description: [
  *Description:* FFT trên trường hữu hạn với modulo nguyên tố *bất kỳ*.
])
#file("math/FST.h", description: [
  *Description:* Tính tích chập AND, OR, XOR.
])
#file("math/BerlekampMassey.h", description: [
  *Description:* Phục hồi một dãy truy hồi cấp $n$ từ $2n$ số hạng đầu tiên trong $O(n^2)$.
])
#file("math/Lagrange.h", description: [
  *Description:* Tìm đa thức bậc $n - 1$ qua $n$ điểm trong $O(n^2)$. Vẫn đúng trong trường modulo.
])
#file("math/Gauss.h", description: [
  *Description:* Giải hệ phương trình tuyến tính trong $O(n^3)$.
])
#file("math/GaussBinary.h", description: [
  *Description:* Giải hệ phương trình tuyến tính modulo 2 trong $O(n^3/64)$.
])

= Hình 

#file("geometry/Point.h")
#file("geometry/SideOf.h")
#file("geometry/ClosestPair.h")

#file("geometry/OnSegment.h")
#file("geometry/LineDistance.h")
#file("geometry/LineIntersection.h")
#file("geometry/LineProjectionReflection.h")
#file("geometry/LinearTransformation.h")

#file("geometry/CircleLine.h")
#file("geometry/CircleIntersection.h")
#file("geometry/CircleTangents.h")
#file("geometry/Circumcircle.h")
#file("geometry/MinimumEnclosingCircle.h")
#file("geometry/CirclePolygonIntersection.h", description: [Trả về diện tích phần giao của đường tròn với đa giác trong $O(n)$])

#file("geometry/InsidePolygon.h")
#file("geometry/PolygonCenter.h")
#file("geometry/PolygonArea.h", description: [ Trả về 2 lần diện tích có dấu của đa giác theo CCW.])
#file("geometry/PolygonUnion.h", description: [ Trả về diện tích giao nhau của $n$ đa giác trong $O(N^2)$ với $N$ là tổng số điểm])

#file("geometry/PointInsideHull.h")
#file("geometry/HullDiameter.h")
#file("geometry/ConvexHull.h", description: [Trả về bao lồi của tập điểm theo CCW. Nếu muốn tính cả điểm nằm trên biên, sửa `<=` thành `<`.])

= Cấu trúc dữ liệu

#file("ds/DSURollback.h")
#file("ds/PersistentIT.h")
#file("ds/Splay.h")

= Đồ thị

#file("graph/2SAT.h")
#file("graph/HopcroftKarp.h", description: [
  *Description:* Cặp ghép cực đại trên đồ thị 2 phía trong $O(E sqrt(V))$.

  *Usage:* `vi btoa(m, -1); hopcroftKarp(g, btoa);`
])
#file("graph/GeneralMatching.h", description: [
  *Description:* Thuật toán Blossom tìm cặp ghép cực đại trên đồ thị thường trong $O(V^3)$. Đánh chỉ số từ 0.
])
#file("graph/PushRelabel.h", description: [
  *Description:* Thuận toán Push-relabel trong $O(V^2 sqrt(E))$.
])
#file("graph/Hungarian.h")
#file("graph/GomoryHu.h", description: [
  *Description:* Tính maxflow của từng cặp đỉnh trong $N - 1$ lần chạy luồng.
])
// #file("graph/MinCostMaxFlow.h", description: [
//   *Description:* Min-cost max-flow. If costs can be negative, call `setpi` before `maxflow`, not support negative cycle. To obtain the actual flow, look at positive values only.
  
//   *Time:* $O(F E log(V))$ where F is max flow. $O(V E)$ for `setpi`.
// ])

= Xâu

#file("strings/MinRotation.h", description: [
  Tìm cyclic shift của xâu có thứ tự từ điển nhỏ nhất trong $O(n)$. 
])
#file("strings/SuffixArray.h")
#file("strings/AhoCorasick.h")

= Khác

#file("misc/pbds.h")
#file("misc/LineContainer.h")
#file("misc/Fraction.cpp", description: [
  Chặt nhị phân tìm phân số dương lớn thứ $k$ với mẫu số không vượt quá $n$.
])
#file("misc/1D1D.cpp", description: [Nếu hàm $w(i, j)$ thoả mãn bất đẳng thức tứ giác: $w(a, c) + w(b, d) <= w(a, d) + w(b, c)$ với mọi $a < b < c < d$, thì ta có thể tính hàm DP 1 chiều: $f(i) = min_(0 <= j < i) f(j) + w(j, i)$ trong $O(n log n)$.
])
#file("misc/Knuth.h", description: [Nếu hàm $w(i, j)$ thoả mãn bất đẳng thức tứ giác: $w(a, c) + w(b, d) <= w(a, d) + w(b, c)$ với mọi $a < b < c < d$, thì ta có thể tính hàm DP: $f(i, j) = min_(i <= k < j) f(i, k) + f(k + 1, j) + w(j, i)$ trong $O(n^2)$.])
#file("misc/HexGrid.h")
#file("misc/MaximalCliques.h", description: [Chạy một hàm nào đó trên tất cả các maximal clique của một đồ thị trong $O(O(3^{n/3}))$, đồ thị càng ít cạnh chạy càng nhanh.])

= Trick & Ghi chú

== Sequences

=== Catalan

$ C_n = 1 / (n + 1) binom(2n, n), C_(n + 1) = sum_(i=0)^n C_i C_(n - i) $

=== Lucas

Let $n = n_k p^k + n_(k-1) p^(k-1) + ... + n_0$ and $m = m_k p^k + m_(k-1) p^(k-1) + ... + m_0$ in base $p$. $ binom(n, m) = product_(i=0)^k binom(n_i, m_i) mod p $.

=== Number of Derangements

$d(n)$ là số hoán vị $n$ phần tử mà không có $i$ sao cho $p_i = i$. $ d(n) = (n - 1)(d(n - 1) + d(n - 2)) $.

=== Số Stirling loại 1

Số hoán vị $n$ phần tử có đúng $k$ chu trình.

$ s(n, k) = s(n - 1, k - 1) + (n - 1) s(n - 1, k) $

$ sum_(k = 0)^n s(n, k)x^k = x(x + 1)...(x + n - 1) $

=== Số Stirling loại 2

Số cách chia $n$ phần tử vào đúng $k$ nhóm.

$ S(n, k) = k S(n - 1, k) + S(n - 1, k - 1) $

$ S(n, k) = 1 / k! sum_(j = 0)^k (-1)^(k - j) binom(k, j) j^n $

== Bổ đề Burnside

Đặt $G$ là nhóm hữu hạn tác động lên tập $X$. Với mỗi $g in G$, gọi $X^g$ là tập các điểm bất định bởi g (${ x ∈ X | g.x = x }$). Số quỹ đạo có thể có là:

$ lr(|X/G|) = 1/lr(|G|) sum_(g in G) |X^g| $

== Super interpretation of kth powers

The square of the size of a set is equal to the number of ordered pairs of elements in the set. So we iterate over pairs and for each we compute the contribution to the answer. 

Similarly, the $k$-th power is equal to the number of sequences (tuples) of length $k$.

$ E(X^2) = E(\#"ordered pairs"), E(X^k) = E(\#"ordered tuples") $

== Power technique

If you want to maintain the sum of $k$-th powers, it might help to also maintain the sum of smaller powers. For example, if the sum of $0$-th, $1$-th and $2$-nd powers is $S_0$, $S_1$ and $S_2$, and we increase all elements by $x$, the new sums are $S_0$, $S_1 + S_0 x$ and $S_2 + 2x S_1 + x^2 S_0$.

== Định lý Pick

Cho một đa giác có các điểm nguyên. Gọi $i$ là số điểm nguyên nằm trong đa giác, và $b$ là số điểm nguyên năm trên cạnh. Diện tích của đa giác là: $A = i + b/2 - 1$

