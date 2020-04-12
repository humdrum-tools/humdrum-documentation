---
title:		'Humdrum Toolkit Command Reference -- kern'
author:		David Huron
vim:		ft=html
permalink:	/tool/kern/index.html
---


### COMMAND

<span class="tool">kern</span> &mdash; translate selected Humdrum pitch-related representations to
<span class="rep">kern</span>

------------------------------------------------------------------------

### SYNOPSIS

` kern  [-x]  [inputfile ...]  [> outputfile.krn]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">kern</span> command transforms various pitch-related inputs to
corresponding [<span class="rep">kern</span> representation](../representations/kern.html)s.
For example, the <span class="rep">pitch</span> token \``Ab2`\' will be output as the
<span class="rep">kern</span> token \``AA-`\'. Continuous pitch-related representations, such
as frequency (<span class="rep">freq</span>) and cents (<span class="rep">cents</span>) are rounded-off to the
nearest equally-tempered pitch. Hence, <span class="rep">freq</span> values between 254.178
and 269.291 will be output as the <span class="rep">kern</span> token for middle C &mdash; \`c\'.

[Pitches in <span class="rep">kern</span>](../representations/kern.html#Pitch) are encoded as
equally-tempered values at concert pitch. Kern is not able to represent
pitch deviations from equal temperament. Diatonic pitch names are
encoded using the letters A to G. Octaves are indicated by a system of
upper- and lower-case letters, and by letter repetition. Middle C is
represented by the single lower-case letter \`c\'. The C an octave above
is represented by two lower-case letters: \`cc\' &mdash; with each
successive octave adding another letter. The C an octave below middle C
is represented by a single upper-case \`C\'. The C an octave lower yet
is represented by two upper-case letters: \`CC\' &mdash; and so forth.
Changes of octave are deemed to occur between the pitches B and C. Thus
the B below middle \`c\' is rendered as a single upper-case \`B\'; the B
below \`cc\' is \`b\' and so forth. Sharps are indicated by the
octothorpe sign (`#`) whereas flats are indicated by the minus sign
(`-`).

The <span class="tool">kern</span> command is able to translate any of the pitch-related
representations listed below. In each case, a tuning standard of A4
equals 440 hertz is assumed. For descriptions of the various input
representations (including <span class="rep">kern</span>) refer to Section 2 *(Representation
Reference)* of this reference manual.

