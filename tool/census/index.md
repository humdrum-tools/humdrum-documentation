---
title:		'Humdrum Toolkit Command Reference -- census'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/census/index.html
---


### COMMAND

<span class="tool">census</span> -- determine general properties of a Humdrum input

------------------------------------------------------------------------

## SYNOPSIS ##

` census  [-k]  [inputfile ...]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">census</span> command provides a summary of seven gross features of any
Humdrum input. It provides counts of the total number of records
(lines), the number of unique interpretations encountered, the number of
comments, the number of data records, the number of data tokens, null
tokens, and multiple-stops.

When the <span class="option">k</span> option is invoked, <span class="tool">census</span> provides a summary of a
further ten features pertaining to <span class="rep">kern</span> inputs. This summary
includes the number of single and double barline records, the maximum
number of concurrent notes, the total number of note-heads, the total
number of notes (tied notes treated as single notes), the total number
of rests, as well as the longest, shortest, highest, and lowest notes
encountered.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">census</span> command provides the following options:

<span class="option">h</span>

displays a help screen summarizing the command syntax

<span class="option">k</span>

also output information regarding
`**kern-related data   Options are specified in the command line. `

The <span class="option">k</span> option pertains to <span class="rep">kern</span> inputs only. This option adds
<span class="rep">kern</span>-related information to the output.

------------------------------------------------------------------------

## SAMPLE OUTPUT ##

The following is a sample output where the <span class="option">k</span> option has been
invoked. Without the <span class="option">k</span> option, the \"KERN DATA\" would be absent
from the output.

``

---------------------------- ----
HUMDRUM DATA
Number of data tokens:       33
Number of null tokens:       9
Number of multiple-stops:    1
Number of data records:      11
Number of interpretations:   2
Number of records:           14

KERN DATA
Number of note-heads:        8
Number of notes:             7
Longest note:                2
Shortest note:               16
Highest note:                cc
Lowest note:                 C
Number of rests:             4
Maximum concurrent notes:    2
Number of single barlines:   2
Number of double barlines:   1
---------------------------- ----

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

` **kern (2), humdrum humdrum (4), proof proof (4)`

------------------------------------------------------------------------

## DOWNLOAD CODE ##

The source (which is also the executable) code for this command can be
directly downloaded. Two files are necessarily:
[census](Linked.bin/census) and [census.awk](Linked.bin/census.awk) For
each of these files, click on the link, and save the document on your
system using the FILE/SAVE AS menu item in your web browser. Save the
file using the default file name (e.g. census.awk). Please refer to the
pertinent [installation-related information](install.small.html).



