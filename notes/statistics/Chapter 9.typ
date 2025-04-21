#import "../../templates/noteworthy_modified.typ": *
//#import "@preview/codly:1.3.0": *
//#import "@preview/codly-languages:0.1.1": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Hypothesis Testing for Single Populations",
  chapter: "Chapter 9",
  author: "Justin Joslin",
  url: "https://github.com/hlqGit/notes/tree/main",
  toc-title: "Contents",
  //watermark: "DRAFT", // Optional: Watermark for the document
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
*$p$-value Approach*\
using t-table:\
1.75 is between (1.711, 2.064)\
$therefore$ $p$-value is between (0.025, 0.05)\
since $p$-value < $alpha=0.05$\
$therefore$ reject $H_0$\