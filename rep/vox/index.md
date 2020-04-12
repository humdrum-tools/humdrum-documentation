---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Number of Active Voices
==================================================

## REPRESENTATION ##

<span class="rep">vox\#</span> &mdash; representation of number of concurrently active
voices

## DESCRIPTION ##

The <span class="rep">vox\#</span> representation permits the representation of the
number of notes sounding together at successive moments in time. The
<span class="rep">vox\#</span> representation distinguishes just two types of data
tokens: number-tokens, and barlines. Each <span class="rep">vox\#</span> number-token
consists of a single integer value indicating the total number of
simultaneously sounding voices.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">vox#</span> data
should be given names with the distinguishing \`.vox\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">vox\#</span> mappings of
signifiers and signifieds.

----- ---------------------------------
0-9   integer values; measure numbers
=     barline; == double barline
;     pause (for barlines)
----- ---------------------------------

*Summary of <span class="rep">vox\#</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

---------- ---------- ---------- -------------- -------------- ----------- -----
\*\*kern   \*\*kern   \*\*kern   \*\*kern       \*\*kern       \*\*vox\#   
=18        =18        =18        =18            =18            =18         
8r         8B         4.g        8g             8dd)           4           
8BBn       8B         .          8dd            8gg            5           
8BB        8B         .          8dd            8gg            5           
8BB        8B         8d         8g             8ff            5           
=19        =19        =19        =19            =19            =19         
4C         4c         4e-        4c 4g 4ee-     4ee-           7           
4r         4r         4r         4r             4r             0           
=20        =20        =20        =20            =20            =20         
4AA-       4AA-       4a-        4a- 4f\# 4cc   4a- 4f\# 4cc   9           
8.r        8.r        8.r        8.r            8.r            0           
=21        =21        =21        =21            =21            =21         
\*         \*         \*         \*             \*\^           \*          
4GG        4GG        4G         4g 4d 4bn      4G 4d 4bn      2gg;        10
4r         4r         4r         4r             4r             .           1
\*-        \*-        \*-        \*-            \*-            \*-         \*-
---------- ---------- ---------- -------------- -------------- ----------- -----

## PERTINENT COMMANDS ##

The following Humdrum command produces <span class="rep">vox\#</span> data as output:

-- --------------------------------- ----------------------------------------------------------------------------------------------
<span class="tool">vox</span>   determine number of concurrently active voices for <span class="rep">cbr</span>, <span class="rep">cents</span>,
<span class="rep">cocho</span>, <span class="rep">deg</span>, <span class="rep">degree</span>, <span class="rep">freq</span>, <span class="rep">kern</span>, <span class="rep">pc</span>,
<span class="rep">pitch</span>, <span class="rep">semits</span>, <span class="rep">solfa</span>, <span class="rep">solfg</span>, <span class="rep">specC</span>, and <span class="rep">Tonh</span>
-- --------------------------------- ----------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">vox\#</span>:

------------------ ---------
meter signatures   `*M6/8`
------------------ ---------

*Tandem interpretations for <span class="rep">vox\#</span>*

## SEE ALSO ##

` barlines, **barks, **cbr, **cents, **cocho, **deg, **degree, **freq, **kern, **pc, **pitch, **semits, **solfa, **solfg, **specC, **Tonh, vox`

