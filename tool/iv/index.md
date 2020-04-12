---
title:		'Humdrum Toolkit Command Reference -- iv'
author:		David Huron
vim:		ft=html
permalink:	/tool/iv/index.html
---


### COMMAND

<span class="tool">iv</span> &mdash; determine interval-class vectors for successive vertical
sonorities for Humdrum inputs

------------------------------------------------------------------------

### SYNOPSIS

` iv  [inputfile ...]  [> outputfile.iv]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">iv</span> command is used to determine the *interval-class vector* for
any of five set-theory related inputs: pitch (<span class="rep">semits</span>), pitch-class
(<span class="rep">pc</span>), normal form (<span class="rep">nf</span>), prime form (<span class="rep">pf</span>), or Fortean set name
(<span class="rep">pcset</span>). An interval-class vector is a six-element numerical list
that indicates the abundance of various interval-classes (from 1
semitone to 6 semitones) for some pitch-class set. See
[REFERENCES](#REFERENCES) below.

When provided with <span class="rep">semits</span> or <span class="rep">pc</span> inputs, <span class="tool">iv</span> treats each input
record as a set of pitches. Unisons and other pitch-class duplications
have no effect on the output. Rests within a set of pitches are ignored;
where an input record consists solely of one or more rests, a null-token
is output.

The <span class="tool">iv</span> command is able to translate any of the representations
listed below. For descriptions of the various input representations
(including <span class="rep">iv</span>) refer to Section 2 *(Representation Reference)* of
this reference manual.

It is recommended that output files produced using the <span class="tool">iv</span> command
should be given names with the distinguishing \`.iv\' extension.

>   ------------ --------------------------------------------------------------------
>   <span class="rep">iv</span>       interval-class vector representation
>   <span class="rep">nf</span>       normal form representation
>   <span class="rep">pc</span>       pitch-class representation
>   <span class="rep">pcset</span>    Fortean pitch-class set name
>   <span class="rep">pf</span>       prime form representation
>   <span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
>   ------------ --------------------------------------------------------------------
>
*Input representations processed by <span class="tool">iv</span>.*

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">iv</span> command provides only a help option:

>   -------- -------------------------------------------------------
>   <span class="option">h</span>   displays a help screen summarizing the command syntax
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

------------------------------------------------------------------------

### EXAMPLES

The following command outputs the interval-class vectors for successive
sonorities in the input file `opus24`. The input may be pitches,
pitch-classes, normal forms, Fortean set names, etc.

> ` iv opus24 > opus24.iv`

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

<span class"tool">context</span> (4), **\*\*iv** (2), **\*\*nf** (2),
<span class"tool">nf</span> (4), **\*\*pc** (2), <span class"tool">pc</span> (4),
**\*\*pcset** (2), <span class"tool">pcset</span> (4), **\*\*pf** (2),
<span class"tool">pf</span> (4), **\*\*semits** (2), <span class"tool">semits</span> (4)

------------------------------------------------------------------------

### NOTE

The <span class="tool">iv</span> command is a shell script that invokes `pcset -v`.

------------------------------------------------------------------------

[]{#REFERENCES}

### REFERENCES

Allen Forte, *The Structure of Atonal Music.* New Haven: Yale University
Press, 1973.

John Rahn, *Basic Atonal Theory.* New York: Longman Inc., 1980.

Straus, J. *Introduction to Post-Tonal Theory.* Englewood Cliffs, N.J.:
Prentice Hall, 1990.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide34.html#Interval_Vectors_Using_the_iv_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
