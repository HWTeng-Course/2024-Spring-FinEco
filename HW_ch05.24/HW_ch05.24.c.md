## This homework is written by 游政諺 (311707012)
## ch05.24 (c)
Q: Find point and 95% interval estimates for the marginal effect ∂E(PRICE|X)/∂SQFT for houses that
are (i) 5 years old, (ii) 20 years old, and (iii) 40 years old. How do these estimates change as
AGE increases? (Refer to the file collegetown.def for the definition of AGE.)

$\frac{\delta E(PRICE|X)}{\delta SQFT} = b_2 + 2*b_3 *AGE$ = 0.08471+0.02758 * AGE$

$\frac{\delta m}{\delta SQFT} = m$

$\frac{\delta m}{\delta b_2} = 1$

$\frac{\delta m}{\delta b_3} = 2AGE$

$se(f) = \sqrt{\sum c_i^2var(b_i) + \sum_{i \ne j} 2c_ic_jcov(b_i, b_j)}$\
```
b2 <- linear_model$coefficients[[2]]
b3 <- linear_model$coefficients[[3]]

var_b2 <- vcov(linear_model)[2, 2]
var_b3 <- vcov(linear_model)[3, 3]

cov_b2_b3 <- vcov(linear_model)[2, 3]


alpha <- 0.05
N = length(sqft)
t_stat <- qt(1-alpha/2, df = N-3)

d_MarginalEffect <- function(d_age){
  ME = b2 + 2*b3*d_age
  cat("Marginal Effect: ", ME, "\n")
  c2 <- 1
  c3 <- 2 
  se = sqrt(c2^2 * var_b2 + c3^2 * var_b3  + 2*c2*c3*cov_b2_b3 )
  upper = ME + t_stat * se
  lower = ME - t_stat * se
  cat("The 95% Confidence Interval: [", lower, ", ", upper, "]\n")
}


```

AGE variable categories:

New		1

1-3 Years 	2

4-5 Years	3

6-10 Years	4

11-15 Years	5

16-20 Years	6

21-30 Years	7

31-40 Years	8

41-50 Years	9

51-75 Years	10

76+ Years	11

(i) 5 years old

```
d_age_1 = 3
d_MarginalEffect(d_age_1)

```
Marginal Effect:  0.1674482 
The 95% Confidence Interval: [ -0.7062835 ,  1.04118 ]


(ii) 20 years old

```
d_age_2 = 6
d_MarginalEffect(d_age_2)

```
Marginal Effect:  0.2501892 
The 95% Confidence Interval: [ -0.6235425 ,  1.123921 ]

(iii) 40 years old

```
d_age_3 = 8
d_MarginalEffect(d_age_3)

```
Marginal Effect:  0.3053498 
The 95% Confidence Interval: [ -0.5683819 ,  1.179082 ]

由於 AGE 為類別變數， 若房屋年齡增加幅度沒有使 AGE 增加 (例如: 12 增加到 14， AGE 仍為 1 ) ，則其他變數不改變。




