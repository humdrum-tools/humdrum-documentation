---
title:		'Humdrum Toolkit Command Reference -- urrhythm'
author:		David Huron
vim:		ft=html
permalink:	/tool/urrhythm/index.html
---

### COMMAND

**urrhythm** &mdash; characterize Johnson-Laird rhythmic prototypes in a
Humdrum passage

------------------------------------------------------------------------

### SYNOPSIS

` urrhythm  inputfile  [ > outputfile.urr]`

------------------------------------------------------------------------

### DESCRIPTION

The **urrhythm** command outputs a single Humdrum spine (`**URrhythm`)
containing data representing rhythmic \`prototypes\' (Ur-rhythms)
evident in a musical passage. The command implements a variation of
Johnson-Laird's theory of rhythmic prototypes (see
[REFERENCES](#REFERENCES) below). In order to identify the rhythmic
prototypes, **urrhythm** requires information about note onsets and
metric position. These may be provided via two input spines: `**kern`
(or `**recip`) and `**metpos`.

Johnson-Laird's rhythmic-prototype theory can be applied only to
musical passages conforming to some established metric context, such as
2/4, 3/2, or 12/8 meters. The **urrhythm** command handles all regular
types of meters (simple and compound, duple, triple and quadruple).
Specifically, any meter having a \"numerator\" of 2, 3, 4, 6, 9, or 12
can be processed. **Urrhym** adapts to changes of meter, but is unable
to handle irregular meters. If an irregular meter is encountered in the
input an error is generated and the command terminates.

**urrhythm** characterizes each beat in a passage as belonging to one of
three beat types: *Note* (N), *Syncopation* (S), or *Other* (O). Only
major beats are characterized in this way. Hence, in 3/4 or 9/8 meters,
three beats will be characterized for each complete measure. Similarly,
in 4/2 and 12/16, four beats will be characterized for each complete
measure.

A \"Note\" (signified in the output by the letter \`N\') is defined as a
beat that coincides with a note onset.

A \"Syncopation\" (signified by the letter \`S\') is defined as arising
when no note-onset happens on a beat whose position in the metric
hierarchy is greater than that of the most recent note onset. By way of
example, imagine a measure in 4/4 meter containing a quarter-note,
followed by a half-note, followed by a quarter-note. The third beat
position does not coincide with a note onset. The most recent note onset
prior to the third beat occurs on beat two. Since beat three is a more
important metric position than beat two, beat three is deemed to be
syncopated.

Syncopated beats can happen only after the first note onset; subsequent
syncopated moments will require another note onset (i.e. two syncopated
moments can't occur in a row without some note onset intervening).

An \"Other\" (signified by the letter \`O\') is any beat that is not a
Note (N) or a syncopation (S).

It is recommended that output files produced using the **urrhythm**
command should be given names with the distinguishing \`.urr\'
extension.

------------------------------------------------------------------------

### OPTIONS

The **urrhythm** command provides only a help option:

>   -------- -------------------------------------------------------
>   **-h**   displays a help screen summarizing the command syntax
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

------------------------------------------------------------------------

### EXAMPLES

The following example illustrates the operation of **urrhythm.** The
first two spines (`**kern` and `**metpos`) constitute the input. The
third spine (`**URrhythm`) is added by the **urrhythm** command. All
three spines are given in the output. ``

>   ---------- ------------ --------------
>   \*\*kern   \*\*metpos   \*\*URrhythm
>   \*M4/4     \*M4/4       \*M4/4
>   \*tb8      \*tb8        \*tb8
>   8g         3            N
>   8g\#       4            .
>   8a         2            N
>   \[8cc      4            .
>   8cc\]      3            S
>   8a         4            .
>   =1         =1           =1
>   4.cc       1            N
>   .          4            .
>   .          3            O
>   \[8b-      4            .
>   4.b-\]     2            S
>   .          4            .
>   .          3            O
>   \[8g       4            .
>   =2         =2           =2
>   8g\]       1            S
>   \[8e-      4            .
>   8e-\]      3            S
>   4.r        4            .
>   .          2            O
>   .          4            .
>   \[4c       3            N
>   .          4            .
>   =3         =3           =3
>   2c\]       1            S
>   .          4            .
>   .          3            O
>   .          4            .
>   4r         2            O
>   .          4            .
>   \*-        \*-          \*-
>   ---------- ------------ --------------
>
------------------------------------------------------------------------

### WARNINGS

The **urrhythm** command is currently unable to handle Humdrum
spine-path changes &mdash; such as join-path, exchange-path, or split-path.
If spine-path changes are encountered an error is issued and the command
terminates.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **kern (2), **metpos (2),  metpos (4), **recip (2),  timebase (4),  synco (4), **URrhythm (2)`

------------------------------------------------------------------------

### NOTE

The **urrhythm** command differs from Johnson-Laird's theory in the
definition of syncopation. Johnson-Laird's theory requires that a
listener be able to identify a syncopation retrospectively. That is, a
listener is able to determine whether the current beat is a syncopation,
only by determining what happens at the beginning of the next beat. The
algorithm used here avoids the theoretical assumption of backward
listening. (See [Simpson & Huron,
1993](/Humdrum/Huron/publications.html).)

------------------------------------------------------------------------

[]{#REFERENCES}

### REFERENCES

Johnson-Laird, P. \"Rhythm and meter: A theory at the computational
level,\" *Psychomusicology,* Vol. 10 (1991) pp. 88-106.

[Simpson, J. & Huron, D.](/Humdrum/Huron/publications.html) \"The
perception of rhythmic similarity: A test of a modified version of
Johnson-Laird's theory,\" *Canadian Acoustics,* Vol. 21, No. 3 (1993)
pp. 89-90.

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
