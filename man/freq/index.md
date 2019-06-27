---
title: 'Humdrum Toolkit Command Reference -- freq'
permalink: /man/freq/index.html
---

### COMMAND

**freq** \-- translate selected Humdrum pitch-related representations to
frequency

------------------------------------------------------------------------

### SYNOPSIS

` freq  [-p n]  [-tx]  [inputfile ...]  [> outputfile"]`

------------------------------------------------------------------------

### DESCRIPTION

The **freq** command transforms various pitch-related inputs to
corresponding frequency representations. It outputs one or more Humdrum
`**freq` spines containing numerical values (in hertz) corresponding to
the fundamental frequency for pitch-related input tokens. For example,
the `**pitch` token \"C4\" is transformed to 261.63 (hertz).

The **freq** command is able to translate any of the pitch-related
representations listed below. In each case, a tuning standard of A4
equals 440 hertz is assumed. For descriptions of the various input
representations (including `**freq`) refer to Section 2 *(Representation
Reference)* of this reference manual.

It is recommended that output files produced using the **freq** command
should be given names with the distinguishing \`\"\' extension.

>   ------------ ---------------------------------------------------------------------------
>   `**cbr`      critical band rate (in equivalent rectangular bandwidth units)
>   `**cents`    hundredths of a semitone with respect to middle C=0 (e.g. 1200 equals C5)
>   `**cocho`    cochlear coordinates (in millimeters)
>   `**freq`     fundamental frequency (in hertz)
>   `**fret`     fretted-instrument pitch tablature
>   `**kern`     core pitch/duration representation
>   `**MIDI`     Music Instrument Digital Interface tablature
>   `**pitch`    American National Standards Institute pitch notation (e.g. \"A\#4\")
>   `**semits`   equal-tempered semitones with respect to middle C=0 (e.g. -12 equals C3)
>   `**solfg`    French solfège system (fixed \`doh\')
>   `**specC`    spectral centroid (in hertz)
>   `**Tonh`     German pitch system
>   ------------ ---------------------------------------------------------------------------
>
*Input representations processed by **freq**.*

------------------------------------------------------------------------

### OPTIONS

The **freq** command provides the following options:

>   -------- ---------------------------------------------------------------------------------
>   **-h**   displays a help screen summarizing the command syntax
>   -p *n*   output precision of *n* decimal places
>   **-t**   suppresses printing of all but the first note of a group of tied `**kern notes`
>   **-x**   suppresses printing of non-frequency signifiers
>   -------- ---------------------------------------------------------------------------------
>
Options are specified in the command line.

The **-p** option can be used to set the precision of the output values
to *n* decimal places. The default precision is two decimal places. Note
that **freq** is able to process `**freq` as input; this feature allows
the user to round-off existing `**freq` data to a specified precision.

The **-t** option ensures that only a single output value is given for
tied `**kern` notes; the output coincides with the first note of the
tie.

In the default operation, **freq** outputs non-pitch-related signifiers
in addition to the frequency value. For example, the `**pitch` token
\"A6zzz\" will result in the output \"1760.00zzz\" \-- that is, after
translating A6 to 1760.00 hertz, the \"zzz\" signifiers are retained in
the output. For some applications, echoing non-pitch-related signifiers
in the output is useful. However, in other situations, the result can
prove confusing \-- especially, when the non-pitch-related signifiers
are numbers. Consider the case of the `**kern` token \"8aaa\"; after
translating \`aaa\' to 1760.00 hertz, the non-pitch-related signifier
\`8\' will also be output, hence the value 81760.00 \-- which will
undoubtedly cause confusion. The **-x** option is useful for eliminating
non-pitch-related signifiers from the output. For most `**kern` inputs,
the **-x** option is recommended.

------------------------------------------------------------------------

### EXAMPLES

The following example illustrates the use of **freq.** The input
contains six pitch-related spines \-- one of which (`**deg`) cannot be
processed by **freq.** In addition, there are two non-pitch-related
spines (`**embell` and `**metpos`). ``

>   ---------------------- ----------- ----------- --------- ------------ ----------- ---------- ------------
>   !! \`freq\' example.                                                                         
>   \*\*kern               \*\*pitch   \*\*MIDI    \*\*deg   \*\*metpos   \*\*cocho   \*\*Tonh   \*\*embell
>   \*M2/4                 \*M2/4      \*M2/4      \*M2/4    \*M2/4       \*M2/4      \*M2/4     \*M2/4
>   \*                     \*          \*          \*        \*tb8        \*          \*         \*
>   =1                     =1          =1          =1        =1           =1          =1         =1
>   8ee-                   G\#4foo     /60/bar     1foo      1            r           Gis2       ct
>   .                      .           /-60/       .         .            .           .          .
>   8ff                    A3          /62/        2         3            9.89        H2         upt
>   .                      .           /-62/       .         .            .           .          .
>   8dd-                   Ab3         /70/        1         2            7.07        B2         ct
>   .                      .           /-70/       .         .            .           .          .
>   8d-                    C\#4        /61/        6         3            7.135       Cis4       sus
>   .                      .           /-61/       .         .            .           .          .
>   =2                     =2          =2          =2        =2           =2          =2         =2
>   \[4a-                  r           .           5         1            r           r          .
>   .                      .           .           7         3            5.5         Heses2     ct
>   4a-\]                  D4          /48/ /52/   1         2            8.11        C3         ct
>   .                      .           /-48/       .         .            .           .          .
>   .                      D4 F4       /-52/       2         3            7.33 6.4    C3 Es3     ct
>   =3                     =3          =3          =3        =3           =3          =3         =3
>   r                      G4          .           r         1            r           H2 D3      .
>   ===                    ===         ===         ===       ===          ===         ===        ===
>   \*-                    \*-         \*-         \*-       \*-          \*-         \*-        \*-
>   ---------------------- ----------- ----------- --------- ------------ ----------- ---------- ------------
>
Executing the command

> ` freq -tx input > output"`

