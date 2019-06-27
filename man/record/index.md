---
title: 'Humdrum Toolkit Command Reference -- record'
permalink: /man/record/index.html
---


### COMMAND

**record** \-- record live MIDI input in Humdrum `**MIDI` data format

------------------------------------------------------------------------

### SYNOPSIS

` record  [-i hex]  [-q n]  [ > outputfile.hmd]`

------------------------------------------------------------------------

### DESCRIPTION

The **record** command captures a stream of input MIDI data and
translates this data into a simple Humdrum `**MIDI` representation.
Input MIDI data is obtained through a Roland MPU-401 (or compatible)
interface \-- usually connected in turn to a MIDI synthesizer. The
obtained `**MIDI` data can be manipulated using several Humdrum tools,
or it can be played-back using the [**perform**](perform.html) command.

Recording commences as soon as the command is invoked. Recording ceases
when any ASCII key is pressed \-- with the exception of the space bar.
Only MIDI key-press activity (including after-touch) information is
recorded. MIDI system-exclusive instructions and other non-key-press
data are not recorded.

Each MIDI channel is represented using a separate Humdrum spine. New
spines are added automatically during the recording \-- in response to
additional activity on new MIDI channels. Once a MIDI channel becomes
active, the corresponding Humdrum spine continues to be output until the
recording is terminated.

At any time during the recording process, pressing the space bar will
insert a `**MIDI` barline data token in the output stream. Measure
numbers are incremented automatically beginning with measure 1.

It is recommended that output files produced using the **record**
command should be given names with the distinguishing \`.hmd\'
extension.

------------------------------------------------------------------------

### OPTIONS

The **record** command provides the following option:

>   ---------- ---------------------------------------------------------------
>   **-h**     displays a help screen summarizing the command syntax
>   -i *hex*   assign MIDI interface input/output address to *hex*
>   -q *n*     invokes quantizing using a temporal window of *n* clock ticks
>   ---------- ---------------------------------------------------------------
>
Options are specified in the command line.

The **-q** option invokes a quantizing function where timing information
is rounded-off to a specified level of resolution. This option may be
used to eliminate expressive timing information and assist in producing
a canonical duration representation. The degree of quantizing is
specified by the *n* argument to the **-q** option, where *n* represents
the quantizing window in MIDI clock ticks. Recorded events occurring
within this window are deemed to be simultaneous, and are recorded as
Humdrum double-stops in the output.

The **-i** option is used to specify the input/output address of the
MIDI card. The default address is \`330.\' The address is specified as a
hexadecimal number.

------------------------------------------------------------------------

### SAMPLE OUTPUT

The following examples illustrate how **record** may be used. A simple
command invocation is:

> ` record`

Output `**MIDI` data may appears as follows: ``

>   -------------------------------------
>   !! Data from the MPU-401 MIDI card.
>   \*\*MIDI
>   \*Ch1
>   236/67/64
>   12/-67/64
>   10/67/66
>   11/-67/64
>   13/67/51
>   12/-67/64
>   14/63/72
>   263/-63/64
>   84/65/61
>   15/-65/64
>   10/65/55
>   15/-65/64
>   11/65/51
>   23/-65/64
>   12/62/58
>   171/-62/64
>   \*-
>   -------------------------------------
>
Using the quantizing option:

> ` record -q 10`

might produce output such as the following `**MIDI` data. Notice the
frequent occurrence of multiple-stops (more than one note-instruction in
the spine). ``

>   --------------------------------------
>   !! Data from the MPU-401 MIDI card.
>   !! Quantizing set at 10 clock ticks.
>   \*\*MIDI
>   \*Ch1
>   303/50/39
>   13/-50/64 13/74/55
>   23/76/43
>   15/-74/64 15/78/58 15/-76/64
>   22/69/35 22/-78/64 22/62/43
>   18/-62/64 18/78/43 18/-69/64
>   22/76/35
>   14/-78/64 14/74/58
>   15/-76/64 15/-74/64
>   12/81/48 12/54/77
>   17/-54/64 17/74/69 17/-81/64
>   23/76/48
>   19/78/66 19/-74/64 19/-76/64
>   21/62/43 21/69/69 21/-78/64
>   14/-62/64 14/78/51 14/-69/64
>   25/76/58
>   17/-78/64 17/74/74 17/-76/64
>   15/-74/64
>   \*-
>   --------------------------------------
>
------------------------------------------------------------------------

### DIAGNOSTICS

The program is implemented as a four-state finite state machine.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with a Roland MPU-401 or compatible MIDI interface.

------------------------------------------------------------------------

### SEE ALSO

`  cents (4),  encode (4), encode.rc (5),  kern (4), **MIDI (2),  midi (4),  perform (4),  pitch (4),  semits (4),  smf (4),  solfg (4),  tonh (4)`

------------------------------------------------------------------------

### REFERENCES

Use of the Music Quest Inc. MIDI library functions is gratefully
acknowledged.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide30.html#The_record_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
