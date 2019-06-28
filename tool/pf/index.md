---
title: 'Humdrum Toolkit Command Reference -- pf'
permalink: /tool/pf/index.html
---


### COMMAND

**pf** -- determine prime form for successive Humdrum vertical
sonorities

------------------------------------------------------------------------

### SYNOPSIS

` pf  [inputfile ...]  [> outputfile.pf]`

------------------------------------------------------------------------

### DESCRIPTION

The **pf** command is used to determine the *prime form* for any of five
set-theory related inputs: pitch (`**semits`), pitch-class (`**pc`),
normal form (`**nf`), interval-vector (`**iv`), or Fortean set name
(`**pcset`).

\"Prime form\" is a standardized way of representing the symmetrical
interval structure for any arbitrary set of pitch-classes. Prime form is
the most intervalically compact representation of a pitch-class set,
transposed to begin on pitch-class 0 \-- where inversions are deemed
equivalent. By way of example, any major or minor chord, having any
root, in any inversion, consisting of any number of notes, with any
spelling, will have the prime form: 0,3,7. See [REFERENCES](#REFERENCES)
below.

When provided with `**semits` or `**pc` inputs, **pf** treats each input
record as a set of pitches. Unisons and other pitch-class duplications
have no effect on the output. Rests within a set of pitches are ignored;
where an input record consists solely of one or more rests, a null-token
is output. The **pf** command can also accept other set theoretic
inputs, such as `**nf`, `**iv`, `**pcset`, as well as `**pf` itself.

The following table identifies the input representations accepted by
**pf.** For descriptions of the various input representations (including
`**pf`) refer to Section 2 *(Representation Reference)* of this
reference manual.

It is recommended that output files produced using the **pf** command
should be given names with the distinguishing \`.pf\' extension.

>   ------------ --------------------------------------------------------------------
>   `**iv`       interval-class vector representation
>   `**nf`       normal form representation
>   `**pc`       pitch-class representation
>   `**pcset`    Fortean pitch-class set name
>   `**pf`       prime form representation
>   `**semits`   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
>   ------------ --------------------------------------------------------------------
>
*Input representations processed by **pf**.*

------------------------------------------------------------------------

### OPTIONS

The **pf** command provides only a help option:

> >   -------- -------------------------------------------------------
> >   **-h**   displays a help screen summarizing the command syntax
> >   -------- -------------------------------------------------------
> >
Options are specified in the command line.

------------------------------------------------------------------------

### EXAMPLES

The following command outputs the prime form for the sets formed by
successive sonorities in the input file `opus24`. The input may be
pitches, pitch-classes, Fortean set names, etc.

> ` pf opus24 > opus24.pf`

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

[**context**](context.html) (4), **\*\*iv** (2), [**iv**](iv.html) (4),
**\*\*nf** (2), [**nf**](nf.html) (4), **\*\*pc** (2), [**pc**](pc.html)
(4), **\*\*pcset** (2), [**pcset**](pcset.html) (4), **\*\*pf** (2),
**\*\*semits** (2), [**semits**](semits.html) (4)

------------------------------------------------------------------------

### NOTE

The **pf** command is a shell script that invokes `pcset -p`.

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
    Guide**](../guide34.html#Prime_Form)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
