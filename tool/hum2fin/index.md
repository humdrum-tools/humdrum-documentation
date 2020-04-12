---
title:		'Humdrum Toolkit Command Reference -- hum2fin'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/hum2fin/index.html
---


### COMMAND

<span class="tool">hum2fin</span> &mdash; convert a humdrum file into a Finale enigma-format file
(.etf)

------------------------------------------------------------------------

### SYNOPSIS

` hum2fin  inputfile  [outputfile] [-p]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">hum2fin</span> command provides the means to viewing humdrum files in
the \"Finale\" graphical music notation editor by converting the Humdrum
file into a Finale readable file. It takes a humdrum file as input and
outputs a file with the same musical data represented in Finale's
enigma transportable file format (.etf). The enigma format is an
ASCII-based file format developed by CodaMusic Technology, developer of
Finale, which allows finale data to be read by both Macs and PCs.

As of April 2000, <span class="tool">hum2fin</span> supports the following Humdrum data:

1\. \*\*kern representation <span class="tool">hum2fin</span> supports most \*\*kern
signifiers, including:

0, 1, 2, 4, \... 128, \'.\', note duration -, \# accdientals a-g, A-g, r
pitches \' z \^ ; \~ , \` : W M S u v q articulations and ornaments J, L
beaming \[ \] - tie ( ) slur { } phrase /, \\\\ stemming \* Supported
kern signifiers

2\. \*\*dynam representation <span class="tool">hum2fin</span> supports the following \*\*dynam
signifiers: \< \> ( ) \[ \] X x r <span class="tool">hum2fin</span> assumes that a \*\*dynam
spine is always specific to ONE \*\*kern spine and it is always specific
to the closest \*\*kern spine to its right. Also, only ONE \*\*dynam
spine can be related to a \*\*kern spine. The \*\*dynam spine closest to
the \*\*kern spine gets the connection. For example, in the humdrum file
below,

  ---------- ----------- ----------- ----------- ---------- ----------
  \*\*kern   \*\*dynam   \*\*dynam   \*\*silbe   \*\*kern   \*\*kern
  4r         f           p           I           4d         4f\#
  4r         .           .           am          4e         4g
  ---------- ----------- ----------- ----------- ---------- ----------

the \*\*dynam spine with the piano marking is linked with the second
\*\*kern spine (fifth spine from the left). The \*\*dynam spine
containing the forte marking is ignored. Meanwhile, the \*\*dynam spine
(third spine from the left) is specific to the fifth spine from the
left, but not the first spine nor the last one.

3\. \*\*silbe representation <span class="tool">hum2fin</span> can process the \*\*silbe
representation. Similar to the \*\*dynam representation, <span class="tool">hum2fin</span>
assumes that a \*\*silbe spine is always specific to ONE \*\*kern spine
and it is always specific to the closest \*\*kern spine to its right.
Also, only ONE \*\*silbe spine can be related to a kern spine.
<span class="tool">hum2fin</span> assumes that the humdrum file adopts a through-composed
humdrum format, so <span class="tool">hum2fin</span> does not recognize the \*strophe tandem
interpretation.

4\. Reference record <span class="tool">hum2fin</span> reads the reference record !!!OTL and
puts the text as the title of the music in the enigma file.

5\. Humdrum's barline scheme <span class="tool">hum2fin</span> recognizes and translates the
following barline signifiers: ==\|!, ==:!\|, ==:\|!, ==, =!, =\", =-,
=\', = and = with measure number.

6\. Spine paths <span class="tool">hum2fin</span> only recognizes the exchange spine signifier
\*x.

7\. Tandem interpretations <span class="tool">hum2fin</span> supports the following tandem
interpretations: clefs, key signature, key, time signature, and
instrument.

Please note that <span class="tool">hum2fin</span> depends heavily on the \*\*kern
representation, which provides it with most of the essential musical
data Finale needs. Because Finale is unable to display notations such as
slurs or dynamics alone without the actual notes themselves, there MUST
be \*\*kern spines in the Humdrum input file. All the non-kern spines
should also be specific to particular \*\*kern spines respectively. The
linkage maybe suggested through the use of the tandem representaion
\*staff. For example, should <span class="tool">hum2fin</span> support the \*\*harm
representation in the future, the humdrum file

  ---------- ---------- ----------
  \*\*kern   \*\*harm   \*\*kern
  \*staff1   \*staff1   \*
  4d         .          4c
  4f         IV         4a
  ---------- ---------- ----------

indicates that the \*\*harm spine is related to the \*\*kern spine to
its left, but not the one to its right.

If no relationship is suggested, <span class="tool">hum2fin</span> assumes a relationship
between the non- kern spine and its closest kern spine to the right, as
can be seen in the treatment of the \*\*silbe and \*\*dynam spines.

Recall that Humdrum representation are organized aas though the notated
score has been rotated clockwise 90 degrees. This means that the
upper-most part is typically represented by the right-most spine.
<span class="tool">hum2fin</span> interprets the inputs according to this arrangement.

------------------------------------------------------------------------

### OPTIONS

-p (output unprocessed spines as textual underlay -not working)

<span class="tool">hum2fin</span> has the option of processing the non-supported spines as
\*\*silbe spines. This would enable users to view some spine's data as
lyrics in Finale even if <span class="tool">hum2fin</span> has yet to support the spine's
particular representation. To enable this option, append to the command
line\"-p\".

Please be very aware of the way <span class="tool">hum2fin</span> process these non-supported
spines when enabling this option. <span class="tool">hum2fin</span> will process the
non-supported spine the same way as it processes the silbe spines.
<span class="tool">hum2fin</span> will assume the non-supported spine to be related to some
specific kern spine. Please read the \"\*silbe representation\" part in
the Description section for more details.

------------------------------------------------------------------------

### SEE ALSO

`  fin2hum (4),  ms (4)`

------------------------------------------------------------------------

### FILES

<span class="tool">hum2fin</span> (or hum2fin.exe in MSDOS), artic.txt, barline.txt,
dynam.txt, etfBegin.txt

------------------------------------------------------------------------

### LIMITS

Duplets <span class="tool">hum2fin</span> does not display duplets with the conventional 2
sign. It displays duplets as dotted notes instead.

Natural Sign <span class="tool">hum2fin</span> recognizes the need of accidentals through the
kern signifiers \"-\", \"\#\", and \"n\". In the \*\*kern
representation, it is possible to have a note requiring an accidental
but does not have the above signifiers. For example, in the key of F
major, if the note is b natural, in Finale a natural sign is needed, but
in \*\*kern, only a \"b\" is needed to show that it is a b natural. In
such a case, <span class="tool">hum2fin</span> will fail to recognize the \"b\" as a b-natural
but treat it as a b-flat.

Measure 1 Label <span class="tool">hum2fin</span> assumes the first measure in score is
measure one and labels it as measure one (even if it is a pickup).

There are also limitations in how <span class="tool">hum2fin</span> process the \*\*dynam and
\*\*silbe representations. Please refer to the corresponding parts in
the Description section in this document.

------------------------------------------------------------------------

### PORTABILITY

There are <span class="tool">hum2fin</span> versions both for unix/linux and MSDOS.

------------------------------------------------------------------------

### ERRORS

<span class="tool">hum2fin</span> has error messages when there are errors with reading input
and output files. <span class="tool">hum2fin</span> also requires the files \"barline.txt\",
\"artic.txt\", \"dynam.txt\" and \"etfBegin.txt\" for outputting the
enigma file and if there are problems reading these files, error
messages would be issued.

If the program unexpectedly aborts, without any warnings or error
messages, please check to see if the humdrum input file complies with
the format or restrictions specified in the descriptions section of this
document.

------------------------------------------------------------------------

### AUTHORSHIP

The original translation program was written by Robert Gjerdingen in the
awk programming language. The program was re-written and extended by
Po-yan Tsang in C++.

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
