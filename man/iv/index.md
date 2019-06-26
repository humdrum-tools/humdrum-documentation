---
title: 'Humdrum Toolkit Command Reference \-- iv'
permalink: /man/iv
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

------------------------------------------------------------------------

### COMMAND

**iv** \-- determine interval-class vectors for successive vertical
sonorities for Humdrum inputs

------------------------------------------------------------------------

### SYNOPSIS

` iv  [inputfile ...]  [> outputfile.iv]`

------------------------------------------------------------------------

### DESCRIPTION

The **iv** command is used to determine the *interval-class vector* for
any of five set-theory related inputs: pitch (`**semits`), pitch-class
(`**pc`), normal form (`**nf`), prime form (`**pf`), or Fortean set name
(`**pcset`). An interval-class vector is a six-element numerical list
that indicates the abundance of various interval-classes (from 1
semitone to 6 semitones) for some pitch-class set. See
[REFERENCES](#REFERENCES) below.

When provided with `**semits` or `**pc` inputs, **iv** treats each input
record as a set of pitches. Unisons and other pitch-class duplications
have no effect on the output. Rests within a set of pitches are ignored;
where an input record consists solely of one or more rests, a null-token
is output.

The **iv** command is able to translate any of the representations
listed below. For descriptions of the various input representations
(including `**iv`) refer to Section 2 *(Representation Reference)* of
this reference manual.

It is recommended that output files produced using the **iv** command
should be given names with the distinguishing \`.iv\' extension.

>   ------------ --------------------------------------------------------------------
>   `**iv`       interval-class vector representation
>   `**nf`       normal form representation
>   `**pc`       pitch-class representation
>   `**pcset`    Fortean pitch-class set name
>   `**pf`       prime form representation
>   `**semits`   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
>   ------------ --------------------------------------------------------------------
>
*Input representations processed by **iv**.*

------------------------------------------------------------------------

### OPTIONS

The **iv** command provides only a help option:

>   -------- -------------------------------------------------------
>   **-h**   displays a help screen summarizing the command syntax
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

[**context**](context.html) (4), **\*\*iv** (2), **\*\*nf** (2),
[**nf**](nf.html) (4), **\*\*pc** (2), [**pc**](pc.html) (4),
**\*\*pcset** (2), [**pcset**](pcset.html) (4), **\*\*pf** (2),
[**pf**](pf.html) (4), **\*\*semits** (2), [**semits**](semits.html) (4)

------------------------------------------------------------------------

### NOTE

The **iv** command is a shell script that invokes `pcset -v`.

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
