---
title:		'Humdrum Toolkit Command Reference -- pitch'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/pitch/index.html
---

### COMMAND

<span class="tool">pitch</span> -- translate selected Humdrum pitch-related representations
to American standard pitch notation

------------------------------------------------------------------------

## SYNOPSIS ##

` pitch  [-tx]  [inputfile ...]  [ > outputfile.pit]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">pitch</span> command transforms various pitch-related inputs to the
corresponding pitch designations approved by the American National
Standards Institute (ANSI). The <span class="tool">pitch</span> command outputs one or more
Humdrum <span class="rep">pitch</span> spines. ANSI pitch designations use the upper-case
letters A to G followed by an optional accidental, followed by an octave
number. In the Humdrum <span class="rep">pitch</span> representation, optional cents
deviation from equal temperament can also be encoded.

The <span class="tool">pitch</span> command is able to translate any of the pitch-related
input representations listed below. In each case, a tuning standard of
A4 equals 440 hertz is assumed. For descriptions of the various input
representations (including <span class="rep">pitch</span>) refer to Section 2
*(Representation Reference)* of this reference manual.

It is recommended that output files produced using the <span class="tool">pitch</span> command
should be given names with the distinguishing \`.pit\' extension.

------------ --------------------------------------------------------------------
<span class="rep">cents</span>    hundredths of a semitone with respect to middle C=0
<span class="rep">degree</span>   key-related scale degree
<span class="rep">freq</span>     fundamental frequency (in hertz)
<span class="rep">fret</span>     fretted-instrument pitch tablature
<span class="rep">kern</span>     core pitch/duration representation
<span class="rep">MIDI</span>     Music Instrument Digital Interface tablature
<span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
<span class="rep">solfg</span>    French solfège system (fixed \`doh\')
<span class="rep">specC</span>    spectral centroid (in hertz)
<span class="rep">Tonh</span>     German pitch system
------------ --------------------------------------------------------------------

*Input representations processed by <span class="tool">pitch</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">pitch</span> command provides the following options:

-------- ----------------------------------------------------------------------------
<span class="option">h</span>   displays a help screen summarizing the command syntax
<span class="option">t</span>   suppresses printing of all but the first of a group of tied `**kern notes`
<span class="option">x</span>   suppresses printing of non-pitch-related signifiers
-------- ----------------------------------------------------------------------------

Options are specified in the command line.

The <span class="option">t</span> option ensures that only a single output value is given for
tied <span class="rep">kern</span> notes; the output coincides with the first note of the
tie.

In the default operation, <span class="tool">pitch</span> outputs non-pitch-related signifiers
in addition to the <span class="rep">pitch</span> pitch value. For example, the <span class="rep">Tonh</span>
token \"Ges5zzz\" will result in the output \"Gb5zzz\" &mdash; that is,
after translating Ges5 to Gb5, the \"zzz\" signifiers are retained in
the output. For some applications, echoing non-pitch-related signifiers
in the output is useful. However, in other situations, the result can
prove confusing &mdash; especially, when the non-pitch-related signifiers
are numbers. Consider the case of the <span class="rep">kern</span> token \"8aa\#\"; after
translating \`aa\#\' to A\#5, the non-pitch-related signifier \`8\' will
also be output, hence the value 8A\#5 &mdash; which may cause confusion;
commands such as [**tonh,**](tonh.html) [**solfg,**](solfg.html) and
<span class="tool">pitch</span> treat the first number encountered in an input
token as the octave designation. Hence further processing of this token
may lead to it's interpretation as A\#8 &mdash; or even A\#58 &mdash; rather
than A\#5.

The <span class="option">x</span> option is useful for eliminating non-pitch-related signifiers
from the output. For most <span class="rep">kern</span> inputs, the <span class="option">x</span> option is
recommended.

------------------------------------------------------------------------

## EXAMPLES ##

The following example illustrates the use of <span class="tool">pitch</span>. The input
contains six pitch-related spines &mdash; two of which (<span class="rep">deg</span> and
<span class="rep">cocho</span>) cannot be processed by <span class="tool">pitch</span>. In addition, there are two
non-pitch-related spines (<span class="rep">embell</span> and <span class="rep">metpos</span>). ``

----------------------- ------------ ----------- --------- ------------ ----------- ------------ ------------
!! \`pitch\' example.
\*\*kern                \*\*freq     \*\*MIDI    \*\*deg   \*\*metpos   \*\*cocho   \*\*degree   \*\*embell
\*M2/4                  \*M2/4       \*M2/4      \*M2/4    \*M2/4       \*M2/4      \*M2/4       \*M2/4
\*                      \*           \*          \*        \*           \*          \*d:         \*
\*                      \*           \*          \*        \*tb8        \*          \*           \*
=1                      =1           =1          =1        =1           =1          =1           =1
8ee-                    93foo        /60/bar     1foo      1            r           1/4          ct
.                       .            /-60/       .         .            .           .            .
8ff                     220          /62/        2         3            9.89        2/4          upt
.                       .            /-62/       .         .            .           .            .
8dd-                    936.2        /70/        1         2            7.07        3+/4         ct
.                       .            /-70/       .         .            .           .            .
8d-                     277.18       /61/        6         3            7.135       7/3          sus
.                       .            /-61/       .         .            .           .            .
=2                      =2           =2          =2        =2           =2          =2           =2
\[4a-                   r            .           5         1            r           r            .
.                       .            .           7         3            5.5         1/4          ct
4a-\]                   300          /48/ /52/   1         2            8.11        6+/4         ct
.                       .            /-48/       .         .            .           .            .
.                       82.4 261.6   /-52/       2         3            7.33 6.4    3/4 5/4      ct
=3                      =3           =3          =3        =3           =3          =3           =3
r                       512          .           r         1            r           3/4 1/5      .
===                     ===          ===         ===       ===          ===         ===          ===
\*-                     \*-          \*-         \*-       \*-          \*-         \*-          \*-
----------------------- ------------ ----------- --------- ------------ ----------- ------------ ------------

Executing the command

` pitch -tx input > output.pit`

produces the following result: ``

----------------------- ----------- ----------- --------- ------------ ----------- ----------- ------------
!! \`pitch\' example.
\*\*pitch               \*\*pitch   \*\*pitch   \*\*deg   \*\*metpos   \*\*cocho   \*\*pitch   \*\*embell
\*M2/4                  \*M2/4      \*M2/4      \*M2/4    \*M2/4       \*M2/4      \*M2/4      \*M2/4
\*                      \*          \*          \*        \*           \*          \*d:        \*
\*                      \*          \*          \*        \*tb8        \*          \*          \*
=1                      =1          =1          =1        =1           =1          =1          =1
Eb5                     F\#2+9      C4          1foo      1            r           D4          ct
.                       .           .           .         .            .           .           .
F5                      A3          D4          2         3            9.89        E4          upt
.                       .           .           .         .            .           .           .
Db5                     Bb5+7       Bb4         1         2            7.07        F\#4        ct
.                       .           .           .         .            .           .           .
Db4                     Db4         Db4         6         3            7.135       C\#3        sus
.                       .           .           .         .            .           .           .
=2                      =2          =2          =2        =2           =2          =2          =2
Ab4                     r           .           5         1            r           r           .
.                       .           .           7         3            5.5         D4          ct
.                       D4+36       C3 E3       1         2            8.11        B4          ct
.                       .           .           .         .            .           .           .
.                       E2 C4       .           2         3            7.33 6.4    F4 A4       ct
=3                      =3          =3          =3        =3           =3          =3          =3
r                       C5-37       .           r         1            r           F4 D5       .
===                     ===         ===         ===       ===          ===         ===         ===
\*-                     \*-         \*-         \*-       \*-          \*-         \*-         \*-
----------------------- ----------- ----------- --------- ------------ ----------- ----------- ------------

Both processed and unprocessed spines are output. Notice that the tied
note at the beginning of measure 2 in the <span class="rep">kern</span> spine has been
rendered as a single note rather than as two notes (due to the <span class="option">t</span>
option). Also notice that the non-pitch-related signifiers (e.g. foo) in
the first notes of the `**freq, **MIDI`, and <span class="rep">cocho</span> spines have been
stripped away (due to the <span class="option">x</span> option). In the case of the <span class="rep">degree</span>
input, <span class="tool">pitch</span> recognizes the spelling of various pitches in the
context of the key of D minor. Hence, the raised third degree is F\#,
and the raised sixth degree is B natural. Also note the presence of
cents-deviation from equal temperament in the translation of the
<span class="rep">freq</span> data (second spine).

------------------------------------------------------------------------

## FILES ##

The file `x_option.awk` is used by this program when the <span class="option">x</span> option
is invoked.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

` **cents (2),  cents (4), **degree (2),  degree (4), **freq (2),  freq (4), **fret (2),  hint (4), **kern (2),  kern (4), **MIDI (2),  midi (4),  mint (4), **pitch (2), **semits (2),  semits (4), **solfg (2),  solfg (4), **specC (2)  specC (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide04.html#Pitch_Representation)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
