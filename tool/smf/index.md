---
title:		'Humdrum Toolkit Command Reference -- smf'
author:		David Huron
vim:		ft=html
permalink:	/tool/smf/index.html
---

### COMMAND

<span class="tool">smf</span> -- generate standard MIDI file from Humdrum `**MIDI` input

------------------------------------------------------------------------

### SYNOPSIS

` smf   [-t n.n]   [-v n]   outputfile.smf   <   inputfile.hmd  cat inputfile.hmd | smf   [-t n.n]   [-v n]  >  outputfile.smf`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">smf</span> command allows the user to create \"standard MIDI files\"
from Humdrum `**MIDI`-format files. Standard MIDI files (SMFs) are
industry-standard binary files that can be imported by a variety of MIDI
applications software packages, including sequencer programs and several
music notation packages.

The <span class="tool">smf</span> command accepts as input Humdrum files containing `**MIDI`
representations. All `**MIDI` spines present in the input stream are
translated to SMF MIDI. Non-`**MIDI` spines are ignored and will not
affect the SMF output.

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">smf</span> command provides the following command-line options:

>   ---------- -------------------------------------------------------
>   **-h**     displays a help screen summarizing the command syntax
>   -t *n.n*   set initial tempo to *n.n* times the default tempo
>   -v *n*     specify default MIDI key-velocity value (0-127)
>   ---------- -------------------------------------------------------
>
Options are specified in the command line.

The performance tempo may be specified either in the command line or in
the input Humdrum representation. The tempo may be specified on the
command line by using the **-t** option. The **-t** must be followed by
an integer or real value between 0.13 and 3.80. A value of 1.0
corresponds to the default tempo of 66 quarter-notes per minute. A value
of 2.0 doubles the tempo, whereas a value of 0.5 halves the tempo.
Alternatively, tempo may be specified using the `**MIDI` tandem
interpretation for metronome marking (e.g. `*MM96`). Minimum and maximum
tempi are 8 and 250 quarter-notes per minute respectively. Tempo
specifications found in the input representation take precedence over
any tempo specified on the command line. If no tempo information is
available, <span class="tool">smf</span> assumes a default tempo of 66 quarter-notes per
minute.

The **-v** option allows the user to specify a key-velocity default.
MIDI instruments normally treat key-velocity data as dynamic or accent
information &mdash; thus higher key-velocity values are associated with
accented notes. Permissible key-velocity values range between 0
(slowest) and 127 (fastest). The **-v** option can be used to set the
default key-velocity for key-on commands with unspecified
key-velocities. In the absence of the **-v** option, the default
key-velocity value is 64.

------------------------------------------------------------------------

### DIAGNOSTICS

The <span class="tool">smf</span> command produces MIDI Standard \"format 0\" files. When used
in conjunction with the <span class"tool">midi</span> command, the **midi -u**
option should be invoked in order to ensure that all notes are turned
off.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up. DOS 2.0 and up. OS/2. UNIX.

------------------------------------------------------------------------

### PROPOSED MODIFICATIONS

The program should be modified to allow inputs to contain MIDI control
codes and MIDI system exclusive codes.

------------------------------------------------------------------------

### SEE ALSO

` **MIDI (2),  midi (4),  perform (4),  record (4)`

------------------------------------------------------------------------

### REFERENCES

Use of the Music Quest Inc. MIDI library functions is gratefully
acknowledged.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide07.html#The_smf_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
