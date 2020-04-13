---
title:		'Humdrum Toolkit Command Reference -- deg'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/deg/index.html
---


### COMMAND

<span class="tool">deg</span> &mdash; translate selected Humdrum pitch-related representations to
relative scale degree (<span class="rep">deg</span>)

------------------------------------------------------------------------

## SYNOPSIS ##

` deg  [-k|K key] [-tx]  [inputfile ...]  [> outputfile.deg]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">deg</span> command transforms various pitch-related inputs to the
corresponding scale degree. The command outputs one or more Humdrum
<span class="rep">deg</span> spines &mdash; where scale degrees are indicated by the numbers 1
(tonic) to 7 (leading tone). Scale degree information can be determined
only with reference to some prevailing key. For example, the pitch C4 is
the tonic (1) in the key of C major, but the submediant (6) in the key
of E minor. The <span class="tool">deg</span> command expects a tandem interpretation
indicating the key of the input passage; <span class="tool">deg</span> will adapt to specified
changes of key within an input. If no key information is provided prior
to the first pitch-related data, <span class="tool">deg</span> issues an error message and
terminates.

The <span class="tool">deg</span> command differs from the (related) <span class="tool">degree</span>
command in that it outputs *relative* (rather than *absolute)*
pitch-height information. Upward pitch motions are indicated by the
caret (\^), whereas downward pitch motions are indicated by the
lower-case letter \`v\'. Hence, the token \`1\' followed by \`\^5\'
means that the ensuing dominant pitch is above rather than below the
preceding tonic pitch. No absolute pitch-height information is
represented. As in the case of [<span class="tool">degree</span>,](degree.html) plus and minus
signs indicate whether a pitch has been chromatically raised or lowered.
For example, the pitch A-flat is designated \`6-\' in the key of C
major, but \`6\' in the key of C minor. The harmonic minor scale is
assumed for all minor keys. Thus, B-flat is considered a \"lowered\"
seventh degree in C minor, whereas B natural is considered the
\"normal\" (rather than \"raised\") seventh degree. For some
applications, this interpretation of the minor-scale seventh degree may
cause difficulties.

The <span class="tool">deg</span> command is able to translate any of the pitch-related
representations listed below. For descriptions of the various input
representations (including <span class="rep">deg</span>) refer to Section 2 *(Representation
Reference)* of this reference manual.

It is recommended that output files produced using the <span class="tool">deg</span> command
should be given names with the distinguishing \`.deg\' extension.

----------- ----------------------------------------------------------------------
<span class="rep">kern</span>    core pitch/duration representation
<span class="rep">pitch</span>   American National Standards Institute pitch notation (e.g. \"A\#4\")
<span class="rep">solfg</span>   French solfège system (fixed \`doh\')
<span class="rep">Tonh</span>    German pitch system
----------- ----------------------------------------------------------------------

*Input representations processed by <span class="tool">deg</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">deg</span> command provides the following options:

<span class="option">h</span>

displays a help screen summarizing the command syntax

-k *key*

specify default key

-K *key*

specify override key

<span class="option">t</span>

suppresses printing of all but the first note of a group of tied
`**kern notes`

<span class="option">x</span>

suppresses printing of
non-`**deg signifiers   Options are specified in the command line. `

The <span class="option">t</span> option ensures that only a single output value is given for
tied <span class="rep">kern</span> notes; the output coincides with the first note of the
tie.

In the default operation, <span class="tool">deg</span> outputs non-pitch-related signifiers
in addition to the degree value. For example, in the key of D major, the
<span class="rep">pitch</span> token \"G5zzz\" will result in the output \"4zzz\" &mdash; that
is, after translating G5 to 4, the \"zzz\" signifiers are retained in
the output. For some applications, echoing non-pitch-related signifiers
in the output is useful. However, in other situations, the result can
prove confusing &mdash; especially, when the non-pitch-related signifiers
are numbers. Consider the case of the <span class="rep">kern</span> token \"4f\#\" in the key
of D minor; after translating \``f#`\' to \``3+`\' (i.e. raised third
degree), the preceding non-pitch-related signifier \``4`\' will also be
output, hence the value `43+` &mdash; which may cause confusion.

The <span class="option">x</span> option is useful for eliminating non-pitch-related signifiers
from the output. For most <span class="rep">kern</span> inputs, the <span class="option">x</span> option is
recommended.

------------------------------------------------------------------------

## EXAMPLES ##

The following example illustrates the use of <span class="tool">deg</span>. The input contains
four pitch-related spines &mdash; one of which (<span class="rep">MIDI</span>) cannot be
processed by <span class="tool">deg</span>. In addition, there is one non-pitch-related spines
(<span class="rep">embell</span>).

``

--------------------- ---------- ----------- ----------- ----------- ------------
!! \`deg\' example.
\*\*kern              \*\*Tonh   \*\*MIDI    \*\*solfg   \*\*pitch   \*\*embell
\*M2/4                \*M2/4     \*M2/4      \*M2/4      \*M2/4      \*M2/4
\*C:                  \*d:       \*G\#:      \*a:        \*F:        \*F:
=1                    =1         =1          =1          =1          =1
8ee-                  Gis2       /60/        do3         F4foo       ct
.                     .          /-60/       .           .           .
8f                    H2         /62/        fa3         r           upt
.                     .          /-62/       .           .           .
8dd-                  B2         /70/        mi3         E4          ct
.                     .          /-70/       .           .           .
8d&mdash;                 Cis4       /61/        r           F4          sus
.                     .          /-61/       .           .           .
=2                    =2         =2          =2          =2          =2
\[4a-                 r          .           mi\~b3      F4 A4       .
.                     Heses2     .           re3         G4 Bb4      ct
4a-\]                 C3         /48/ /52/   do3         E4 C5       ct
.                     .          /-48/       .           .           .
.                     H2 E3      /-52/       la3         G4          ct
=3                    =3         =3          =3          =3          =3
r                     A2 F3      .           r           F4          .
===                   ===        ===         ===         ===         ===
\*-                   \*-        \*-         \*-         \*-         \*-
--------------------- ---------- ----------- ----------- ----------- ------------

Executing the command:

` deg -tx input > output.deg`

produces the following result:

``

--------------------- --------- ----------- --------- --------- ------------
!! \`deg\' example.
\*\*deg               \*\*deg   \*\*MIDI    \*\*deg   \*\*deg   \*\*embell
\*M2/4                \*M2/4    \*M2/4      \*M2/4    \*M2/4    \*M2/4
\*C:                  \*d:      \*G\#:      \*a:      \*F:      \*F:
=1                    =1        =1          =1        =1        =1
3-                    4+        /60/        3         1         ct
.                     .         /-60/       .         .         .
v4                    \^6+      /62/        \^6       r         upt
.                     .         /-62/       .         .         .
\^2-                  v6        /70/        v5        v7        ct
.                     .         /-70/       .         .         .
v2-                   \^7       /61/        r         \^1       sus
.                     .         /-61/       .         .         .
=2                    =2        =2          =2        =2        =2
\^6-                  r         .           v5-       1 \^3     .
.                     v6-       .           v4        v2 \^4    ct
.                     \^7-      /48/ /52/   v3        v7 \^5    ct
.                     .         /-48/       .         .         .
.                     v6+ \^2   /-52/       \^1       v2        ct
=3                    =3        =3          =3        =3        =3
r                     v5 \^3    .           r         v1        .
===                   ===       ===         ===       ===       ===
\*-                   \*-       \*-         \*-       \*-       \*-
--------------------- --------- ----------- --------- --------- ------------

Both processed and unprocessed spines are output. Notice that the tied
note at the beginning of measure 2 in the <span class="rep">kern</span> spine has been
rendered as a single note rather than as two notes (due to the <span class="option">t</span>
option). Also notice that the non-pitch-related signifiers (e.g. foo) in
the first notes of the <span class="rep">pitch</span> spine have been stripped away (due to
the <span class="option">x</span> option). Note that the plus and minus signs merely indicate
that a scale degree has been raised or lowered, but not by how much.
Hence both the D-flat and D double-flat in measure 1 of the first
(<span class="rep">kern</span>) spine are rendered as \``2-`\'.

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

` **deg (2), **degree (2),  degree (4), **kern (2),  kern (4), **pitch (2),  pitch (4), **solfg (2),  solfg (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide04.html#Scale_Degree)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
