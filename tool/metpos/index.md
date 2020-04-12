---
title:		'Humdrum Toolkit Command Reference -- metpos'
author:		David Huron
vim:		ft=html
permalink:	/tool/metpos/index.html
---

### COMMAND

<span class="tool">metpos</span> &mdash; assign metric position indicators to Humdrum sonorities

------------------------------------------------------------------------

### SYNOPSIS

` metpos  [-m n/n]  [-t n]  [inputfile.tb ...]  [ > outputfile.met]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">metpos</span> command is used to characterize the metric strength of
successive sonorities in a musical passage. Specifically, <span class="tool">metpos</span>
appends a Humdrum ` **metpos` spine to a time-base (`*tb`) input stream.
The ` **metpos` spine contains integer values indicating the position in
the metric hierarchy for each data record &mdash; given some meter
signature.

The highest position in any given metric hierarchy is given the value
\"1.\" This value is assigned to the first event at the beginning of
each measure. In duple and quadruple meters, the second level in the
metric hierarchy occurs in the middle of the measure and is assigned the
output value \"2.\" (In triple meters, the second and third beats in the
measure will be assigned to the second level in the metric hierarchy.)
All other metric positions in the measure (beats, sub-beats,
sub-sub-beats, etc.) are assigned successively increasing numerical
values according to their placement in the metric hierarchy. Larger
`**metpos` values signify sonorities of lesser metric significance.

Input to <span class="tool">metpos</span> can be any Humdrum file that conforms to the
*time-base* format &mdash; i.e. where each data record represents an
equivalent duration of time. Each input measure will thus contain the
same number of data records. For example, in 3/4 meter with an
eighth-note time-base, each complete measure should contain 6 data
records.

For correct operation, <span class="tool">metpos</span> must be informed of both the *meter
signature* and the *time-base* for the given input passage. This
information may be specified either via the command line, or as encoded
interpretations in the input stream. The command line method of
specification is illustrated below:

> ` metpos -m 9/16 -t 32`

This command establishes a meter of 9/16 and a time-base of a
thirty-second duration for the input.

Alternatively, the meter signature and time-base duration can be made
known through the presence of interpretation records in the encoded
input. In the above case, the meter signature can be made known to
<span class="tool">metpos</span> through the `*M9/16` interpretation, while the time-base
duration can be made known to through the `*tb32` interpretation. A
time-base and meter signature interpretation must appear in all spines
of the input file prior to the occurrence of any data records. Note that
once the initial meter is established, <span class="tool">metpos</span> is able to adapt to
encoded changes of meter within a given score or input stream. If meter
or time-base information is not available to <span class="tool">metpos</span> an error message
will be issued and execution terminated.

As noted above, metric hierarchies are represented through a series of
integer values. The smallest numerical values represent events having
the highest metric stress, whereas successively larger values represent
positions of progressively weaker metric stress. For example, in the
case of 2/4 meter with an 8th duration time-base, the metric hierarchy
is: 1, 3, 2, 3. If the time-base is 16th durations, the metric hierarchy
is: 1, 4, 3, 4, 2, 4, 3, 4. Metric hierarchies in compound meters are
also possible. For example, in the case of 6/8 meter (16th durations)
the metric hierarchy is: 1, 4, 3, 4, 3, 4, 2, 4, 3, 4, 3, 4.

Note that <span class="tool">metpos</span> is unable to deal with irregular meters. (See
\"LIMITS\" below.)

It is recommended that output files produced using the <span class="tool">metpos</span>
command should be given names with the distinguishing \`.met\'
extension.

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">metpos</span> command provides the following options:

> **-h**

displays a help screen summarizing the command syntax

-m *n/n*

set the initial meter signature to *n/n*

-t *n*

set the initial time-base duration to *n*
(`**recip value)  Options are specified in the command line. `

------------------------------------------------------------------------

### SAMPLE OUTPUTS

The following extract from Bartók's \"Two-Part Study\" No. 121 from
*Mikrokosmos* demonstrates the effect of the <span class="tool">metpos</span> command. The two
left-most columns show the original input; all three columns show the
corresponding output from <span class="tool">metpos</span>: ``

>   ---------- ---------- ------------
>   \*\*kern   \*\*kern   \*\*metpos
>   \*tb8      \*tb8      \*tb8
>   =16        =16        =16
>   \*M6/4     \*M6/4     \*M6/4
>   8Gn        8b-        1
>   8A         8ccn       4
>   8B-        8cc\#}     3
>   8cn        {8f\#      4
>   8c\#}      8gn        3
>   {8F\#      8a         4
>   8G         8b-        2
>   8A         8ccn       4
>   8B-        4b-        3
>   8cn        .          4
>   8c\#}      8fn}       3
>   8r         8r         4
>   =17        =17        =17
>   \*M4/4     \*M4/4     \*M4/4
>   8d         2r         1
>   4.d        .          4
>   .          .          3
>   .          .          4
>   {2d\_      8dd        2
>   .          4.dd       4
>   .          .          3
>   .          .          4
>   =18        =18        =18
>   8d         {1dd\_     1
>   8A         .          4
>   8F\#       .          3
>   8E         .          4
>   8D         .          2
>   8BB        .          4
>   8D         .          3
>   8E}        .          4
>   =19        =19        =19
>   \*M3/2     \*M3/2     \*M3/2
>   {8F\#      8dd        1
>   8A         8ffn       4
>   8c\#       8aa        3
>   8A         8ff        4
>   8F\#       8dd        2
>   8A         8ff        4
>   8F\#       8dd        3
>   8E         8ccn       4
>   8D         8b-        2
>   8BBn       8gn        4
>   8D         8b-        3
>   8E}        8cc        4
>   =20        =20        =20
>   \*-        \*-        \*-
>   ---------- ---------- ------------
>
Notice that <span class="tool">metpos</span> adapts to changing meter signatures, and
correctly distinguishes between metric accent patterns such as 6/4
(measure 16) and 3/2 (measure 19).

------------------------------------------------------------------------

### WARNINGS

It is possible to define a time-base that makes little sense with
respect to the meter signature. For example, it is possible to set the
time-base to a quarter duration (`*tb4`) in a 6/8 meter (`*M6/8`). The
resulting metric heirarchy (1,3,3) will produce \"hemiola\" values.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **kern (2), **recip (2),  timebase (4)`

