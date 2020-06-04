---
title: "The Humdrum Toolkit for Computational Music Analysis"
authors: Craig Sapp and Daniel Shanahan
tags: [getting_started]
sidebar: main_sidebar
permalink: index.html
---

<p class="text-center">
<a href="/guide/ch01/index.html#what-can-humdrum-do" class="btn btn-primary btn-lg btn-responsive">What Can Humdrum Do?</a>
<a href="https://github.com/humdrum-tools/humdrum-tools" class="btn btn-primary btn-lg btn-responsive">Installation</a>
<a href="/guide" class="btn btn-primary btn-lg btn-responsive">User Guide</a>
<a href="/tool" class="btn btn-primary btn-lg btn-responsive">Tools</a>
<a href="/news" class="btn btn-primary btn-lg btn-responsive">News</a>
</p>


# Welcome #

Welcome to the homepage for the Humdrum Toolkit, a set of resources
for computational music analysis.  Here you will find instructions
on downloading, installing, and using the Humdrum Toolkit as well
as other resources.

Humdrum was originally created by David Huron in the 1980s, and it
has been used steadily for decades. The Humdrum "universe" might
be thought of as consisting of two main segments: the notational
style (particularly the \*\*kern representation) and the software
for analyzing the notated material. This software exists in the
original format (the Humdrum Toolkit), as well as the updated and
extended versions (such as Craig Sapp's Humdrum Extras, and VHV/humlib).

Because the Humdrum software consists of a set of command-line
tools, it is program-language agnostic, meaning the tools can be
incorporated however you choose.  Many have employed Humdrum tools
in larger scripts that use
<a taget="_blank" href="https://en.wikipedia.org/wiki/AWK">AWK</a>,
<a taget="_blank" href="https://itnext.io/bash-scripting-everything-you-need-to-know-about-bash-shell-programming-cd08595f2fba">Bash</a>, 
<a taget="_blank" href="https://en.wikipedia.org/wiki/C%2B%2B">C++</a>, 
<a taget="_blank" href="https://en.wikipedia.org/wiki/Lisp_(programming_language)">LISP</a>, 
<a taget="_blank" href="https://www.perl.org">PERL</a>, 
<a taget="_blank" href="https://www.python.org">Python</a>,
<a taget="_blank" href="https://www.r-project.org">R</a>, 
and 
<a taget="_blank" href="https://www.ruby-lang.org/en">Ruby</a>, 
to name but a few.


## Website resources ##


<dl>
<dt markdown="1"> [Humdrum Toolkit User Guide](/guide) </dt>
<dd markdown="1"> 
A step-by-step introduction to the Humdrum Toolkit and related
concepts, written by David Huron.  Quick access to a specific chapter
in the guide can be found by clicking on the "User guide" link at
the top of any page of the website.
</dd>

<dt markdown="1"> [Tool documentation](/tool) </dt>
<dd markdown="1"> 
A list of command-line humdrum tools that are available in the
Humdrum Toolkit, Humdrum Extras and in [Verovio Humdrum
Viewer](https://verovio.humdrum.org).  Tools can be listed by source
package or general function, such as melodic, harmonic and rhythmic
tools.
</dd>

<dt markdown="1"> [Cookbook](/cookbook) </dt>
<dd markdown="1"> 
A list of how-tos and tutorials for using Humdrum tools.
</dd>

<dt markdown="1"> [Reference records](/reference-records) </dt>
<dd> 
A list of official metadata records for Humdrum data.
</dd>

<dt markdown="1"> [Instrument codes](/instrument-codes) </dt>
<dd markdown="1"> 
A list of official instrument codes for `**kern` data.
</dd>

</dl>


## Other resources ##


<dl>

<dt markdown="1"> [\*\*HUG](https://groups.google.com/forum/#!forum/starstarhug) </dt>
<dd markdown="1"> 
Star-star-HUG (Humdrum User Group) is a mailing list for announcements and general questions about Humdrum.
</dd>

<dt markdown="1"> [Verovio Humdrum Viewer](https://verovio.humdrum.org) </dt>
<dd markdown="1"> 
Verovio Humdrum Viewer (VHV) is an online Humdrum file editor with integrated graphical
notation display created the [Verovio toolkit](https://www.verovio.org).  The
[documentation website for VHV](https://doc.verovio.humdrum.org) contains an
[interactive tutorial](https://doc.verovio.humdrum.org/humdrum/getting_started) for 
learning about representing music notation in the Humdrum \*\*kern
format.  A subset of Humdrum tools can be used within the VHV text editor, primarily
tools for data processing, although some advanced analysis tools 
such as [dissonant](https://doc.verovio.humdrum.org/filter/dissonant) are also available.
VHV also allows for [importing MusicXML data](https://doc.verovio.humdrum.org/interface/musicxml) by drag-and-drop of MusicXML files into the editor.
</dd>

<dt markdown="1"> [Humdrum Notation Plugin](https://plugin.humdrum.org) </dt>
<dd markdown="1"> 
After editing scores in Verovio Humdrum Viewer, you can use the Humdrum Notation Plugin
(HNP) to display graphical scores on your own webpages.  Data can be either embedded in
the webpage, or linked to other locations on the web such as Github.  An example
usage of HNP is [this Bach chorale website](https://chorales.sapp.org).
</dd>

<dt markdown="1"> [KernScores](https://kern.humdrum.org) </dt>
<dd markdown="1"> 
KernScores is a database of Humdrum files, focusing on musical scores in the
\*\*kern format.
</dd>

<dt markdown="1"> [Github Humdrum Data](https://github.com/humdrum-tools/humdrum-data) </dt>
<dd markdown="1"> 
This Humdrum data repository on Github contains most of the complete datasets from kernScores, allowing for easy download of the data.
</dd>

<dt markdown="1"> [humlib](https://humlib.humdrum.org) </dt>
<dd markdown="1"> 
Humlib is a C++ parsing library for Humdrum files.  This library is compiled
into Javascript for use in VHV.
</dd>

<dt markdown="1"> [humdrum-js](https://js.humdrum.org) </dt>
<dd markdown="1"> 
Humdrum-js is a Javascript parsing library for Humdrum files.
</dd>


<dt markdown="1"> [music21](https://web.mit.edu/music21) </dt>
<dd markdown="1"> 
Music21 is a python environment for computational music analysis that can import Humdrum files.
</dd>


</dl>


