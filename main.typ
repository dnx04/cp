#import "@preview/codly:1.0.0": *
#import "@preview/outrageous:0.3.0"
#import "icpc.typ": *

#show: codly-init.with()
#show outline.entry: outrageous.show-entry

#codly(number-format: none)
#codly(display-icon: false) 

#show: doc => icpc(
  team: [Heroku - University of Engineering and Technology, VNU],
  icon: "uet.png",
  doc
)

= Contest

#file("contest/commands.sh")

= Mathematics

#file("math/MillerRabin.h", description: [
  *Description:* Very fast Rabin Miller. Guarantee to work with `unsigned long long`.
])
#file("math/ModLog.h", description: [
  *Description:* Returns the smallest $x > 0$ s.t. $a^x = b mod m$, or $-1$ otherwise. `modLog(a,1,m)` outputs the order of $a$.
  
  *Time:* $O(sqrt(m))$.
])
#file("math/ModSQRT.h", description: [
  *Description:* Finds $x$ s.t. $x^2 = a mod p$ ($-x$ gives the other solution).
  
  *Time:* $O(log^2 p)$ worst case, $O(log p)$ for most $p$.
])
#file("math/Factor.h")
#file("math/CRT.h")
#file("math/DivModSum.h")
#file("math/LinearRec.h")

= Geometry
#file("geometry/Point.h")
#file("geometry/ConvexHull.h")

= Data Structures

#file("ds/RMQ.h")
#file("ds/DSURollback.h")

= Graph

#file("graph/Biconnected.h")
#file("graph/2SAT.h")
#file("graph/HopcroftKarp.h", description: [
  *Description:* Fast bipartite matching in $O(E sqrt(V))$.

  *Usage:* `vi btoa(m, -1); hopcroftKarp(g, btoa);`
])
#file("graph/GeneralMatching.h", description: [
  *Description:* Blossom algorithm in $O(V^3)$. Index from 0.
])
#file("graph/PushRelabel.h", description: [
  *Description:* Push-relabel max flow algorithm.
  
  *Time:* $O(V^2 sqrt(E))$.
])
#file("graph/GomoryHu.h")
// #file("graph/MinCostMaxFlow.h", description: [
//   *Description:* Min-cost max-flow. If costs can be negative, call `setpi` before `maxflow`, not support negative cycle. To obtain the actual flow, look at positive values only.
  
//   *Time:* $O(F E log(V))$ where F is max flow. $O(V E)$ for `setpi`.
// ])

= Strings

#file("strings/MinRotation.h")
#file("strings/SuffixArray.h")
#file("strings/AhoCorasick.h")

= Misc

#file("misc/pbds.h")
#file("misc/LineContainer.h")

= Tricks & Notes

== Sequences

=== Catalan

$ C_n = 1 / (n + 1) binom(2n, n), C_(n + 1) = sum_(i=0)^n C_i C_(n - i) $

=== Lucas

Let $n = n_k p^k + n_(k-1) p^(k-1) + ... + n_0$ and $m = m_k p^k + m_(k-1) p^(k-1) + ... + m_0$ in base $p$. $ binom(n, m) = product_(i=0)^k binom(n_i, m_i) mod p $.

=== Number of Derangements

Let $d(n)$ be the number of permutations of $n$ elements without any fixed points. $ d(n) = (n - 1)(d(n - 1) + d(n - 2)) $

=== Stirling 1st

Number of permutations of n elements with k cycles.

$ s(n, k) = s(n - 1, k - 1) + (n - 1) s(n - 1, k) $

$ sum_(k = 0)^n s(n, k)x^k = x(x + 1)...(x + n - 1) $

=== Stirling 2nd

Number of ways to partition $n$ elements into exactly $k$ groups.

$ S(n, k) = k S(n - 1, k) + S(n - 1, k - 1) $

$ S(n, k) = 1 / k! sum_(j = 0)^k (-1)^(k - j) binom(k, j) j^n $

== Burnside's Lemma

Given a group $G$ of symmetries and a set $X$, the number of elements of $X$ *up to symmetry* $|X/G|$ equals:

$ lr(|X/G|) = 1/lr(|G|) sum_(g in G) |X^g| $

Where $X^g$ is the set of elements in $X$ fixed by $g$.

== Super interpretation of kth powers

The square of the size of a set is equal to the number of ordered pairs of elements in the set. So we iterate over pairs and for each we compute the contribution to the answer.

Similarly, the $k$-th power is equal to the number of sequences (tuples) of length $k$.

== Power technique

If you want to maintain the sum of $k$-th powers, it might help to also maintain the sum of smaller powers. For example, if the sum of $0$-th, $1$-th and $2$-nd powers is $S_0$, $S_1$ and $S_2$, and we increase all elements by $x$, the new sums are $S_0$, $S_1 + S_0 x$ and $S_2 + 2x S_1 + x^2 S_0$.