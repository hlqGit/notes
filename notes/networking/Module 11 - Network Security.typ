#import "../../templates/noteworthy_modified.typ": *
//#import "@preview/codly:1.3.0": *
//#import "@preview/codly-languages:0.1.1": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Module 11 - Network Security | Goals and Threats",
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
= Objectives

- Explain the importance of network Security
- Outline major threats to network security
- Assess the major security goals of business organizations today
- Describe how to conduct a risk assessment
- List the risk assessment frameworks commonly used today
- Describe 5 common steps associated with risk assessment
- Identify major threats to ensuring business continuity and describe ways to effectibely counter these threats
#l
= Importance of Network Security
\
#tab The rise of the Internet has redefined the nature of information security. More and more people are starting using the internet.

#tab The number of security incidents grows by about 30% per year. In 2016, about 50 million passwords were stolen, and 51% of adults from a survey of 1,500 people claimed they experienced some cyber security incident.

#tab Laws have been made to try to improve the crime rate over the internet, but they have been slow to catch up. There is still much left to learn about the true depth of the internet

#pagebreak()
= Organizations Focused on Cyber Crime
\
#tab Many organizations, private and public, focus on helping individuals, organiztions, and governments to protect themselves from cyber crime.
- CERT (Computer Emergency Response Team) at Carnegie Mellon University
- APWG (Anti-Phishing Working Group)
- McAfee
- Symantec
#l
= Rise of Cybercrime
\
#tab Cyber crime has now become a "profession" that is done for profit. Another type of cyber crime is hacktavism, which is hacking to bring attention to a larger political or social goal.

#tab Not only that, but cyber crime has gone up because of the rise in mobile devices as well. Since mobile devices, such as cellphones and iPads, are so widely available
#l
= The Need for Network Security
\
#tab Network security has become increasingly important because of a few things. There is more potentail vulnerability for organization's assets. There have also been more well-publicized security break-ins. 

#tab A company can experience huge losses when security failures occur. Companies are obligated to protect customer privacy and prevent the risk of identity theft. 

#tab Lastly there is a lot of value in the data stored on most organizations' networks and a lot of value provided by the application systems in use (far exceeding the cost of the networks themselves)
#l
= Security Threats
\
- Threats to #highlight("Business Continuity")
  - Disruption - Ex: switch failure, cut cable
  - Destruction of Data - Ex: virus destroys failures
  - disasters - Ex: fire burns down data center
- Threat of #highlight("Unauthorized Access/Intrusion")
  - External attackers gaining Access
  - Most unauthorized access incidents #highlight("involve employees")
    - principle of least privilage (only have as much access as you need)