------------------------------------------------------------------------

### LIMITS

In a number of meters, <span class="tool">metpos</span> is limited in the depth of permissible
metric positions. These limitations are tabulated below:

>   -------------------- ----------------- ------------------------------
>   compound duple       7 metric levels   96 metric positions/measure
>   compound triple      6 metric levels   108 metric positions/measure
>   compound quadruple   7 metric levels   96 metric positions/measure
>   simple triple        7 metric levels   96 metric positions/measure
>   simple duple         no limitation     no limitation
>   simple quadruple     no limitation     no limitation
>   -------------------- ----------------- ------------------------------
>
By way of example, it is possible to process music in 6/8 meter in
time-base divisions as small as a 256th-notes, or a passage in 6/2 meter
in 64th-note divisions. Smaller time-base divisions are not handled.

The following meter signatures can be handled by **metpos:**

>   ------- ------- ------- ------- ------- --------
>   2/2,    3/2,    4/2,    6/2,    9/2,    12/2,
>   2/4,    3/4,    4/4,    6/4,    9/4,    12/4,
>   2/8,    3/8,    4/8,    6/8,    9/8,    12/8,
>   2/16,   3/16,   4/16,   6/16,   9/16,   12/16,
>   2/32,   3/32,   4/32,   6/32,   9/32,   12/32,
>   2/64,   3/64,   4/64,   6/64,   9/64,   12/64,
>   ------- ------- ------- ------- ------- --------
>
Some meter signatures containing dotted durations can also be handled:

>   -------------- -------------- ---------------
>   2/2.(=6/4),    3/2.(=9/4),    4/2.(=12/4),
>   2/4.(=6/8),    3/4.(=9/8),    4/4.(=12/8),
>   2/8.(=6/16),   3/8.(=9/16),   4/8.(=12/16),
>   -------------- -------------- ---------------
>
Meter signatures NOT handled by <span class="tool">metpos</span> include:

>   ------- ------- ------- -------- -------- -------- -------- -------- --------
>   5/2,    7/2,    8/2,    10/2,    11/2,    13/2,    14/2,    15/2,    16/2,
>   5/4,    7/4,    8/4,    10/4,    11/4,    13/4,    14/4,    15/4,    16/4,
>   5/8,    7/8,    8/8,    10/8,    11/8,    13/8,    14/8,    15/8,    16/8,
>   5/16,   7/16,   8/16,   10/16,   11/16,   13/16,   14/16,   15/16,   16/16,
>   etc.                                                                 
>   ------- ------- ------- -------- -------- -------- -------- -------- --------
>
------------------------------------------------------------------------

### PROPOSED MODIFICATIONS

Irregular meters such as 5/4 or 7/8 should be acceptable provided the
beat subdivisions are made explicit: e.g. 5/4 as (3+2)/4 or 5/4 as
(2+3)/4 or 8/8 (3+3+2)/8, etc. Alternatively, no sub-grouping of
irregular meters into beats of 2\'s or 3\'s need be assumed. Thus, for
example, all beats other than the first beat in 5/4 could be assigned
identical values in the metric hierarchy.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide23.html#The_metpos_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
