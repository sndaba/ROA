Let:
  
  𝑁
N: Number of search agents (rhinos)
𝐷
D: Dimension of the search space
𝑋
𝑖
X 
i
​
: Position of the 
𝑖
i-th rhino, where 
𝑋
𝑖
∈
𝑅
𝐷
X 
i
​
∈R 
D

𝐹
(
  𝑋
  𝑖
)
F(X 
  i
  ​
): Fitness function evaluated at position 
𝑋
𝑖
X 
i
​

𝐺
G: Global best position found among all rhinos
𝐿
L: Leader rhino selected based on fitness
𝑃
𝑖
P 
i
​
: Personal best position of the 
𝑖
i-th rhino
𝑟
r: Randomization factor (to facilitate exploration)
𝛼
α: Exploration parameter (determines the extent of exploration)
𝛽
β: Exploitation parameter (determines the extent of exploitation)



1. Social Dynamics and Group Behavior
The leader-follower dynamic can be mathematically represented as follows:
  
  Leader Selection: Identify the leader 
𝐿 based on the highest fitness:
  
  𝐿
=
  arg
⁡
max
⁡
𝑖
∈
[
  1
  ,
  𝑁
]
𝐹
(
  𝑋
  𝑖
)
L=arg 
i∈[1,N]
max
​
F(X 
  i
  ​
)
Position Update for Followers:
  
  𝑋
𝑖
𝑛
𝑒
𝑤
=
  𝑋
𝑖
𝑜
𝑙
𝑑
+
  𝛼
⋅
(
  𝐿
  −
  𝑋
  𝑖
  𝑜
  𝑙
  𝑑
)
+
  𝑟
⋅
(
  𝑃
  𝑖
  −
  𝑋
  𝑖
  𝑜
  𝑙
  𝑑
)
,
∀
𝑖
≠
𝐿
X 
i
new
​
=X 
i
old
​
+α⋅(L−X 
    i
    old
    ​
)+r⋅(P 
     i
     ​
     −X 
     i
     old
     ​
),∀i

=L
This equation ensures that followers are attracted to the leader while also considering their own personal best positions.