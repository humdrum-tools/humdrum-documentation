---
title: 'Humdrum Toolkit Command Reference -- nf'
permalink: /tool/nf/index.html
---

### COMMAND

**nf** -- determine normal form for successive vertical sonorities in
Humdrum inputs

------------------------------------------------------------------------

### SYNOPSIS

` nf  [inputfile ...]  [> outputfile.nf]`

------------------------------------------------------------------------

### DESCRIPTION

The **nf** command is used to determine the *normal form* for any of
five set-theory related inputs: pitch (`**semits`), pitch-class
(`**pc`), prime form (`**pf`), interval-class vector (`**iv`), or
Fortean set name (`**pcset`).

\"Normal form\" is a standardized way of representing the pitch material
for any arbitrary set of pitches. Normal form provides the most
intervallically compact spelling of the pitch-classes evident in a given
sonority. It is analogous to rearranging notes in a chord so that the
spelling is in root position, close position, with duplicate
pitch-classes eliminated. By way of example, a D major chord (in any
inversion, with any spelling) will have the normal form: 2,6,9 \--
namely, the pitch-classes D, F\#, A (as opposed to 6,9,2 or 2,9,6). See
[REFERENCES](#REFERENCES) below.

When provided with `**semits` or `**pc` inputs, **nf** treats each input
record as a set of pitches. Unisons and other pitch-class duplications
have no effect on the output. Rests within a set of pitches are ignored;
where an input record consists solely of one or more rests, a null-token
is output.

The **nf** command is able to translate any of the representations
listed below. For descriptions of the various input representations
(including `**nf`) refer to Section 2 *(Representation Reference)* of
this reference manual.

It is recommended that output files produced using the **nf** command
should be given names with the distinguishing \`.nf\' extension.

>   ------------ --------------------------------------------------------------------
>   `**iv`       interval-class vector representation
>   `**nf`       normal form representation
>   `**pc`       pitch-class representation
>   `**pcset`    Fortean pitch-class set name
>   `**pf`       prime form representation
>   `**semits`   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
>   ------------ --------------------------------------------------------------------
>
*Input representations processed by **nf**.*

------------------------------------------------------------------------

### OPTIONS

The **nf** command provides only a help option:

>   -------- -------------------------------------------------------
>   **-h**   displays a help screen summarizing the command syntax
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

[**context**](context.html) (4), **\*\*iv** (2), [**iv**](iv.html) (4),
**\*\*nf** (2), **\*\*pc** (2), [**pc**](pc.html) (4), **\*\*pcset**
(2), [**pcset**](pcset.html) (4), **\*\*pf** (2), [**pf**](pf.html) (4),
**\*\*semits** (2), [**semits**](semits.html) (4)

------------------------------------------------------------------------

### NOTE

The **nf** command is a shell script that invokes `pcset -n`.

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
