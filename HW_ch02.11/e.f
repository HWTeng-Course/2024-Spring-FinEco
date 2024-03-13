### This homework is written by 吳亭儀 (312707011)
## 02.11 (e)
**Question:**\
For the log-linear model in part (d), calculate $\hat{y}$ = exp(3.14 + 0.007x) when x = 20 and when x = 30. Evaluate the slope of the relation between y and x, dy/dx, for each of these $\hat{y}$ values. Based on these calculations for the log-linear model, is expenditure on food away from home increasing
with respect to income at an increasing or decreasing rate?

**Ans:**\
When x = 20, the slope of the relation between y and x is 0.1860304.
When x = 30, the slope of the relation between y and x is 0.1995191.
The increasing of slope when x is increasing shows that y increasing with respect to x at an increasing rate.
→ expenditure on food away from home increasing with respect to income at an increasing or decreasing rate?


**Sample code**
```
x1 = 20
y_hat1 = exp(3.14 + 0.007*x1)
slope1 = 0.007*exp(3.14 + 0.007*x1)
slope1
x2 = 30
y_hat2 = exp(3.14 + 0.007*x2)
slope2 = 0.007*exp(3.14 + 0.007*x2)
slope2
```
## 02.11 (d)
**Question:**\
When estimating the log-linear model in part (d), the number of observations used in the regression falls to N = 2005. How many households in the sample reported no expenditures on food away from home in the past quarter?

**Ans:**\
#取ln時不得為0
#故表示有2334 - 2005 = 329 householdes in the sample reported no expenditures on food away from home in the past quarter
