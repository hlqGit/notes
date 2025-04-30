#import "../../templates/noteworthy_modified.typ": *
//#import "@preview/codly:1.3.0": *
//#import "@preview/codly-languages:0.1.1": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to the OSI Model",
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
= Overview

*What is the OSI model?*\
It is the Open Systems Interconnection Reference Model, which describes how traffic moves from one part of the network to another.\

*The OSI model is just a guideline*\
It is a broad description that covers how traffic moves, allowing us to communicate to other IT professionals in a way that we both understand.\

*Unique protocols for every layer*\
The OSI model has 7 layers, and at each layer there are a set of protocols that depend on the kind of traffic going over the network.
- Layer 7 - Application
- Layer 6 - Presentation
- Layer 5 - Session
- Layer 4 - Transport
- Layer 3 - network
- Layer 2 - Data Link
- Layer 1 - Physical
A good way to remember it is to remember the mnemonic:\
* All People Seem To Need Data Processing*