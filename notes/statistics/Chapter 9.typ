#import "../../templates/noteworthy_modified.typ": *
//#import "@preview/codly:1.3.0": *
//#import "@preview/codly-languages:0.1.1": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Chapter 9 - Hypothesis Testing for Single Populations",
  author: "Justin Joslin",
  url: "https://github.com/hlqGit/notes/tree/main",
  toc-title: "Contents",
  //watermark: "DRAFT",
)

// definitions
#let l = line(length: 100%, stroke: 0.5pt)
#let ll = line(length: 50%, stroke: 0.5pt)
#let tab = h(2em)
#let tab2 = h(1em)
//#codly(languages: codly-languages)
//#show: codly-init.with()

// document contents below here
= Hypothesis test for Population Mean
\
Null Hypothesis:
\
#tab $H_0:mu=mu_0$, where $mu_0$ is the hypothesized value (such as $H_0:mu = 10$). \
Alternative hypothesis: \
#tab $H_a: mu > mu_0$ (one-sided), such as $H_a: mu > 10$. \
#tab $H_a: mu < mu_0$ (one-sided), such as $H_a: mu < 10$. \
#tab $H_a: mu != mu_0$ (two-sided), such as $H_a: mu != 10$. \
\
== Requirements for applying method
\
- The sample is a simple random sample.
- The population is approximately normal distributed or $n >= 30$.

== Test Statistic 
\
*Definition*\
The test statistic is a calculated value using sample data used in making a decision about the null hypothesis. \ 
Found by converting sample statistic (e.g. $accent(x, macron)$ or $accent(p, hat)$) to find a standardized score (e.g. $z$ or $t$) with the assumption that the null hypothesis is true.\
\
*Note:*\
For a hypothesis test about a population mean, the test statistic is calculated as:\
\
- with a known $sigma$  $ z=(accent(x, macron) - mu)/(sigma\/sqrt(n)) $
- with an unknown $sigma$ $ t=(accent(x, macron) - mu)/(s\/sqrt(n)) $
\
=== Understanding the Test Statistic
- Tells us how far away sample statistic ($accent(x, macron)$) is 
\
== $p$-value Approach
\
*Definition*\
The $p$-value (or  probability value) is the probability of getting the observed, or more extreme value of the test statisic from the sample data, assuming that the null hypothesis is true.\
\
*Notes:*\
- Small $p$-values are evidence against $H_0$ because they say that the observed result would be unlikely to occur if $H_0$ is true.
- Large $p$ values fail to give evidence against $H_0$.
- The definition of "extreme" depends on how the hypothesis is being tested.
\
=== Finding $p$-value
#figure(
  image("../../figures/findingpvalue.png", width: 80%))

=== Finding $p$-value for Hypothesis Test about a $mu$
#figure(
  image("../../figures/pvalaboutmu.png", width: 100%)
)
== Critical Value Approach
\
*Definition - Rejection Region*\
The rejection region is the set of all values of the test statistic that cause us to reject the null hypothesis.\
\
*Definition - Critical Value*\
A critical value is any value that separates the rejection region (where we reject the null hypothesis) and non-rejection region. The critical values depend on the nature of the alternative hypothesis, the sampling distribution that applies, and the significance level of $alpha$.\
\
*Note:*\
The critical value approach requires first to determine a critical value for the test statistic in order to reach a statistical conclusion.
=== Rejection Region
#figure(
  image("../../figures/rejectregion.png", width: 60%))
\
=== Example:
#l
Approximate the $p$-value and critical value for the following hypothesis and their corresponding test statisics.
\
a. $H_0:mu=0$ #tab $H_a:mu>0$ #tab2 for sample of $n=25$ and $t=1.75$ with $alpha = 0.05$
#l
- One tailed (right)
*using the $p$-value approach*\
using t-table:\
1.75 is between (1.711, 2.064)\
$therefore$ $p$-value is between (0.025, 0.05)\
since $p$-value < $alpha=0.05$\
$therefore$ reject $H_0$\
\
=== Second Example:
#l
Approximate the $p$-value and critical value for the following hypothesis and their corresponding test statisics.\
b. $h_0:mu = 20; #tab H_a:mu<20$#tab2 for sample of $n=18$, $t=-2.14$, and $alpha = 0.05$
#l
- One tailed (left)\
*using the $p$-value approach*\
using t-table:\
2.14 is between (2.11, 2.567)\
$therefore p$-value is between (0.01, 0.025)\
$therefore p$-value is $< alpha=0.05$\
$therefore$ reject $H_0$\
\
*using the critical value approach*\
given $alpha = 0.5, text(" df") = 17,$ using t-table\
1.74, but that's for the right side.\
since distribution is symmetric, we can flip the value.\
critical value = -1.74\
comparing the critical value and the t-statistic:\
-2.14 < -1.74; the t-statistic is in the rejection region\
$therefore$ reject $H_0$\
\
One more approach on next page.
#pagebreak()
*with z-statistic instead of t-statistic ($sigma$ known case)*
- One tailed (left)\
- using the $p$-value approach\
z = -2.14\
using z-table:\
-2.14 area = 0.0162\
$p$-value = 0.0162\
$p$-value < $alpha$\
$therefore$ reject $H_0$\
\
- using critical value approach\
find value on z table closest to 0.5 ($alpha$)\
#sym.approx -1.645\
-2.14 < -1.645\
$therefore$ reject $H_0$\
\
=== Third Example
#l
Approximate the $p$-value and critical value for the following hypothesis and their corresponding test statisics.\
b. $h_0:mu = 120; #tab H_a:mu eq.not 120$#tab2 for sample of $n=81$, $t=1.18$, and $alpha = 0.05$
#l
- Two-tailed test
*using the $p$-value approach*
using t-table:\
1.18 is between (0.846, 1.292)\
$therefore$ $p$-value/2 is between (0.1, 0.2)\
$therefore$ $p$-value is between (0.2, 0.4)\
$therefore$ $p$-value > $alpha = 0.05$\
$therefore$ Failed to reject $H_0$\
\
*using the critical value approach*\
using t-table:\
since two tailed test, split $alpha$ in half\
df = 80\
critical value = 1.99\
t = 1.18 is in the non-rejection region (t < critical value)\
$therefore$ Failed to reject $H_0$
