---
title:		'Humdrum Toolkit Command Reference -- degree'
author:		David Huron
vim:		ft=html
permalink:	/tool/degree/index.html
---

### COMMAND

<span class="tool">degree</span> &mdash; translate selected Humdrum pitch-related representations
to absolute scale degree (`**degree`)

------------------------------------------------------------------------

### SYNOPSIS

` degree  [k|K key] [-tx]  [inputfile ...]  [> outputfile.dgr]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">degree</span> command transforms various pitch-related inputs to the
corresponding scale degree. The command outputs one or more Humdrum
`**degree` spines &mdash; where scale degrees are indicated by the numbers 1
(tonic) to 7 (leading tone). Scale degree information can be determined
only with reference to some prevailing key. For example, the pitch C4 is
the tonic (1) in the key of C major, but the submediant (6) in the key
of E minor. The <span class="tool">degree</span> command expects a tandem interpretation
indicating the key of the input passage; <span class="tool">degree</span> will adapt to
specified changes of key within an input. If no key information is
provided prior to the first pitch-related data, <span class="tool">degree</span> issues an
error message and terminates.

The <span class="tool">degree</span> command differs from the (related) <span class"tool">deg</span>
command in that it outputs *absolute* (rather than *relative)*
pitch-height information. Along with the scale degree, the octave number
is represented &mdash; the two values being separated by a slash (/). Hence
the token \`1/4\' means the first scale degree (tonic) in octave \`4\'.
As in the case of [<span class="tool">deg</span>,](deg.html) plus and minus signs indicate
whether a pitch has been chromatically raised or lowered. For example,
the pitch A-flat is designated \`6-\' in the key of C major, but \`6\'
in the key of C minor. The harmonic minor scale is assumed for all minor
keys. Thus, B-flat is considered a \"lowered\" seventh degree in C
minor, whereas B natural is considered the \"normal\" (rather than
\"raised\") seventh degree. For some applications, this interpretation
of the minor-scale seventh degree may cause difficulties.

The <span class="tool">degree</span> command is able to translate any of the pitch-related
representations listed below. For descriptions of the various input
representations (including `**degree`) refer to Section 2
*(Representation Reference)* of this reference manual.

It is recommended that output files produced using the **dgr** command
should be given names with the distinguishing \`.dgr\' extension.

> >   ----------- ----------------------------------------------------------------------
> >   `**kern`    core pitch/duration representation
> >   `**pitch`   American National Standards Institute pitch notation (e.g. \"A\#4\")
> >   `**solfg`   French solfège system (fixed \`doh\')
> >   `**Tonh`    German pitch system
> >   ----------- ----------------------------------------------------------------------
> >
> *Input representations processed by <span class="tool">degree</span>.*

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">degree</span> command provides the following options:

> > **-h**

displays a help screen summarizing the command syntax

-k *key*

specify default key

-K *key*

specify override key

**-t**

suppresses printing of all but the first note of a group of tied
`**kern notes`

**-x**

suppresses printing of
non-`**degree signifiers   Options are specified in the command line. `

The **-t** option ensures that only a single output value is given for
tied `**kern` notes; the output coincides with the first note of the
tie.

In the default operation, <span class="tool">degree</span> outputs non-pitch-related
signifiers in addition to the degree value. For example, in the key of D
major, the `**pitch` token \"G5zzz\" will result in the output
\"4/5zzz\" &mdash; that is, after translating G5 to 4/5, the \"zzz\"
signifiers are retained in the output. For some applications, echoing
non-pitch-related signifiers in the output is useful. However, in other
situations, the result can prove confusing &mdash; especially, when the
non-pitch-related signifiers are numbers. Consider the case of the
`**kern` token \"4f\#\" in the key of D minor; after translating
\``f#`\' to \``3+/4`\' (i.e. raised third degree in octave 4), the
preceding non-pitch-related signifier \``4`\' will also be output, hence
the value `43+/4` &mdash; which may cause confusion.

The **-x** option is useful for eliminating non-pitch-related signifiers
from the output. For most `**kern` inputs, the **-x** option is
recommended.

------------------------------------------------------------------------

### EXAMPLES

The following example illustrates the use of **degree.** The input
contains four pitch-related spines &mdash; one of which (`**MIDI`) cannot be
processed by **degree.** In addition, there is one non-pitch-related
spines (`**embell`). ``

>   ------------------------ ---------- ----------- ----------- ----------- ------------
>   !! \`degree\' example.                                                  
>   \*\*kern                 \*\*Tonh   \*\*MIDI    \*\*solfg   \*\*pitch   \*\*embell
>   \*M2/4                   \*M2/4     \*M2/4      \*M2/4      \*M2/4      \*M2/4
>   \*C:                     \*d:       \*G\#:      \*a:        \*F:        \*F:
>   =1                       =1         =1          =1          =1          =1
>   8ee-                     Gis2       /60/        do3         F4foo       ct
>   .                        .          /-60/       .           .           .
>   8f                       H2         /62/        fa3         r           upt
>   .                        .          /-62/       .           .           .
>   8dd-                     B2         /70/        mi3         E4          ct
>   .                        .          /-70/       .           .           .
>   8d&mdash;                    Cis4       /61/        r           F4          sus
>   .                        .          /-61/       .           .           .
>   =2                       =2         =2          =2          =2          =2
>   \[4a-                    r          .           mi\~b3      F4 A4       .
>   .                        Heses2     .           re3         G4 Bb4      ct
>   4a-\]                    C3         /48/ /52/   do3         E4 C5       ct
>   .                        .          /-48/       .           .           .
>   .                        H2 E3      /-52/       la3         G4          ct
>   =3                       =3         =3          =3          =3          =3
>   r                        A2 F3      .           r           F4          .
>   ===                      ===        ===         ===         ===         ===
>   \*-                      \*-        \*-         \*-         \*-         \*-
>   ------------------------ ---------- ----------- ----------- ----------- ------------
>
Executing the command:

> ` degree -tx input > output.dgr`

produces the following result: ``

>   ------------------------ ------------ ----------- ------------ ------------ ------------
>   !! \`degree\' example.                                                      
>   \*\*degree               \*\*degree   \*\*MIDI    \*\*degree   \*\*degree   \*\*embell
>   \*M2/4                   \*M2/4       \*M2/4      \*M2/4       \*M2/4       \*M2/4
>   \*C:                     \*d:         \*G\#:      \*a:         \*F:         \*F:
>   =1                       =1           =1          =1           =1           =1
>   3-/5                     4+/2         /60/        3/3          1/4          ct
>   .                        .            /-60/       .            .            .
>   4/4                      6+/2         /62/        6/3          r            upt
>   .                        .            /-62/       .            .            .
>   2-/5                     6/2          /70/        5/3          7/4          ct
>   .                        .            /-70/       .            .            .
>   2-/4                     7/4          /61/        r            1/4          sus
>   .                        .            /-61/       .            .            .
>   =2                       =2           =2          =2           =2           =2
>   6-/4                     r            .           5-/3         1/4 3/4      .
>   .                        6-/2         .           4/3          2/4 4/4      ct
>   .                        7-/3         /48/ /52/   3/3          7/4 5/5      ct
>   .                        .            /-48/       .            .            .
>   .                        6+/2 2/3     /-52/       1/3          2/4          ct
>   =3                       =3           =3          =3           =3           =3
>   r                        5/2 3/3      .           r            1/4          .
>   ===                      ===          ===         ===          ===          ===
>   \*-                      \*-          \*-         \*-          \*-          \*-
>   ------------------------ ------------ ----------- ------------ ------------ ------------
>
Both processed and unprocessed spines are output. Notice that the tied
note at the beginning of measure 2 in the `**kern` spine has been
rendered as a single note rather than as two notes (due to the **-t**
option). Also notice that the non-pitch-related signifiers (e.g. foo) in
the first notes of the `**pitch` spine have been stripped away (due to
the **-x** option). Note that the plus and minus signs merely indicate
that a scale degree has been raised or lowered, but not by how much.
Hence both the D-flat and D double-flat in measure 1 of the first
(`**kern)` spine are rendered as degree \``2-`\'.

------------------------------------------------------------------------

### FILES

The file `x_option.awk` is used by this program when the **-x** option
is invoked.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **deg (2),  deg (4), **degree (2), **kern (2),  kern (4), **pitch (2),  pitch (4), **solfg (2),  solfg (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
