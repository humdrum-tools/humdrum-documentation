---
title:		'Humdrum Toolkit Command Reference -- freq'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/freq/index.html
---

### COMMAND

<span class="tool">freq</span> &mdash; translate selected Humdrum pitch-related representations to
frequency

------------------------------------------------------------------------

## SYNOPSIS ##

` freq  [-p n]  [-tx]  [inputfile ...]  [> outputfile"]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">freq</span> command transforms various pitch-related inputs to
corresponding frequency representations. It outputs one or more Humdrum
<span class="rep">freq</span> spines containing numerical values (in hertz) corresponding to
the fundamental frequency for pitch-related input tokens. For example,
the <span class="rep">pitch</span> token \"C4\" is transformed to 261.63 (hertz).

The <span class="tool">freq</span> command is able to translate any of the pitch-related
representations listed below. In each case, a tuning standard of A4
equals 440 hertz is assumed. For descriptions of the various input
representations (including <span class="rep">freq</span>) refer to Section 2 *(Representation
Reference)* of this reference manual.

It is recommended that output files produced using the <span class="tool">freq</span> command
should be given names with the distinguishing \`\"\' extension.

------------ ---------------------------------------------------------------------------
<span class="rep">cbr</span>      critical band rate (in equivalent rectangular bandwidth units)
<span class="rep">cents</span>    hundredths of a semitone with respect to middle C=0 (e.g. 1200 equals C5)
<span class="rep">cocho</span>    cochlear coordinates (in millimeters)
<span class="rep">freq</span>     fundamental frequency (in hertz)
<span class="rep">fret</span>     fretted-instrument pitch tablature
<span class="rep">kern</span>     core pitch/duration representation
<span class="rep">MIDI</span>     Music Instrument Digital Interface tablature
<span class="rep">pitch</span>    American National Standards Institute pitch notation (e.g. \"A\#4\")
<span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0 (e.g. -12 equals C3)
<span class="rep">solfg</span>    French solfège system (fixed \`doh\')
<span class="rep">specC</span>    spectral centroid (in hertz)
<span class="rep">Tonh</span>     German pitch system
------------ ---------------------------------------------------------------------------

*Input representations processed by <span class="tool">freq</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">freq</span> command provides the following options:

-------- ---------------------------------------------------------------------------------
<span class="option">h</span>   displays a help screen summarizing the command syntax
-p *n*   output precision of *n* decimal places
<span class="option">t</span>   suppresses printing of all but the first note of a group of tied `**kern notes`
<span class="option">x</span>   suppresses printing of non-frequency signifiers
-------- ---------------------------------------------------------------------------------

Options are specified in the command line.

The <span class="option">p</span> option can be used to set the precision of the output values
to *n* decimal places. The default precision is two decimal places. Note
that <span class="tool">freq</span> is able to process <span class="rep">freq</span> as input; this feature allows
the user to round-off existing <span class="rep">freq</span> data to a specified precision.

The <span class="option">t</span> option ensures that only a single output value is given for
tied <span class="rep">kern</span> notes; the output coincides with the first note of the
tie.

In the default operation, <span class="tool">freq</span> outputs non-pitch-related signifiers
in addition to the frequency value. For example, the <span class="rep">pitch</span> token
\"A6zzz\" will result in the output \"1760.00zzz\" &mdash; that is, after
translating A6 to 1760.00 hertz, the \"zzz\" signifiers are retained in
the output. For some applications, echoing non-pitch-related signifiers
in the output is useful. However, in other situations, the result can
prove confusing &mdash; especially, when the non-pitch-related signifiers
are numbers. Consider the case of the <span class="rep">kern</span> token \"8aaa\"; after
translating \`aaa\' to 1760.00 hertz, the non-pitch-related signifier
\`8\' will also be output, hence the value 81760.00 &mdash; which will
undoubtedly cause confusion. The <span class="option">x</span> option is useful for eliminating
non-pitch-related signifiers from the output. For most <span class="rep">kern</span> inputs,
the <span class="option">x</span> option is recommended.

------------------------------------------------------------------------

## EXAMPLES ##

The following example illustrates the use of <span class="tool">freq</span>. The input
contains six pitch-related spines &mdash; one of which (<span class="rep">deg</span>) cannot be
processed by <span class="tool">freq</span>. In addition, there are two non-pitch-related
spines (<span class="rep">embell</span> and <span class="rep">metpos</span>). ``

---------------------- ----------- ----------- --------- ------------ ----------- ---------- ------------
!! \`freq\' example.
\*\*kern               \*\*pitch   \*\*MIDI    \*\*deg   \*\*metpos   \*\*cocho   \*\*Tonh   \*\*embell
\*M2/4                 \*M2/4      \*M2/4      \*M2/4    \*M2/4       \*M2/4      \*M2/4     \*M2/4
\*                     \*          \*          \*        \*tb8        \*          \*         \*
=1                     =1          =1          =1        =1           =1          =1         =1
8ee-                   G\#4foo     /60/bar     1foo      1            r           Gis2       ct
.                      .           /-60/       .         .            .           .          .
8ff                    A3          /62/        2         3            9.89        H2         upt
.                      .           /-62/       .         .            .           .          .
8dd-                   Ab3         /70/        1         2            7.07        B2         ct
.                      .           /-70/       .         .            .           .          .
8d-                    C\#4        /61/        6         3            7.135       Cis4       sus
.                      .           /-61/       .         .            .           .          .
=2                     =2          =2          =2        =2           =2          =2         =2
\[4a-                  r           .           5         1            r           r          .
.                      .           .           7         3            5.5         Heses2     ct
4a-\]                  D4          /48/ /52/   1         2            8.11        C3         ct
.                      .           /-48/       .         .            .           .          .
.                      D4 F4       /-52/       2         3            7.33 6.4    C3 Es3     ct
=3                     =3          =3          =3        =3           =3          =3         =3
r                      G4          .           r         1            r           H2 D3      .
===                    ===         ===         ===       ===          ===         ===        ===
\*-                    \*-         \*-         \*-       \*-          \*-         \*-        \*-
---------------------- ----------- ----------- --------- ------------ ----------- ---------- ------------

Executing the command

` freq -tx input > output"`

