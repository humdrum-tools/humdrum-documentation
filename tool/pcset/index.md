---
title: 'Humdrum Toolkit Command Reference -- pcset'
permalink: /tool/pcset/index.html
---

### COMMAND

**pcset** -- convert Humdrum pitch and pitch-class information to
set-theoretic representations

------------------------------------------------------------------------

### SYNOPSIS

` pcset  [-c]  [-n|p|v]  [inputfile ...]`

------------------------------------------------------------------------

### DESCRIPTION

The **pcset** command is used to generate and convert between various
set-theoretic representations.

By default, the output is the Fortean pitch-class set type (`**pcset`).
Alternatively, the user may choose to output the corresponding *normal
form* (`**nf`) or the more succinct *prime form* (`**pf`) or the
associated *interval-class vector* (`**iv`). See
[REFERENCES](#REFERENCES) below.

In addition to accepting `**semits` or `**pc` inputs, **pcset** can also
process `**nf`, `**iv`, `**pf` or `**pcset` inputs. This permits the
user to determine the normal form, prime form or interval-class vector
for a given pc-set, or the interval-class vector for a given pc-set,
prime form, or normal form, etc.

For all of the above translations, **pcset** also provides a
*complementation* operator, where output values corresponding to the
pitch-class set complement. For example, when the complementation option
is invoked, an input consisting of the pitch-classes (0,4,7,10) would
produce an output pertinent to the complementary set (1,2,3,5,6,8,9,11).
Complementation can be applied to any accepted input type, including
normal form, prime form, interval-class vector, and pc-set. Note that if
the input consists of all twelve pitch-classes, **pcset** produces a
null token as the set complement.

When provided with `**semits` or `**pc` inputs, **pcset** treats each
input record as a set of pitches. Unisons and other pitch-class
duplications have no effect on the output. Rests within a set of pitches
are ignored; where an input record consists solely of one or more rests,
a null-token is output.

The **pcset** command is able to translate any of the representations
listed below. For descriptions of the various input representations
(including `**pcset`) refer to Section 2 *(Representation Reference)* of
this reference manual.

It is recommended that output files produced using the **pcset** command
should be given names with the distinguishing extensions \`.pcs\',
\`.nf\' \`.pf\' or \`.iv\' \-- depending on the selected option.

>   ------------ --------------------------------------------------------------------
>   `**iv`       interval-class vector representation
>   `**nf`       normal form for pitch-class sets
>   `**pc`       pitch-class representation
>   `**pcset`    Fortean pitch-class set name
>   `**pf`       prime form representation
>   `**semits`   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
>   ------------ --------------------------------------------------------------------
>
*Input representations processed by **pcset**.*

------------------------------------------------------------------------

### OPTIONS

The **pcset** command provides the following options:

>   -------- -------------------------------------------------------
>   **-c**   generate output for set complement
>   **-h**   displays a help screen summarizing the command syntax
>   **-n**   output normal form (`**nf`) spine
>   **-p**   output prime form (`**pf`) spine
>   **-v**   output interval-class vector (`**iv`) spine
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

By default, the **pcset** command outputs a `**pcset` representation.

The **-n** option causes **pcset** to output normal form (`**nf`) data
instead of `**pcset` data. \"Normal form\" is a standard way of
representing the interval structure of any arbitrary set of
pitch-classes.

The **-p** option causes **pcset** to output the prime form (`**pf`) for
the input. Prime form is analogous to rearranging notes in a chord so
that the spelling is in root position, close position, transposed so
that the root of the chord is C. By way of example, any major chord
(having any root, in any inversion, with any spelling) will have the
normal form: 0,4,7 \-- namely, a given (basic) pitch, plus a pitch 4
semitones above than the basic pitch, plus a pitch 7 semitones above the
basic pitch. (See [REFERENCES](#REFERENCES).)

The **-v** option causes interval-class vector information (`**iv`) to
be output rather than `**pcset` data. All pitch-class sets can be
characterized according to the possible interval-classes that can be
constructed. The six-element interval-class vector specifies the
abundance of various interval-classes from 1 semitone to 6 semitones.
(See [REFERENCES](#REFERENCES).)

Note that the **iv** command, the **nf** command, and the **pf** command
are aliases for `pcset -v`, `pcset -n` and `pcset -p` respectively.

------------------------------------------------------------------------

### EXAMPLES

The following command outputs the interval-class vectors for the sets
formed by successive sonorities in the input file `webern`:

> ` pcset -v webern > webern.iv`

The following command outputs the Fortean set type for the complement of
the sonorities given in the input file `berg`:

> ` pcset -c berg > berg.pcs`

The following command outputs the normal form representation for sets
formed from successive sonorities in the input file `boulez`:

> ` pcset -n boulez.nf`

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

[context](context.html) **context** (4), **\*\*iv** (2),
[**iv**](iv.html) (4), **\*\*nf** (2), [**nf**](nf.html) (4), **\*\*pc**
(2), [**pc**](pc.html) (4), **\*\*pcset** (2), **\*\*pf** (2),
[**pf**](pf.html) (4), **\*\*semits** (2), [**semits**](semits.html) (4)

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
    Guide**](../guide34.html#The_pcset_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
