---
title:		'Humdrum Toolkit Command Reference -- nf'
author:		David Huron
vim:		ft=html
permalink:	/tool/nf/index.html
---

### COMMAND

<span class="tool">nf</span> -- determine normal form for successive vertical sonorities in
Humdrum inputs

------------------------------------------------------------------------

### SYNOPSIS

` nf  [inputfile ...]  [> outputfile.nf]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">nf</span> command is used to determine the *normal form* for any of
five set-theory related inputs: pitch (<span class="rep">semits</span>), pitch-class
(<span class="rep">pc</span>), prime form (<span class="rep">pf</span>), interval-class vector (<span class="rep">iv</span>), or
Fortean set name (<span class="rep">pcset</span>).

\"Normal form\" is a standardized way of representing the pitch material
for any arbitrary set of pitches. Normal form provides the most
intervallically compact spelling of the pitch-classes evident in a given
sonority. It is analogous to rearranging notes in a chord so that the
spelling is in root position, close position, with duplicate
pitch-classes eliminated. By way of example, a D major chord (in any
inversion, with any spelling) will have the normal form: 2,6,9 &mdash;
namely, the pitch-classes D, F\#, A (as opposed to 6,9,2 or 2,9,6). See
[REFERENCES](#REFERENCES) below.

When provided with <span class="rep">semits</span> or <span class="rep">pc</span> inputs, <span class="tool">nf</span> treats each input
record as a set of pitches. Unisons and other pitch-class duplications
have no effect on the output. Rests within a set of pitches are ignored;
where an input record consists solely of one or more rests, a null-token
is output.

The <span class="tool">nf</span> command is able to translate any of the representations
listed below. For descriptions of the various input representations
(including <span class="rep">nf</span>) refer to Section 2 *(Representation Reference)* of
this reference manual.

It is recommended that output files produced using the <span class="tool">nf</span> command
should be given names with the distinguishing \`.nf\' extension.

>   ------------ --------------------------------------------------------------------
>   <span class="rep">iv</span>       interval-class vector representation
>   <span class="rep">nf</span>       normal form representation
>   <span class="rep">pc</span>       pitch-class representation
>   <span class="rep">pcset</span>    Fortean pitch-class set name
>   <span class="rep">pf</span>       prime form representation
>   <span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
>   ------------ --------------------------------------------------------------------
>
*Input representations processed by <span class="tool">nf</span>.*

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">nf</span> command provides only a help option:

>   -------- -------------------------------------------------------
>   <span class="option">h</span>   displays a help screen summarizing the command syntax
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

------------------------------------------------------------------------

### EXAMPLES

The following command outputs the normal form for the sets formed by
successive sonorities in the input file `opus24`. The input may be
pitches, pitch-classes, Fortean set names, etc.

> ` nf opus24 > opus24.nf`

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

<span class="tool">context</span> (4), **\*\*iv** (2), <span class="tool">iv</span> (4),
**\*\*nf** (2), **\*\*pc** (2), <span class="tool">pc</span> (4), **\*\*pcset**
(2), <span class="tool">pcset</span> (4), **\*\*pf** (2), <span class="tool">pf</span> (4),
**\*\*semits** (2), <span class="tool">semits</span> (4)

------------------------------------------------------------------------

### NOTE

The <span class="tool">nf</span> command is a shell script that invokes `pcset -n`.

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
    Guide**](../guide34.html#Normal_Form)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
