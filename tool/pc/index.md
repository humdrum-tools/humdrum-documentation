---
title:		'Humdrum Toolkit Command Reference -- pc'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/pc/index.html
---


### COMMAND

<span class="tool">pc</span> -- translate Humdrum semitone representation or pc to
pitch-class

------------------------------------------------------------------------

## SYNOPSIS ##

` pc  [-atx]  [inputfile ...]  [ > outputfile.pc]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">pc</span> command transforms various pitch-related inputs to
corresponding numerical pitch-class equivalents: C=0, C-sharp/D-flat=1,
D=2, . . . B=11. It outputs one or more Humdrum <span class="rep">pc</span> spines containing
pitch-class values corresponding to each of the input pitch tokens. For
example, the <span class="rep">semits</span> token \"-13\" is transformed to 11 (pc).

The <span class="tool">pc</span> command is able to translate any of the pitch-related
representations listed below. In each case, a tuning standard of A4
equals 440 hertz is assumed. For descriptions of the input and output
representations refer to Section 2 *(Representation Reference)* of this
reference manual.

It is recommended that output files produced using the <span class="tool">pc</span> command
should be given names with the distinguishing \`.pc\' extension.

------------ ---------------------------------------------------------------------------
<span class="rep">cents</span>    hundredths of a semitone with respect to middle C=0 (e.g. 1200 equals C5)
<span class="rep">freq</span>     fundamental frequency (in hertz)
<span class="rep">kern</span>     core pitch/duration representation
<span class="rep">pc</span>       pitch-class representation
<span class="rep">pitch</span>    American National Standards Institute pitch notation (e.g. \"A\#4\")
<span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0
<span class="rep">solfg</span>    French solfège system (fixed \`doh\')
<span class="rep">specC</span>    spectral centroid (in hertz)
<span class="rep">Tonh</span>     German pitch system
------------ ---------------------------------------------------------------------------

*Input representations processed by <span class="tool">pc</span>.*

Note that the <span class="tool">pc</span> command is also able to reprocess pitch-class
(<span class="rep">pc</span>) inputs. This allows pitch-class representations to be
translated from numeric-only (0,1,2,3 \... 9,10,11) to mixed
alphanumeric (0,1,2,3 \... 9,A,B) or vice versa. (See documentation for
`**pc (2)`.)

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">pc</span> command provides the following options:

-------- ---------------------------------------------------------------------------------
<span class="option">a</span>   output alphanumeric representation (where A=10, B=11)
<span class="option">h</span>   displays a help screen summarizing the command syntax
<span class="option">t</span>   suppresses printing of all but the first note of a group of tied <span class="rep">kern</span> notes
<span class="option">x</span>   suppresses printing of non-pitch-class data
-------- ---------------------------------------------------------------------------------

Options are specified in the command line.

The <span class="option">a</span> option invokes an alternative (alphanumeric) form of the
<span class="rep">pc</span> output where the upper-case letters \`A\' and \`B\' are
substituted for the pitch-class integers 10 and 11, respectively. In
addition, the input alias values \`T\' (ten) and \`E\' (eleven) are
transformed to \`A\' and \`B\'. Encodings using mixed alphanumeric
values are often better suited to pattern-matching and searching tasks.
Encodings using purely numeric values are especially useful when the
representation is to be processed numerically.

The <span class="option">t</span> option ensures that only a single output value is given for
tied <span class="rep">kern</span> notes; the output coincides with the first note of the
tie.

Note that <span class="tool">pc</span> will round-off frequencies and non-integer semitone
input values to the nearest pitch-class. Hence, an input <span class="rep">semits</span> data
token of 5.6 will be rendered in the <span class="rep">pc</span> output as the value 6.
Similarly, the input <span class="rep">freq</span> value 452.1 will be rendered in the <span class="rep">pc</span>
output as the value 9.

In the default operation, <span class="tool">pc</span> outputs non-pitch-related signifiers in
addition to the pitch-class value. For example, the <span class="rep">semits</span> token
\"X15yz\" will result in the output \"X3yz\" &mdash; that is, after
translating 15 to pitch-class 3, the \"Xyz\" signifiers are retained in
the output. The <span class="option">x</span> option is useful for eliminating
non-pitch-class-related signifiers from the output.

------------------------------------------------------------------------

## EXAMPLES ##

The following example illustrates the use of <span class="tool">pc</span>. The input contains
four spines &mdash; one of which (<span class="rep">foo</span>) cannot be processed by <span class="tool">pc</span>. ``

-------------------- ---------- ------------ ---------
!! \`pc\' example.
\*\*semits           \*\*kern   \*\*pc       \*\*foo
\*M2/4               \*M2/4     \*           \*
=1                   =1         =1           .
8x                   8ee-       abc9 xyz10   A
.                    .          BCD          A
\#18@                8ff        .            B
23.1 -16             8dd-       .            B
(-2)                 8d-        8 7.         C
-12\...              .          0.8          C
=2                   =2         =2           D
\[3.0abc19           \[4a-      \(2) 3       D
&\]                  4a-\]      6&?          E
=3                   =3         =3           E
r                    2r         5 4          .
===                  ==         ====         .
\*-                  \*-        \*-          \*-
-------------------- ---------- ------------ ---------

Executing the command

` pc -xt input > output.pc`

produces the following result: ``

-------------------- -- -------- -- -------- -- ---------
!! \`pc\' example.
\*\*pc                  \*\*pc      \*\*pc      \*\*foo
\*M2/4                  \*M2/4      \*          \*
=1                      =1          =1          .
8                       3           9 10        A
.                       .           B           A
6                       5           .           B
11 8                    1           .           B
10                      1           8 7         C
0                       .           0           C
=2                      =2          =2          D
3                       8           2 3         D
.                       .           6           E
=3                      =3          =3          E
r                       r           5 4         .
===                     ==          ====        .
\*-                     \*-         \*-         \*-
-------------------- -- -------- -- -------- -- ---------

Both processed and unprocessed spines are output. Notice that the <span class="rep">pc</span>
value \`B\' in the token \`BCD\' has been maintained in the first
measure. Notice that for the data tokens in the first spine of measure
2, only the first numerical value in the input data tokens is processed.
More than one numerical value is output only if the input token is truly
a multiple-stop (as in the third spine of measure 1). Also notice that
the tied note in the second spine at the beginning of measure 2 has been
rendered as a single value \`8\' (due to the <span class="option">t</span> option).

------------------------------------------------------------------------

## FILES ##

The file *x\_option.awk* is used by this program when the <span class="option">x</span> option
is invoked.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

` **cents (2),  cents (4), **freq (2),  freq (4), **iv (2),  iv (4), **kern (2),  kern (4), **nf (2),  nf (4), **pc (2), **pcset (2),  pcset (4), **pf (2),  pf (4), **pitch (2),  pitch (4), **semits (2),  semits (4), **solfg (2),  solfg (4), **specC (2)  specC (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide34.html#Pitch-Class_Representation)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