>   ------------ ----------------------------------------------------------------------
>   <span class="rep">cents</span>    hundredths of a semitone with respect to middle C=0
>   <span class="rep">degree</span>   scale degree including octave designation
>   <span class="rep">freq</span>     frequency in hertz (abbreviated Hz.)
>   <span class="rep">fret</span>     fretted-instrument pitch tablature
>   <span class="rep">MIDI</span>     Music Instrument Digital Interface key-press tablature
>   <span class="rep">pitch</span>    American National Standards Institute pitch notation (e.g. \"A\#4\")
>   <span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0
>   <span class="rep">solfg</span>    French solfège system (fixed \`doh\')
>   <span class="rep">specC</span>    spectral centroid (in hertz)
>   <span class="rep">Tonh</span>     German pitch system
>   ------------ ----------------------------------------------------------------------
>
*Input representations processed by <span class="tool">kern</span>.*

For numerically-oriented inputs, such as
`**cents, **freq, **MIDI, **semits`, and <span class="rep">specC</span>, variant enharmonic
spellings are selected for output according to the prevailing key
signature or explicit key indication. (Refer to <span class="tool">key</span> and **key
signatures** in Section 3 *(Humdrum Tandem Interpretations).* Hence, in
the key of G minor, F-sharp and E-flat spellings will be output rather
than G-flat and D-sharp. Kern recognizes the presence of key, or key
signature tandem interpretations. If no key or key signature is
encountered in the input, a default key of C major is assumed. Kern is
sensitive to both *pitch-class* and *pitch-height* key signatures. In
the case of pitch-height key signatures, the user can specify complex
spelling preferences, such as F\#2 rather than Gb2, but Gb3 rather than
F\#3, etc. See [SAMPLE OUTPUT](#SAMPLE%20OUTPUTS) below.

It is recommended that output files produced using the <span class="tool">kern</span> command
should be given names with the distinguishing \`.krn\' extension.

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">kern</span> command provides the following options:

>   -------- -------------------------------------------------------
>   <span class="option">h</span>   displays a help screen summarizing the command syntax
>   <span class="option">x</span>   suppresses printing of non-pitch-related signifiers
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

In the default operation, <span class="tool">kern</span> outputs any non-pitch-related
signifiers in addition to the kern value. For example, the <span class="rep">pitch</span>
token \"A6zzz\" will result in the output \"aaazzz\" &mdash; that is, after
translating A6 to \"aaa\", the \"zzz\" signifiers are retained in the
output. For some applications, echoing non-pitch-related signifiers in
the output is useful. However, in other situations, the result can prove
confusing &mdash; especially, when the non-pitch-related signifiers are
upper- or lower-case letters from A-G. Consider the case of the <span class="rep">freq</span>
token \"aA\#5\"; after translating \"A\#5\" to \"aa\", the leading
non-pitch-related signifier \"a\" will be prepended to the output, hence
the value \"aaa\" &mdash; which will undoubtedly cause confusion. The <span class="option">x</span>
option is useful for eliminating non-pitch-related signifiers from the
output. For most inputs, the <span class="option">x</span> option is recommended.

------------------------------------------------------------------------

[]{#SAMPLE OUTPUTS}

### SAMPLE OUTPUTS

The following example illustrates the use of **kern.** The input
contains six pitch-related spines &mdash; two of which (<span class="rep">deg</span> and
<span class="rep">cocho</span>) cannot be processed by **kern.** In addition, there are two
non-pitch-related spines (<span class="rep">embell</span> and <span class="rep">metpos</span>). ``

>   ------------------------- ----------- ----------- --------- ------------ ----------- ---------- ------------
>   !! \`kern\' example \#1                                                                         
>   \*\*specC                 \*\*pitch   \*\*MIDI    \*\*deg   \*\*metpos   \*\*cocho   \*\*Tonh   \*\*embell
>   \*M2/4                    \*M2/4      \*M2/4      \*M2/4    \*M2/4       \*M2/4      \*M2/4     \*M2/4
>   \*                        \*          \*          \*        \*tb8        \*          \*         \*
>   =1                        =1          =1          =1        =1           =1          =1         =1
>   foo2000                   G\#4foo     /60/bar     1foo      1            r           Gis2       ct
>   .                         .           /-60/       .         .            .           .          .
>   2321                      A3+20       /62/        2         3            9.89        H2         upt
>   .                         .           48/-62/     .         .            .           .          .
>   1807                      Ab3         0/70/64     1         2            7.07        B2         ct
>   .                         .           48/-70/     .         .            .           .          .
>   2487                      C\#4        /61/        6         3            7.135       Cis4       sus
>   .                         .           /-61/       .         .            .           .          .
>   =2                        =2          =2          =2        =2           =2          =2         =2
>   3323                      r           .           5         1            r           r          .
>   .                         .           .           7         3            5.5         Heses2     ct
>   3471                      D4-8        /48/ /52/   1         2            8.11        C3         ct
>   .                         .           /-48/       .         .            .           .          .
>   .                         D4 F4       /-52/       2         3            7.33 6.4    C3 Es3     ct
>   =3                        =3          =3          =3        =3           =3          =3         =3
>   r                         G4          .           r         1            r           H2 D3      .
>   ===                       ===         ===         ===       ===          ===         ===        ===
>   \*-                       \*-         \*-         \*-       \*-          \*-         \*-        \*-
>   ------------------------- ----------- ----------- --------- ------------ ----------- ---------- ------------
>
Executing the command

> ` kern -x input > output.krn`

produces the following result: ``

>   ------------------------- ---------- ---------- --------- ------------ ----------- ---------- ------------
>   !! \`kern\' example \#1                                                                       
>   \*\*kern                  \*\*kern   \*\*kern   \*\*deg   \*\*metpos   \*\*cocho   \*\*kern   \*\*embell
>   \*M2/4                    \*M2/4     \*M2/4     \*M2/4    \*M2/4       \*M2/4      \*M2/4     \*M2/4
>   \*                        \*         \*         \*        \*tb8        \*          \*         \*
>   =1                        =1         =1         =1        =1           =1          =1         =1
>   bbb                       g\#        c          1foo      1            r           GG\#       ct
>   .                         .          .          .         .            .           .          .
>   dddd                      A          d          2         3            9.89        BB         upt
>   .                         .          .          .         .            .           .          .
>   aaa                       A-         b-         1         2            7.07        BB-        ct
>   .                         .          .          .         .            .           .          .
>   eeee-                     c\#        d-         6         3            7.135       c\#        sus
>   .                         .          .          .         .            .           .          .
>   =2                        =2         =2         =2        =2           =2          =2         =2
>   aaaa-                     r          .          5         1            r           r          .
>   .                         .          .          7         3            5.5         BB&mdash;      ct
>   aaaa                      d          C E        1         2            8.11        C          ct
>   .                         .          .          .         .            .           .          .
>   .                         d f        .          2         3            7.33 6.4    C E-       ct
>   =3                        =3         =3         =3        =3           =3          =3         =3
>   r                         g          .          r         1            r           BB D       .
>   ===                       ===        ===        ===       ===          ===         ===        ===
>   \*-                       \*-        \*-        \*-       \*-          \*-         \*-        \*-
>   ------------------------- ---------- ---------- --------- ------------ ----------- ---------- ------------
>
Both processed and unprocessed spines are output. Also notice that the
non-pitch-related signifiers (e.g. foo) in the first notes of the
`**specC, **pitch`, and <span class="rep">MIDI</span>, spines have been stripped away (due to
the <span class="option">x</span> option).

Key signature sensitivity is illustrated in the following example. The
input contains a \"pitch-height key signature\" &mdash; where flats and
sharps pertain to only a specific absolute pitch. For example, Bb3 is
preferred to A\#3, although A\#4 is preferred to Bb4. Similarly, C\#4 is
preferred to Db4, although Db5 is preferred to C\#5. ``

>   ---------------------------
>   !! \`kern\' example \#2
>   \*\*semits
>   \*K\[B3-C4\#F4\#A4\#D5-\]
>   -2
>   10
>   1
>   6
>   13
>   \*-
>   ---------------------------
>
Notice in the corresponding output given below, that all pitches are
rendered with the correct enharmonic spelling. ``

>   ---------------------------
>   !! \`kern\' example \#2
>   \*\*kern
>   \*K\[B3-C4\#F4\#A4\#D5-\]
>   B-
>   a\#
>   c\#
>   f\#
>   dd-
>   \*-
>   ---------------------------
>
------------------------------------------------------------------------

### FILES

The file `x_option.awk` is used by this program when the <span class="option">x</span> option
is invoked.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **cents (2),  cents (4), **degree (2),  degree (4), **freq (2),  freq (4), **fret (2),  hint (4), **kern (2),  mint (4), **MIDI (2),  midi (4), **pitch (2),  pitch (4),  proof (4), **semits (2),  semits (4), **solfg (2),  solfg (4), **specC (2),  specc (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

### BUGS

When translating <span class="rep">pitch</span>, <span class="rep">solfg</span>, or <span class="rep">Tonh</span>, inputs, <span class="tool">kern</span>
ignores cents deviation. Hence C\#6+80 is rendered as \`ccc\#\' rather
than the nearest pitch \`ddd\'.

------------------------------------------------------------------------

### WARNINGS

Humdrum representations are expected to avoid context dependency insofar
as possible. This can lead to unexpected results. For example, the
letter \`x\' in <span class="rep">pitch</span> is intended to signify the presence of a
double sharp. Thus the <span class="rep">pitch</span> input token \`xyzC4\' is correctly
translated by <span class="tool">kern</span> as \`yzc\#\#\'. Similarly, the <span class="rep">pitch</span> input
token \`1yzC4\' becomes \`yzCCC4\'. (The first numerical value is
interpreted as the octave number and the trailing number 4 is
interpreted as a non-pitch-related signifier.)

------------------------------------------------------------------------

\

-   [**Introductory description in the Humdrum User
    Guide**](../guide02.html)
-   [**Advanced description in the Humdrum User
    Guide**](../guide06.html)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