produces the following result: ``

>   ---------------------- --------------- --------------- --------- ------------ --------------- --------------- ------------
>   !! \`freq\' example.                                                                                          
>   \*\*freq               \*\*freq        \*\*freq        \*\*deg   \*\*metpos   \*\*freq        \*\*freq        \*\*embell
>   \*M2/4                 \*M2/4          \*M2/4          \*M2/4    \*M2/4       \*M2/4          \*M2/4          \*M2/4
>   \*                     \*              \*              \*        \*tb8        \*              \*              \*
>   =1                     =1              =1              =1        =1           =1              =1              =1
>   622.25                 415.30          261.63          1foo      1            r               103.83          ct
>   .                      .               .               .         .            .               .               .
>   698.46                 220.00          293.66          2         3            481.97          123.47          upt
>   .                      .               .               .         .            .               .               .
>   554.37                 207.65          466.16          1         2            273.21          116.54          ct
>   .                      .               .               .         .            .               .               .
>   277.18                 277.18          277.18          6         3            277.16          277.18          sus
>   .                      .               .               .         .            .               .               .
>   =2                     =2              =2              =2        =2           =2              =2              =2
>   415.30                 r               .               5         1            r               r               .
>   .                      .               .               7         3            187.76          110.00          ct
>   .                      293.66          130.81 164.81   1         2            340.92          130.81          ct
>   .                      .               .               .         .            .               .               .
>   .                      293.66 349.23   .               2         3            289.24 234.47   130.81 155.56   ct
>   =3                     =3              =3              =3        =3           =3              =3              =3
>   r                      392.00          .               r         1            r               123.47 146.83   .
>   ===                    ===             ===             ===       ===          ===             ===             ===
>   \*-                    \*-             \*-             \*-       \*-          \*-             \*-             \*-
>   ---------------------- --------------- --------------- --------- ------------ --------------- --------------- ------------
>
Both processed and unprocessed spines are output. Notice that the tied
note at the beginning of measure 2 in the `**kern` spine has been
rendered as a single note rather than as two notes (due to the **-t**
option). Also notice that the non-pitch-related signifiers (e.g. foo) in
the first notes of the `**pitch, **MIDI`, and `**cocho` spines have been
stripped away (due to the **-x** option).

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

` **cbr (2),  cbr (4), **cents (2),  cents (4), **cocho (2),  cocho (4), **freq (2), **fret (2), **kern (2),  kern (4), **MIDI (2),  midi (4), **pitch (2),  pitch (4), **semits (2),  semits (4), **solfg (2),  solfg (4), **specC (2),  specC (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide04.html#Frequency)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
