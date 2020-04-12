---
title:		'Humdrum Toolkit Command Reference -- pf'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/pf/index.html
---


### COMMAND

<span class="tool">pf</span> -- determine prime form for successive Humdrum vertical
sonorities

------------------------------------------------------------------------

## SYNOPSIS ##

` pf  [inputfile ...]  [> outputfile.pf]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">pf</span> command is used to determine the *prime form* for any of five
set-theory related inputs: pitch (<span class="rep">semits</span>), pitch-class (<span class="rep">pc</span>),
normal form (<span class="rep">nf</span>), interval-vector (<span class="rep">iv</span>), or Fortean set name
(<span class="rep">pcset</span>).

\"Prime form\" is a standardized way of representing the symmetrical
interval structure for any arbitrary set of pitch-classes. Prime form is
the most intervalically compact representation of a pitch-class set,
transposed to begin on pitch-class 0 &mdash; where inversions are deemed
equivalent. By way of example, any major or minor chord, having any
root, in any inversion, consisting of any number of notes, with any
spelling, will have the prime form: 0,3,7. See [REFERENCES](#REFERENCES)
below.

When provided with <span class="rep">semits</span> or <span class="rep">pc</span> inputs, <span class="tool">pf</span> treats each input
record as a set of pitches. Unisons and other pitch-class duplications
have no effect on the output. Rests within a set of pitches are ignored;
where an input record consists solely of one or more rests, a null-token
is output. The <span class="tool">pf</span> command can also accept other set theoretic
inputs, such as <span class="rep">nf</span>, <span class="rep">iv</span>, <span class="rep">pcset</span>, as well as <span class="rep">pf</span> itself.

The following table identifies the input representations accepted by
<span class="tool">pf</span>. For descriptions of the various input representations (including
<span class="rep">pf</span>) refer to Section 2 *(Representation Reference)* of this
reference manual.

It is recommended that output files produced using the <span class="tool">pf</span> command
should be given names with the distinguishing \`.pf\' extension.

>   ------------ --------------------------------------------------------------------
>   <span class="rep">iv</span>       interval-class vector representation
>   <span class="rep">nf</span>       normal form representation
>   <span class="rep">pc</span>       pitch-class representation
>   <span class="rep">pcset</span>    Fortean pitch-class set name
>   <span class="rep">pf</span>       prime form representation
>   <span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
>   ------------ --------------------------------------------------------------------
>
*Input representations processed by <span class="tool">pf</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">pf</span> command provides only a help option:

> >   -------- -------------------------------------------------------
> >   <span class="option">h</span>   displays a help screen summarizing the command syntax
> >   -------- -------------------------------------------------------
> >
Options are specified in the command line.

------------------------------------------------------------------------

## EXAMPLES ##

The following command outputs the prime form for the sets formed by
successive sonorities in the input file `opus24`. The input may be
pitches, pitch-classes, Fortean set names, etc.

> ` pf opus24 > opus24.pf`

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">context</span> (4), **\*\*iv** (2), <span class="tool">iv</span> (4),
**\*\*nf** (2), <span class="tool">nf</span> (4), **\*\*pc** (2), <span class="tool">pc</span>
(4), **\*\*pcset** (2), <span class="tool">pcset</span> (4), **\*\*pf** (2),
**\*\*semits** (2), <span class="tool">semits</span> (4)

------------------------------------------------------------------------

## NOTE ##

The <span class="tool">pf</span> command is a shell script that invokes `pcset -p`.

------------------------------------------------------------------------

[]{#REFERENCES}

## REFERENCES ##

Allen Forte, *The Structure of Atonal Music.* New Haven: Yale University
Press, 1973.

John Rahn, *Basic Atonal Theory.* New York: Longman Inc., 1980.

Straus, J. *Introduction to Post-Tonal Theory.* Englewood Cliffs, N.J.:
Prentice Hall, 1990.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide34.html#Prime_Form)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
