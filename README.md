Griotte
=======

Griotte is a code review tool for Pharo\. More precisely, it provides an abstraction of a model for code review, and allows for implementing different backends\. These backends can then be used within the tool transparently\.

It was the result of a research internship project at INRIA\. A small presentation was made at [BENEVOL '15](http://cristal.univ-lille.fr/evolille2015/benevol.html), along with an extended abstract\. Download links:


- The abstract can be downloaded [here](https://github.com/Balletie/Griotte-Extended-Abstract/releases/download/submission-final/abstract.pdf)\.
- The presentation slides can be downloaded [here](https://github.com/Balletie/griotte-presentation/releases/download/final/presentation.pdf)\.

Currently, only a backend for GitHub is provided\. This backend uses the [Github Bindings for Pharo](https://balletie.github.io/GitHub) for its implementation\.



##1\. Installation

To install into Pharo, evaluate the following Metacello script in your Pharo 5 image:

```smalltalk
Metacello new
  baseline: 'Griotte';
  repository: 'github://Balletie/Griotte:master';
  load.
```

Replace the `master` part with any version tag to load that specific version\.

##2\. Documentation

Documentation can be found on this website, in two formats:

- [Single page](https://balletie.github.io/Griotte/html-mono/index.html)
- [Multiple pages per chapter](https://balletie.github.io/Griotte/html-chap/overview.html)

The documentation was generated with the [Pillar markup language](https://github.com/pillar-markup/pillar-documentation)\. The source of this documentation can be found under the [`docs`](https://github.com/Balletie/Griotte/tree/docs) branch in the source code repository\.

##3\. Screenshots

![Griotte open with an example review](https://github.com/Balletie/Griotte/blob/docs/figures/griotte.png)

##4\. Source code repository

The code is hosted on GitHub, at [Balletie/Griotte](https://github.com/Balletie/Griotte)\.

##5\. License

This project is released under the MIT License\. See the [`LICENSE`](https://raw.githubusercontent.com/Balletie/Griotte/master/LICENSE) file in the source repository for details\.

