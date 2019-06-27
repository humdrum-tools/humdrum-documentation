---
title: 'Humdrum Toolkit Command Reference -- tacet'
permalink: /man/tacet/index.html
---

### COMMAND

**tacet** \-- reset MIDI channels to ensure silence

------------------------------------------------------------------------

### SYNOPSIS

` tacet  [-i hex]`

------------------------------------------------------------------------

### DESCRIPTION

The **tacet** command resets the MIDI output. It sends \"all-notes-off\"
commands on MIDI channels 1-16. The **tacet** command is useful if a
MIDI application has terminated abnormally \-- leaving one or more
sounding notes (\"ciphers\") on a MIDI device.

------------------------------------------------------------------------

### OPTIONS

The **tacet** command provides the following options:

>   ---------- -------------------------------------------------------
>   **-h**     displays a help screen summarizing the command syntax
>   -i *hex*   assign MIDI input/output address to *hex*
>   ---------- -------------------------------------------------------
>
Options are specified in the command line.

The **-i** option is used to specify the input/output address of the
MIDI card. The default address is \`330.\' The address is specified as a
hexadecimal number.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up.

------------------------------------------------------------------------

### SEE ALSO

[**midreset**](midreset.html) (4), [**perform**](perform.html) (4),
[**smf**](smf.html) (4)

------------------------------------------------------------------------

### REFERENCES

Use of the Music Quest Inc. MIDI library functions is gratefully
acknowledged.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide07.html#The_tacet_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
