# Simulate tetrahedron toss
# 4 sided dice - one roll
# Stack Overflow
sample(1:4, size=1, replace=TRUE)
Roll <- function(n)
{
  sample(1:4, size=n, replace=TRUE)
}
dice=Roll(10)
dice

t <- function(n)
  dice.roll(faces = 4, dice = 1, rolls = 10)

# Cross Validated
require(dice)

# Roll at least one 1 when rolling tetrahedron toss
p1 <- getEventProb(nrolls = 10, ndicePerRoll = 1, nsidesPerDie = 4,
                   eventList = list(1))
p2 <- getEventProb(nrolls = 100, ndicePerRoll = 1, nsidesPerDie = 4,
                   eventList = list(1))
p3 <- getEventProb(nrolls = 10000, ndicePerRoll = 1, nsidesPerDie = 4,
                   eventList = list(1))
p4 <- getEventProb(nrolls = 100000, ndicePerRoll = 1, nsidesPerDie = 4,
                   eventList = list(1))
dice = 1 - (1-p1) * (1-p2) * (1-p3) * (1-p4)

# RDICE 10 tosses
Call:
  dice.roll(faces = 4, dice = 1, rolls = 10)

Results after 10 rolls of 1 dice:
  values
1:      2
2:      4
3:      3
4:      3
5:      3
6:      3
7:      2
8:      1
9:      1
10:      1

Frequency table for each occurrency:
  values N freq
1:      1 3  0.3
2:      2 2  0.2
3:      3 4  0.4
4:      4 1  0.1

Frequency table of the sums:
  sum N freq cum_sum
1:   1 3  0.3     0.3
2:   2 2  0.2     0.5
3:   3 4  0.4     0.9
4:   4 1  0.1     1.0

Expectation value: 2.3

# 100 tosses
Call:
  dice.roll(faces = 4, dice = 1, rolls = 100)

Results after 100 rolls of 1 dice:
  values
1:      4
2:      2
3:      2
4:      4
5:      3
6:      2
7:      1
8:      1
9:      4
10:      1
11:      3
12:      2
13:      4
14:      3
15:      2
16:      4
17:      3
18:      3
19:      2
20:      2
21:      2
22:      2
23:      1
24:      1
25:      2
26:      2
27:      1
28:      2
29:      4
30:      3
31:      3
32:      4
33:      3
34:      3
35:      4
36:      4
37:      3
38:      3
39:      1
40:      4
41:      3
42:      2
43:      1
44:      3
45:      4
46:      1
47:      4
48:      2
49:      3
50:      3
51:      2
52:      2
53:      2
54:      1
55:      2
56:      1
57:      4
58:      4
59:      1
60:      3
61:      4
62:      1
63:      3
64:      2
65:      3
66:      2
67:      2
68:      4
69:      3
70:      2
71:      3
72:      3
73:      4
74:      3
75:      3
76:      1
77:      2
78:      1
79:      4
80:      4
81:      3
82:      1
83:      3
84:      4
85:      3
86:      3
87:      3
88:      3
89:      1
90:      3
91:      2
92:      4
93:      2
94:      4
95:      2
96:      3
97:      4
98:      2
99:      1
100:      2
values

Frequency table for each occurrency:
  values  N freq
1:      1 18 0.18
2:      2 28 0.28
3:      3 31 0.31
4:      4 23 0.23

Frequency table of the sums:
  sum  N freq cum_sum
1:   1 18 0.18    0.18
2:   2 28 0.28    0.46
3:   3 31 0.31    0.77
4:   4 23 0.23    1.00

Expectation value: 2.59

# 10000 tosses
Call:
  dice.roll(faces = 4, dice = 1, rolls = 10000)

Results after 10000 rolls of 1 dice:
  values
1:      4
2:      4
3:      1
4:      2
5:      1
---       
  9996:      1
9997:      4
9998:      1
9999:      4
10000:      3

Frequency table for each occurrency:
  values    N   freq
1:      1 2518 0.2518
2:      2 2443 0.2443
3:      3 2524 0.2524
4:      4 2515 0.2515

Frequency table of the sums:
  sum    N   freq cum_sum
1:   1 2518 0.2518  0.2518
2:   2 2443 0.2443  0.4961
3:   3 2524 0.2524  0.7485
4:   4 2515 0.2515  1.0000

Expectation value: 2.5036

# 100000 tosses
Call:
  dice.roll(faces = 4, dice = 1, rolls = 1e+05)

Results after 1e+05 rolls of 1 dice:
  values
1:      1
2:      4
3:      4
4:      2
5:      3
---       
99996:      2
99997:      2
99998:      2
99999:      3
100000:      4

Frequency table for each occurrency:
  values     N    freq
1:      1 24915 0.24915
2:      2 25179 0.25179
3:      3 24969 0.24969
4:      4 24937 0.24937

Frequency table of the sums:
  sum     N    freq cum_sum
1:   1 24915 0.24915 0.24915
2:   2 25179 0.25179 0.50094
3:   3 24969 0.24969 0.75063
4:   4 24937 0.24937 1.00000

Expectation value: 2.49928

y <- c(0.05, 0.01, -0.1)
p <- c(0.2, 0.7, 0.1)
sum(y*p)