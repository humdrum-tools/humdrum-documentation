---
title: 'Humdrum Toolkit Command Reference \-- pc'
permalink: /man/pc
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

------------------------------------------------------------------------

### COMMAND

**pc** \-- translate Humdrum semitone representation or pc to
pitch-class

------------------------------------------------------------------------

### SYNOPSIS

` pc  [-atx]  [inputfile ...]  [ > outputfile.pc]`

------------------------------------------------------------------------

### DESCRIPTION

The **pc** command transforms various pitch-related inputs to
corresponding numerical pitch-class equivalents: C=0, C-sharp/D-flat=1,
D=2, . . . B=11. It outputs one or more Humdrum `**pc` spines containing
pitch-class values corresponding to each of the input pitch tokens. For
example, the `**semits` token \"-13\" is transformed to 11 (pc).

The **pc** command is able to translate any of the pitch-related
representations listed below. In each case, a tuning standard of A4
equals 440 hertz is assumed. For descriptions of the input and output
representations refer to Section 2 *(Representation Reference)* of this
reference manual.

It is recommended that output files produced using the **pc** command
should be given names with the distinguishing \`.pc\' extension.

>   ------------ ---------------------------------------------------------------------------
>   `**cents`    hundredths of a semitone with respect to middle C=0 (e.g. 1200 equals C5)
>   `**freq`     fundamental frequency (in hertz)
>   `**kern`     core pitch/duration representation
>   `**pc`       pitch-class representation
>   `**pitch`    American National Standards Institute pitch notation (e.g. \"A\#4\")
>   `**semits`   equal-tempered semitones with respect to middle C=0
>   `**solfg`    French solfège system (fixed \`doh\')
>   `**specC`    spectral centroid (in hertz)
>   `**Tonh`     German pitch system
>   ------------ ---------------------------------------------------------------------------
>
*Input representations processed by **pc**.*

Note that the **pc** command is also able to reprocess pitch-class
(`**pc`) inputs. This allows pitch-class representations to be
translated from numeric-only (0,1,2,3 \... 9,10,11) to mixed
alphanumeric (0,1,2,3 \... 9,A,B) or vice versa. (See documentation for
`**pc (2)`.)

------------------------------------------------------------------------

### OPTIONS

The **pc** command provides the following options:

>   -------- ---------------------------------------------------------------------------------
>   **-a**   output alphanumeric representation (where A=10, B=11)
>   **-h**   displays a help screen summarizing the command syntax
>   **-t**   suppresses printing of all but the first note of a group of tied `**kern` notes
>   **-x**   suppresses printing of non-pitch-class data
>   -------- ---------------------------------------------------------------------------------
>
Options are specified in the command line.

The **-a** option invokes an alternative (alphanumeric) form of the
`**pc` output where the upper-case letters \`A\' and \`B\' are
substituted for the pitch-class integers 10 and 11, respectively. In
addition, the input alias values \`T\' (ten) and \`E\' (eleven) are
transformed to \`A\' and \`B\'. Encodings using mixed alphanumeric
values are often better suited to pattern-matching and searching tasks.
Encodings using purely numeric values are especially useful when the
representation is to be processed numerically.

The **-t** option ensures that only a single output value is given for
tied `**kern` notes; the output coincides with the first note of the
tie.

Note that **pc** will round-off frequencies and non-integer semitone
input values to the nearest pitch-class. Hence, an input `**semits` data
token of 5.6 will be rendered in the `**pc` output as the value 6.
Similarly, the input `**freq` value 452.1 will be rendered in the `**pc`
output as the value 9.

In the default operation, **pc** outputs non-pitch-related signifiers in
addition to the pitch-class value. For example, the `**semits` token
\"X15yz\" will result in the output \"X3yz\" \-- that is, after
translating 15 to pitch-class 3, the \"Xyz\" signifiers are retained in
the output. The **-x** option is useful for eliminating
non-pitch-class-related signifiers from the output.

------------------------------------------------------------------------

### EXAMPLES

The following example illustrates the use of **pc.** The input contains
four spines \-- one of which (`**foo`) cannot be processed by **pc.** ``

>   -------------------- ---------- ------------ ---------
>   !! \`pc\' example.                           
>   \*\*semits           \*\*kern   \*\*pc       \*\*foo
>   \*M2/4               \*M2/4     \*           \*
>   =1                   =1         =1           .
>   8x                   8ee-       abc9 xyz10   A
>   .                    .          BCD          A
>   \#18@                8ff        .            B
>   23.1 -16             8dd-       .            B
>   (-2)                 8d-        8 7.         C
>   -12\...              .          0.8          C
>   =2                   =2         =2           D
>   \[3.0abc19           \[4a-      \(2) 3       D
>   &\]                  4a-\]      6&?          E
>   =3                   =3         =3           E
>   r                    2r         5 4          .
>   ===                  ==         ====         .
>   \*-                  \*-        \*-          \*-
>   -------------------- ---------- ------------ ---------
>
Executing the command

> ` pc -xt input > output.pc`

produces the following result: ``

>   -------------------- -- -------- -- -------- -- ---------
>   !! \`pc\' example.                              
>   \*\*pc                  \*\*pc      \*\*pc      \*\*foo
>   \*M2/4                  \*M2/4      \*          \*
>   =1                      =1          =1          .
>   8                       3           9 10        A
>   .                       .           B           A
>   6                       5           .           B
>   11 8                    1           .           B
>   10                      1           8 7         C
>   0                       .           0           C
>   =2                      =2          =2          D
>   3                       8           2 3         D
>   .                       .           6           E
>   =3                      =3          =3          E
>   r                       r           5 4         .
>   ===                     ==          ====        .
>   \*-                     \*-         \*-         \*-
>   -------------------- -- -------- -- -------- -- ---------
>
Both processed and unprocessed spines are output. Notice that the `**pc`
value \`B\' in the token \`BCD\' has been maintained in the first
measure. Notice that for the data tokens in the first spine of measure
2, only the first numerical value in the input data tokens is processed.
More than one numerical value is output only if the input token is truly
a multiple-stop (as in the third spine of measure 1). Also notice that
the tied note in the second spine at the beginning of measure 2 has been
rendered as a single value \`8\' (due to the **-t** option).

------------------------------------------------------------------------

### FILES

The file *x\_option.awk* is used by this program when the **-x** option
is invoked.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **cents (2),  cents (4), **freq (2),  freq (4), **iv (2),  iv (4), **kern (2),  kern (4), **nf (2),  nf (4), **pc (2), **pcset (2),  pcset (4), **pf (2),  pf (4), **pitch (2),  pitch (4), **semits (2),  semits (4), **solfg (2),  solfg (4), **specC (2)  specC (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide34.html#Pitch-Class_Representation)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
