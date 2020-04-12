---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Melodic Intervals
============================================

## REPRESENTATION ##

<span class="rep">mint</span> &mdash; melodic interval representation

## DESCRIPTION ##

The <span class="rep">mint</span> representation provides a means for characterizing
sequential (melodic) pitch distances. The <span class="rep">mint</span> representation
permits the encoding of four types of data tokens: interval tokens,
pitch offsets, rests, and barlines.

Interval tokens consist of up to three component parts: (1) interval
direction, (2) diatonic interval size, and (3) interval quality. The
interval direction is signified by a leading plus sign (+) for
ascending motion, or a leading minus sign (-) for descending motion.
No special signifier is provided to denote unison motion. Note that
interval direction information is optional, and so is not a mandatory
aspect of the <span class="rep">mint</span> representation.

The diatonic interval size is signified by integer values &mdash; 1 for
unison, 2 for second, 3 for third, 11 for eleventh, and so on.

Interval qualities are signified as follows: the upper-case letter
\`M\' for major intervals, lower-case \`m\' for minor intervals,
upper-case \`P\' for perfect, lower-case \'d\' for diminished,
upper-case \`A\' for augmented. Doubly-diminished and doubly-augmented
intervals are represented by \`dd\' and \`AA\' respectively. Triply-
and quadruply- diminished or augmented intervals are similarly
represented by character repetition, e.g. \`AAA\'. Note that interval
quality information is optional, and so is not a mandatory aspect of
the <span class="rep">mint</span> representation.

The normal or canonical order for data elements in a <span class="rep">mint</span>
interval token is as follows: (1) direction of interval motion, (2)
diatonic interval size, (3) interval quality. Note that more than one
interval token may appear within Humdrum multiple-stops.

Pitch offsets indicate initial or starting absolute pitches from which
successive pitch intervals arise. Pitch offsets are optional and need
not appear in a <span class="rep">mint</span> representation. Pitch offsets are
distinguished by square brackets. Within the square brackets appears a
pitch designation using any one of the following pitch-related
representations: [<span class="rep">kern</span>](kern.rep.html),
[<span class="rep">pitch</span>](pitch.rep.html), [<span class="rep">solfg</span>](solfg.rep.html) or
[<span class="rep">Tonh</span>](Tonh.rep.html). For example, the following <span class="rep">mint</span>
pitch offsets are considered equivalent: \`b\' (<span class="rep">kern</span>), \`B5\'
(<span class="rep">pitch</span>), \`si5\' (<span class="rep">solfg</span>), \`H5\' (<span class="rep">Tonh</span>). Where
necessary, several pitch offsets may appear as a Humdrum
multiple-stop.

Rests are denoted by the lower-case letter \`r\'.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">mint</span> data
should be given names with the distinguishing \`.mnt\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">mint</span> mappings of signifiers
and signifieds.

----- -------------------------------------------
0-9   interval size signifiers; measure numbers
A     augmented interval quality
d     diminished interval quality
M     major interval quality
m     minor interval quality
P     perfect interval quality
r     rest
=     barline; == double barline
\-    descending interval
\+    ascending interval
;     measure pause
----- -------------------------------------------

*Summary of <span class="rep">mint</span> Signifiers*

## EXAMPLES ##

The following example shows a <span class="rep">pitch</span> spine on the left and a
corresponding <span class="rep">mint</span> spine on the right.

``

---------------------------- ----- -- ----------------------------
**INPUT**                             **OUTPUT**
!! Wagner, Tristan Prelude            !! Wagner, Tristan Prelude
\*\*pitch                             \*\*mint
\*M6/8                                \*M6/8
A3                                    \[A3\]
=1                                    =1
F4                                    +m6
.                                     .
E4                                    -m2
=2                                    =2
F3 B3 D\#4 G\#4                       -M7 -P4 -m2 +M3
\*-                          \*-      
---------------------------- ----- -- ----------------------------

## PERTINENT COMMANDS ##

The following Humdrum command produces <span class="rep">mint</span> data as outputs:

-- ----------------------------------- -----------------------------------------------------------------------------------------------------
<span class="tool">mint</span>   produces <span class="rep">mint</span> output from <span class="rep">pitch</span>, <span class="rep">kern</span>, <span class="rep">solfg</span>, or <span class="rep">Tonh</span> input
-- ----------------------------------- -----------------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">mint</span>:

------------------ ------------
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
------------------ ------------

*Tandem interpretations for <span class="rep">mint</span>*

## SEE ALSO ##

` barlines, **hint, hint, kern, mint, **solfg, **Tonh, xdelta, ydelta`