produces the following result: ``

---------------------- --------------- --------------- --------- ------------ --------------- --------------- ------------
!! \`freq\' example.
\*\*freq               \*\*freq        \*\*freq        \*\*deg   \*\*metpos   \*\*freq        \*\*freq        \*\*embell
\*M2/4                 \*M2/4          \*M2/4          \*M2/4    \*M2/4       \*M2/4          \*M2/4          \*M2/4
\*                     \*              \*              \*        \*tb8        \*              \*              \*
=1                     =1              =1              =1        =1           =1              =1              =1
622.25                 415.30          261.63          1foo      1            r               103.83          ct
.                      .               .               .         .            .               .               .
698.46                 220.00          293.66          2         3            481.97          123.47          upt
.                      .               .               .         .            .               .               .
554.37                 207.65          466.16          1         2            273.21          116.54          ct
.                      .               .               .         .            .               .               .
277.18                 277.18          277.18          6         3            277.16          277.18          sus
.                      .               .               .         .            .               .               .
=2                     =2              =2              =2        =2           =2              =2              =2
415.30                 r               .               5         1            r               r               .
.                      .               .               7         3            187.76          110.00          ct
.                      293.66          130.81 164.81   1         2            340.92          130.81          ct
.                      .               .               .         .            .               .               .
.                      293.66 349.23   .               2         3            289.24 234.47   130.81 155.56   ct
=3                     =3              =3              =3        =3           =3              =3              =3
r                      392.00          .               r         1            r               123.47 146.83   .
===                    ===             ===             ===       ===          ===             ===             ===
\*-                    \*-             \*-             \*-       \*-          \*-             \*-             \*-
---------------------- --------------- --------------- --------- ------------ --------------- --------------- ------------

Both processed and unprocessed spines are output. Notice that the tied
note at the beginning of measure 2 in the <span class="rep">kern</span> spine has been
rendered as a single note rather than as two notes (due to the <span class="option">t</span>
option). Also notice that the non-pitch-related signifiers (e.g. foo) in
the first notes of the `**pitch, **MIDI`, and <span class="rep">cocho</span> spines have been
stripped away (due to the <span class="option">x</span> option).

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

` **cbr (2),  cbr (4), **cents (2),  cents (4), **cocho (2),  cocho (4), **freq (2), **fret (2), **kern (2),  kern (4), **MIDI (2),  midi (4), **pitch (2),  pitch (4), **semits (2),  semits (4), **solfg (2),  solfg (4), **specC (2),  specC (4), **Tonh (2),  tonh (4)`



