---
title: 'Humdrum Toolkit Command Reference -- timebase'
permalink: /man/timebase/index.html
---

### COMMAND

**timebase** -- reformat Humdrum `**kern` or `**recip` score with
constant time-base

------------------------------------------------------------------------

### SYNOPSIS

` timebase  -t n[.]  [-M mark] [-m mark] [-x]  [inputfile ...]  [ > outputfile.tb]`

------------------------------------------------------------------------

### DESCRIPTION

The **timebase** command is used to reformat `**kern` or `**recip`
inputs so that output data records represent equivalent slices (elapsed
duration) of time. The effect of the **timebase** command is best
illustrated by an example. With a specified time-base of a sixteenth
duration, the following input: ``

>   ---------- ---------- ---------- ----------
>   \*\*kern   \*\*kern   \*\*kern   \*\*kern
>   4g         8.r        8.cc       16ee
>   .          .          .          8ff
>   .          32b        16cc       16gg
>   .          32a        .          .
>   8f         8cc        8dd        8ff
>   \*-        \*-        \*-        \*-
>   ---------- ---------- ---------- ----------
>
would produce the following output: ``

>   ---------- ---------- ---------- ----------
>   \*\*kern   \*\*kern   \*\*kern   \*\*kern
>   \*tb16     \*tb16     \*tb16     \*tb16
>   4g         8.r        8.cc       16ee
>   .          .          .          8ff
>   .          .          .          .
>   .          32b        16cc       16gg
>   8f         8cc        8dd        8ff
>   .          .          .          .
>   \*-        \*-        \*-        \*-
>   ---------- ---------- ---------- ----------
>
Each output record represents a snap-shot of a sixteenth duration
following the previous data record. Depending upon the choice of
time-base, the resulting output is either expanded or contracted in
length. Details finer than the specified time-base are lost; in the
above example, notice that the second thirty-second note (pitch \`A\' in
the second spine) has disappeared from the file as the time-base is only
a sixteenth duration.

The time-base is selected by assigning a `**recip` duration value to the
**-t** option. Time-base durations may be dotted.

Comments and barlines are preserved in the output, however, acciaccatura
records (grace notes) are discarded.

It is recommended that output files produced using the **timebase**
command should be given names with the distinguishing \`.tb\' extension.

------------------------------------------------------------------------

### OPTIONS

The **timebase** command provides a number of options.

>   ----------- ----------------------------------------------------------
>   **-h**      displays a help screen summarizing the command syntax
>   -t *n*      set time-base where *n* represents a `**recip duration`
>   **-x**      strip duration values from the input
>   -M *mark*   prepend *mark* to beginning of any padded output records
>   -m *mark*   append *mark* to end of any padded output records
>   ----------- ----------------------------------------------------------
>
Options are specified in the command line. e.g.

> ` timebase -t 8. -x`

will remove `**kern` or `**recip` duration encodings from the output;
each output data record will represent an elapsed duration of a dotted
eighth note.

The **-M** option adds a user-specified marker-string to the beginning
of all records that **timebase** pads to the output. For example, the
command:

> ` timebase -t 8 -M ABC`

will add the string `ABC` to the beginning of (otherwise) null data
records added by **timebase.**

The **-m** option appends a user-specified marker-string to the end of
all padded output records. Both the **-M** and **-m** options can be
used concurrently.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **kern (2),  metpos (4)`

------------------------------------------------------------------------

### WARNINGS

Depending upon the defined time-base, passages of prolonged syncopation
may disappear from the output. The **timebase** command assumes the
integrity of the duration structure of the input score. Corrupt duration
structures in the input will produce unpredictable results.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide13.html#Aligning_Durations_Using_the_timebase_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
