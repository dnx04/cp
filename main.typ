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
#file("contest/template.cpp")

= Mathematics

#file("math/MillerRabin.cpp")
#file("math/ModMulPow.cpp")
#file("math/ModLog.cpp")
#file("math/ModSQRT.cpp")
#file("math/Factor.cpp")
#file("math/CRT.cpp")
#file("math/DivModSum.cpp")
#file("math/LinearRec.cpp")

= Geometry

= Data Structures

#file("ds/RMQ.cpp")
#file("ds/DSURollback.cpp")

= Graph

#file("graph/Biconnected.cpp")
#file("graph/PushRelabel.cpp")
#file("graph/GomoryHu.cpp")
#file("graph/MinCostMaxFlow.cpp")

= Strings

#file("strings/Z.cpp")
#file("strings/MinRotation.cpp")
#file("strings/SuffixArray.cpp")

= Misc

#file("misc/pbds.cpp")
#file("misc/LineContainer.cpp")