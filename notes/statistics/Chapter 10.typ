#import "../../templates/noteworthy_modified.typ": *
//#import "@preview/codly:1.3.0": *
//#import "@preview/codly-languages:0.1.1": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Chapter 10 - Hypothesis Testing with Two Populations",
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
= Comparing Two Population Means: Independent Samples
\
#l
== Hypotheses

Null Hypothesis:\
#tab $H_0:mu_1-mu_2=D_0 tab text("or") tab H_0:mu_1=mu_2 text("if") D_0 = 0$\
$D_0$ is the hypothesized difference between the two means.
#l
== Conditions for the significance test for $mu_1-mu_2$
- Quantatative varaible with $mu_1$ and $mu_2$ defined in context
- Data is obtained using randomization (like simple random sampling)
- Both population distributions are approximately normal (or $n_1 + n_2 >= 20$)
- Populations are independent, which result in independent samples
- Population standard deviations are unknown.
#l
== Properties of Sampling Distribution of $accent(X, macron)_1 - accent(X, macron)_2$
- The mean of the sampling distribution of $accent(X, macron)_1 - accent(X, macron)_2$ is $mu_1 - mu_2$; that is\
$ E (accent(X, macron)_1 - accent(X, macron)_2)=mu_1-mu_2 $
- The standard deviation ("standard error") of the sampling distribution of $accent(X, macron)_1 - accent(X, macron)_2$ is\
$ sigma_(accent(X, macron)_1 - accent(X, macron)_2)=sqrt(sigma_1^2/n_1+sigma_2^2/n_2) $

#pagebreak()
== Properties of Sampling Distribution $accent(x, macron)_1 - accent(x, macron)_2$
Because we don't know population standard deviations, they are estimated using the two sample standard deviations from our independent samples.\
The two-sample *test statistic* is calculated as:\
$ t=((accent(X, macron)_1 - accent(X, macron)_2)-D_0)/sqrt(s_1^2/n_1+s_2^2/n_2) $\
where
- $accent(x,macron)_1$ and $accent(x,macron)_2$ are the sample means
- $s_1$ and $s_2$ are the sample standard deviations
- $n_1$ and $n_2$ are the sample sizes of each sample.\
The Test statistic gives us how many standard errors $accent(x, macron)_1 - accent(x, macron)_2$ is away from $D_0$
#l
== Degrees of Freedom (df)
The t-table is used to find the $p$-value based on the degrees of freedom.\
The test statistic is approximated using the t-distribution with $d f$ as follows:
$ d f=((s_1^2/n_1+s_2^2/n_2)^2)/((1/(n_1-1))(s_1^2/n_1)^2+(1/(n_2-1))(s_2^2/n_2)^2) $ 
#l
== $p$-value and Conclusion
\
#ll
*Example:*\
The Kona Corporation produces coconut milk. They have both a day shift (called the B shift) and a night shift (call the G shift) to do the process. They would like to know if the day shift and the night shift are equally efficient in processing the coconuts. A study is done sampling 9 G shifts and 16 B shifts. The average number of hours to process 100 pounds of coconuts for G shift and B shift are 2 and 3.2 hours. The sample standard deviation for the G and B shift are 0.866 and 1.00. The number of hours to process 100 pounds of coconuts for both shifts are normally distributed. Is there a difference in the mean amount of time for each shift to process 100 pounds of coconuts? Test at the 5% level of significance.
#ll
(solved on next page.)
\
#pagebreak()
- first get all data from the question
$n_1=16 tab accent(x, macron) = 3.2 tab s_1 = 1$\
$n_2=9 tab accent(x, macron) = 2 tab s_2 = 0.866$\
\
- determine if it meets conditions
#tab Simple random sample, both populations quantitative, normal population

- get the t-statistic
#tab To get the t-statistic, plug data into formula:
$ t=((accent(X, macron)_1 - accent(X, macron)_2)-D_0)/sqrt(s_1^2/n_1+s_2^2/n_2)=((3.2-2)-0)/sqrt((1)^2/16+(0.866)^2/9) =3.142 $
#tab now we need degrees of freedom\

$ d f=((s_1^2/n_1+s_2^2/n_2)^2)/((1/(n_1-1))(s_1^2/n_1)^2+(1/(n_2-1))(s_2^2/n_2)^2)=((1)^2/16+(0.866)^2/9)^2/((1/16-1)(1^2/16)^2+(1/9-1)(0.866^2/9)^2) approx 18.847 $ 
#tab always round df up meaning 19 degrees of freedom.\
#tab We find our t-statistic on the t-table with a value of 2.861.\
#tab *Conclusion:*\
#tab $t=3.142 > 2.861$ #tab2 on t-table, so $(p text("-value"))/2 < 0.005$\
#tab $p$-value $<0.01 < alpha = 0.05$\
#tab $therefore$ reject $H_0$\
