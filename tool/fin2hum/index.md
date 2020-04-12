---
title:		'Humdrum Toolkit Command Reference -- fin2hum'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/fin2hum/index.html
---

### COMMAND

<span class="tool">fin2hum</span> &mdash; converts a Finale enigma file (.etf) into a Humdrum file

------------------------------------------------------------------------

### SYNOPSIS

` fin2hum inputfile [ > outputfile]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">fin2hum</span> command provides the means for the user to process a
Finale enigma file with Humdrum tools by converting the Finale file into
a humdrum file. The <span class="tool">fin2hum</span> command accepts a Finale engima file as
input and outputs a file with the same musical data represented in the
humdrum format. The enigma format is an ASCII-based file format
developed by CodaMusic Technology, developer of Finale, which allows
finale data to be read by both Macs and PCs.

As of April 2000, <span class="tool">fin2hum</span> is able to convert Finale's musical data
into the following Humdrum representations or interpretations:

1\. \*\*kern representation <span class="tool">fin2hum</span> supports most kern signifiers,
including:

0, 1, 2, 4, \... 128, \'.\', note duration -, \# accdientals a-g, A-g, r
pitches \' z \^ ; \~ , \` : W M S u v q articulations and ornaments J, L
beaming \[ \] - tie ( ) slur { } phrase /, \\\\ stemming \* Supported
kern signifiers

2\. Humdrum's barline scheme Hum2fin recognizes the following barline
signifiers: ==\|!, ==:!\|, ==:\|!, ==, =!, =\", =-, =\', = and = with
measure number.

3\. Tandem interpretations Hum2fin supports the following tandem
interpretations: clefs, key signature, key, time signature, and
instrument.

Recall that Humdrum representation are organized aas though the notated
score has been rotated clockwise 90 degrees. This means that the
upper-most part is typically represented by the right-most spine. The
<span class="tool">fin2hum</span> command places the lowest Finale staff in the left-most
spine, with subsequent staffs placed consecutively to the right.

------------------------------------------------------------------------

### SEE ALSO

`  hum2fin (4),  ms (4)`

------------------------------------------------------------------------

### FILES

fin2hum (shell script), fin2hum.exe (compiled C++ executable),
artic.txt, barline.txt, dynam.txt

(The fin2hum script is the main program. It first calls the fin2hum.exe
program. The fin2hum.exe executable reads the enigma file and outputs
temporary files that consist of one spine each. The fin2hum script then
takes the temporary spine files and assembles them into one standard
Humdrum file.)

------------------------------------------------------------------------

### LIMITS

<span class="tool">fin2hum</span> adds natural signs according to standard orthographic rules,
which is to place a natural sign for a note that had an accidental
before in the SAME measure. However, in \*\*kern, this rule does not
apply. \*\*Kern expects a natural sign when the first note of the same
pitch appears without an accidental, regardless of whether the two notes
are in the same measure.

------------------------------------------------------------------------

### PORTABILITY

Linux, and MSDOS with MKSToolkit. The Humdrum Toolkit needs to be
installed in the system also.

------------------------------------------------------------------------

### ERRORS

Error reading files <span class="tool">fin2hum</span> has error messages when there are errors
with reading input and output files. <span class="tool">fin2hum</span> also requires the files
\"barline.txt\", \"artic.txt\" for outputting the humdrum file; if there
are problems reading these files, error messages are issued.

Errors with Timebase, Assemble commands In the <span class="tool">fin2hum</span> script, the
humdrum tools \"timebase\" and \"assemble\" are used. Therefore make
sure that you have installed the Humdrum Toolkit in your system and also
have the above tools installed.

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
