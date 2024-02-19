---
title:		'Humdrum Toolkit Command Reference -- proof'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/proof/index.html
---

### COMMAND

<span class="tool">proof</span> -- check syntax of Humdrum <span class="rep">kern</span> file

------------------------------------------------------------------------

## SYNOPSIS ##

` proof  [-w]  [inputfile.krn ...]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">proof</span> command checks the syntax of
[<span class="rep">kern</span>-encoded](../representations/kern.html) files. It may be used
to assist in the detection and correction of <span class="rep">kern</span> encoding errors.

The <span class="tool">proof</span> command scans the input stream for ten types of errors:
(1) consistency of incremented measure numbers, and measure-number
agreement between concurrent parts, (2) incoherent pitch tokens (such as
assigning two pitches to the same note), (3) incoherent durations (such
as assigning two durations to the same note), (4) notes that have
simultaneous sharp and flat accidentals, (5) repeat encodings of trills,
mordents, inverted mordents, ties, pauses, staccato markings, and
natural signs, (6) consistent phrase markings (e.g. \`{\' must precede
and be matched with \`}\' etc. with the exception of elisions (&)), (7)
consistent slur markings (e.g. \`(\' must precede and be matched with
\`)\' etc. with the exception of elisions (&)), (8) tied notes which
differ in pitch or pitch spelling, (9) unequal total durations for each
voice within a measure, and (10) the presence of multiple-stops that do
not share the same duration. In addition, <span class="tool">proof</span> issues a number of
warnings of possible data errors: (11) warn of files which do not end
with a double barline, (12) warn of material encoded following a double
barline, (13) warn of measures which change meters unannounced, (14)
warn of the presence of identical material in consecutive measures, (15)
warn of the presence of pitches which are encoded without an accidental
&mdash; where the same pitch had previously received an accidental in the
same measure, and (16) warn of the absence of meter, tempo, key, and key
signature declarations.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">proof</span> command provides the following options:

-------- -------------------------------------------------------
<span class="option">h</span>   displays a help screen summarizing the command syntax
<span class="option">w</span>   suppress output of warnings
-------- -------------------------------------------------------

Options are specified in the command line.

The <span class="option">w</span> option causes all warnings to be suppressed; only <span class="rep">kern</span>
error messages are output.

------------------------------------------------------------------------

## DIAGNOSTICS ##

The following list tabulates all of the potential errors and warnings
issued by the <span class="tool">proof</span> command. ``

---------------------------------------------------------------------------------
Error: Incoherent key signature, line *n*: assigned more than one accidental to
the same pitch.
Error: Inconsistent barline indication across spines at line *n*.
Error: Timing error in measure *x*, spine *y*, at line *n*
Error: Double stops at line *x* in spine *n* do not have same duration.
Error: Unmatched ties in spine *n*.
Error: Incorrect pitch specification in spine *x*, line *n*
Error: Incorrect duration specification in spine *x*, line *n*
Error: Incorrect accidental specification in spine *x*, line *n*
Error: Incorrect ornament specification in spine *x*, line *n*
Error: Tie must begin on valid kern note, spine *n*
Error: Incorrect tie encoding in spine *x*, line *n*
Error: Tied notes inconsistent in spine *x*, line *n*
Error: Incorrect tie specification in spine *x*, line *n*
Error: Incorrect tie in spine *x*, line *n*
Error: Incorrect slur, spine *x*, line *n*
Error: Incorrect slur specification in spine *x*, line *n*
Error: Incorrect phrase marking in spine *x*, line *n*
Error: Incorrect phrase specification in spine *x*, line *n*
Error: Only one pause permitted in data token. Spine *x*, line *n*
Warning: No double barline in input.
Warning: No meter declaration for spine *n*.
Warning: No tempo declaration for spine *n*.
Warning: No key declaration for spine *n*.
Warning: No key signature declaration for spine *n*.
Warning: Measure *n* may be out of place near line *n*
Warning: Material follows after double barline at line *n*
Warning: Measure *j* identical to measure *k* at line *n*
Warning: Possible change of meter in measure *x*, line *n*
Warning: Accidental may be missing in m.*x*, spine *y*, at line *n*
Warning: No double barline in input.
---------------------------------------------------------------------------------

*Potential errors and warnings issued by <span class="tool">proof</span>.*

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

` census census (4), encode humdrum **kern (2) encode (4), humdrum (4), **kern (2)`



