---
title: 'Humdrum Toolkit Command Reference \-- census'
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

------------------------------------------------------------------------

### COMMAND

**census** \-- determine general properties of a Humdrum input

------------------------------------------------------------------------

### SYNOPSIS

` census  [-k]  [inputfile ...]`

------------------------------------------------------------------------

### DESCRIPTION

The **census** command provides a summary of seven gross features of any
Humdrum input. It provides counts of the total number of records
(lines), the number of unique interpretations encountered, the number of
comments, the number of data records, the number of data tokens, null
tokens, and multiple-stops.

When the **-k** option is invoked, **census** provides a summary of a
further ten features pertaining to `**kern` inputs. This summary
includes the number of single and double barline records, the maximum
number of concurrent notes, the total number of note-heads, the total
number of notes (tied notes treated as single notes), the total number
of rests, as well as the longest, shortest, highest, and lowest notes
encountered.

------------------------------------------------------------------------

### OPTIONS

The **census** command provides the following options:

> > **-h**

displays a help screen summarizing the command syntax

**-k**

also output information regarding
`**kern-related data   Options are specified in the command line. `

The **-k** option pertains to `**kern` inputs only. This option adds
`**kern`-related information to the output.

------------------------------------------------------------------------

### SAMPLE OUTPUT

The following is a sample output where the **-k** option has been
invoked. Without the **-k** option, the \"KERN DATA\" would be absent
from the output.

> ``
>
> >   ---------------------------- ----
> >   HUMDRUM DATA                 
> >   Number of data tokens:       33
> >   Number of null tokens:       9
> >   Number of multiple-stops:    1
> >   Number of data records:      11
> >   Number of interpretations:   2
> >   Number of records:           14
> >                                
> >   KERN DATA                    
> >   Number of note-heads:        8
> >   Number of notes:             7
> >   Longest note:                2
> >   Shortest note:               16
> >   Highest note:                cc
> >   Lowest note:                 C
> >   Number of rests:             4
> >   Maximum concurrent notes:    2
> >   Number of single barlines:   2
> >   Number of double barlines:   1
> >   ---------------------------- ----
> >
------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **kern (2), humdrum humdrum (4), proof proof (4)`

------------------------------------------------------------------------

### DOWNLOAD CODE

The source (which is also the executable) code for this command can be
directly downloaded. Two files are necessarily:
[census](Linked.bin/census) and [census.awk](Linked.bin/census.awk) For
each of these files, click on the link, and save the document on your
system using the FILE/SAVE AS menu item in your web browser. Save the
file using the default file name (e.g. census.awk). Please refer to the
pertinent [installation-related information](install.small.html).

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide03.html#The_census_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
