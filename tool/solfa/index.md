---
title:		'Humdrum Toolkit Command Reference -- solfa'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/solfa/index.html
---

### COMMAND

<span class="tool">solfa</span> -- translate selected Humdrum pitch-related representations
to tonic solfa syllables (<span class="rep">solfa</span>)

------------------------------------------------------------------------

## SYNOPSIS ##

` solfa  [-tx]  [inputfile ...]  [> outputfile.sol]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">solfa</span> command transforms various pitch-related inputs to the
corresponding tonic solfa syllables. The command outputs one or more
Humdrum <span class="rep">solfa</span> spines &mdash; where pitches are designated by the
syllables *do, re, mi, fa, so, la,* and *ti* &mdash; or their chromatic
alterations: *di, da, ri, ra,* etc. (see below). Tonic solfa syllables
can be determined only with reference to some prevailing key. For
example, the pitch C is the tonic (`do`) in the key of C major, but the
mediant (`mi`) in the key of A-flat major. The <span class="tool">solfa</span> command expects
a tandem interpretation indicating the key of the input passage;
<span class="tool">solfa</span> will adapt to specified changes of key within an input stream.
If no key information is provided prior to the first pitch-related data,
<span class="tool">solfa</span> issues an error message and terminates.

There are various systems for extending the tonic solfa syllables in
order to representing chromatic alterations. The system used by
<span class="tool">solfa</span> is tabulated below. (Pronunciations are indicated in
parentheses.)

------------ ------------ -------------
basic        raised       **lowered**

do (*doe*)   di (*dee*)   de (*day*)
re (*ray*)   ri (*ree*)   ra (*raw*)
mi (*me*)    my (*my*)    me (*may*)
fa (*fah*)   fi (*fee*)   fe (*fay*)
so (*so*)    si (*see*)   se (*say*)
la (*la*)    li (*lee*)   le (*lay*)
ti (*tee*)   ty (*tie*)   te (*tay*)
------------ ------------ -------------

*Summary of <span class="tool">solfa</span> Signifiers*

The <span class="tool">solfa</span> command differs from the <span class="tool">deg</span> and
<span class="tool">degree</span> commands in that pitches are represented
without regard to major or minor *mode.* For example, in the key of C
major, <span class="tool">deg</span> and <span class="tool">degree</span> will characterize A-flat as a lowered
sixth scale degree, whereas the same pitch will be a normal sixth scale
degree in the key of C minor. In the case of <span class="tool">solfa</span>, the A-flat will
be characterized as `le` &mdash; whether or not the key is C major or C
minor. As in the case of <span class="tool">deg</span> and <span class="tool">degree</span>, the amount of chromatic
alteration is not represented; once a pitch is \"raised,\" raising it
further will not change the output representation. For example, where
the tonic pitch is B-flat, both B-natural and B-sharp are represented by
`di`.

The <span class="tool">solfa</span> command is able to translate any of the pitch-related
representations listed below. For descriptions of the various input
representations (including <span class="rep">solfa</span>) refer to Section 2
*(Representation Reference)* of this reference manual.

It is recommended that output files produced by the <span class="tool">solfa</span> command
should be given names with the distinguishing .sol extension.

----------- ----------------------------------------------------------------------
<span class="rep">kern</span>    core pitch/duration representation
<span class="rep">pitch</span>   American National Standards Institute pitch notation (e.g. \"A\#4\")
<span class="rep">solfg</span>   French solfège system (fixed \`doh\')
<span class="rep">Tonh</span>    German pitch system
----------- ----------------------------------------------------------------------

*Input representations processed by <span class="tool">solfa</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">solfa</span>

command provides the following options:

<span class="option">h</span>

displays a help screen summarizing the command syntax

<span class="option">t</span>

suppresses printing of all but the first note of a group of tied notes

<span class="option">x</span>

suppresses printing of
non-`**solfa signifiers  Options are specified in the command line. `

The <span class="option">t</span> option ensures that only a single output value is given for
tied notes; the output coincides with the first note of the tie.

In the default operation, <span class="tool">solfa</span> outputs non-pitch-related signifiers
in addition to the degree value. For example, in the key of D, the
<span class="rep">kern</span> token \"4Gz\" will result in the output \"4faz\" &mdash; that is,
after translating G to fa, the \"4\...z\" signifiers are retained in the
output. For some applications, echoing non-pitch-related signifiers in
the output is useful. However, in other situations, the result can prove
confusing. The <span class="option">x</span> option is useful for eliminating non-pitch-related
signifiers from the output.

------------------------------------------------------------------------

## EXAMPLES ##

The following example illustrates the use of <span class="tool">solfa</span>. The input
contains four pitch-related spines &mdash; one of which (<span class="rep">MIDI</span>) cannot be
processed by <span class="tool">solfa</span>. In addition, there is one non-pitch-related
spines (<span class="rep">embell</span>). ``

----------------------- ---------- ----------- ----------- ----------- ------------
!! \`solfa\' example.
\*\*kern                \*\*Tonh   \*\*MIDI    \*\*solfg   \*\*pitch   \*\*embell
\*M2/4                  \*M2/4     \*M2/4      \*M2/4      \*M2/4      \*M2/4
\*C:                    \*d:       \*G\#:      \*a:        \*F:        \*F:
=1                      =1         =1          =1          =1          =1
8ee-                    Gis2       /60/        do3         F4foo       ct
.                       .          /-60/       .           .           .
8f                      H2         /62/        fa3         G4bar       upt
.                       .          /-62/       .           .           .
8dd-                    B2         /70/        mi3         E4          ct
.                       .          /-70/       .           .           .
8d&mdash;                   Cis4       /61/        r           F4          sus
.                       .          /-61/       .           .           .
=2                      =2         =2          =2          =2          =2
\[4a-                   r          .           mi\_b3      F4 A4       .
.                       Heses2     .           re3         G4 Bb4      ct
4a-\]                   C3         /48/ /52/   do3         E4 C5       ct
.                       .          /-48/       .           .           .
.                       H2 E3      /-52/       la3         G4          ct
=3                      =3         =3          =3          =3          =3
r                       A2 F3      .           r           F4          .
==                      ==         ==          ==          ==          ==
\*-                     \*-        \*-         \*-         \*-         \*-
----------------------- ---------- ----------- ----------- ----------- ------------

Executing the command:

` solfa -tx input > output`

produces the following result: ``

----------------------- ----------- ----------- ----------- ----------- ------------
!! \`solfa\' example.
\*\*solfa               \*\*solfa   \*\*MIDI    \*\*solfa   \*\*solfa   \*\*embell
\*M2/4                  \*M2/4      \*M2/4      \*M2/4      \*M2/4      \*M2/4
\*C:                    \*d:        \*G\#:      \*a:        \*F:        \*F:
=1                      =1          =1          =1          =1          =1
me                      fi          /60/        me          do          ct
.                       .           /-60/       .           .           .
fa                      la          /62/        le          r           upt
.                       .           /-62/       .           .           .
ra                      le          /70/        so          ti          ct
.                       .           /-70/       .           .           .
ra                      ti          /61/        r           do          sus
.                       .           /-61/       .           .           .
=2                      =2          =2          =2          =2          =2
le                      r           .           so          do mi       .
.                       le          .           fa          re fa       ct
.                       te          /48/ /52/   me          ti so       ct
.                       .           /-48/       .           .           .
.                       la re       /-52/       do          re          ct
=3                      =3          =3          =3          =3          =3
r                       so me       .           r           do          .
==                      ==          ==          ==          ==          ==
\*-                     \*-         \*-         \*-         \*-         \*-
----------------------- ----------- ----------- ----------- ----------- ------------

Both processed and unprocessed spines are output. Notice that the tied
note at the beginning of measure 2 in the <span class="rep">kern</span> spine has been
rendered as a single note rather than as two notes (due to the <span class="option">t</span>
option). Also notice that the non-pitch-related signifiers (e.g. foo) in
the first notes of the <span class="rep">pitch</span> spine have been stripped away (due to
the <span class="option">x</span> option).

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

` **deg (2),  deg (4), **degree (2),  degree (4), **kern (2),  kern (4), **pitch (2),  pitch (4), **solfa (2), **solfg (2),  solfg (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide04.html#Scale_Degree)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
