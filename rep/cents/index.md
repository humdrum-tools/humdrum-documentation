---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Pitch Cents
======================================

## REPRESENTATION ##

<span class="rep">cents</span> &mdash; absolute pitch representation in hundredths of
semitones

## DESCRIPTION ##

The <span class="rep">cents</span> representation is used to represent absolute pitch
in units of hundredths of semitones with respect to middle C. Each
equally tempered semitone spans a distance of 100 cents. Middle C is
designated zero cents. All other pitches are represented with respect
to this reference, hence A4 is 900 cents and A3 is -300 cents. Cents
may be specified as either integer or real values.

Pitch tokens may be modified by the presence of additional signifiers.
The open brace \`{\' denotes the beginning of a phrase. The closed
brace \`}\' denotes the end of a phrase. The open parenthesis \`(\'
denotes the beginning of a slur. The closed parenthesis \`)\' denotes
the end of a slur. The semicolon \`;\' denotes a pause.

Rest tokens are denoted by the lower-case letter \`r\'.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">cents</span> spines
should be given names with the distinguishing \`.cnt\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">cents</span> mappings of
signifiers and signifieds.

----- ------------------------------
0-9   decimal values
.     decimal point; or null token
\-    minus sign
\+    plus sign (optional)
r     rest
=     barline; == double barline
(     slur start
)     slur end
{     phrase mark (start)
}     phrase mark (end)
;     pause sign
----- ------------------------------

*Summary of <span class="rep">cents</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

----------- -------------
\*\*cents   \*\*cents
!tempered   !untempered
=1          =1
{1200       {1209.
700         720.4
700         698
=2          =2
(800        (804.1
700)}       722)}
=3          =3
r           r
500 1100    492 1131.2
=4          =4
400 1200    397 1202
==          ==
\*-         \*-
----------- -------------

## PERTINENT COMMANDS ##

The following Humdrum commands accept <span class="rep">cents</span> encoded data as
inputs:

-- --------------------------------------- ----------------------------------------------------------

<span class="tool">cents</span>     change numerical precision of \*\*cents values
<span class="tool">freq</span>       translates <span class="rep">cents</span> to <span class="rep">freq</span>
<span class="tool">kern</span>       translates <span class="rep">cents</span> to <span class="rep">kern</span>
<span class="tool">pc</span>           translates <span class="rep">cents</span> to <span class="rep">pc</span>
<span class="tool">pitch</span>     translate <span class="rep">cents</span> pitch to numerical <span class="rep">pitch</span>
<span class="tool">semits</span>   translates <span class="rep">cents</span> to <span class="rep">semits</span>
<span class="tool">solfg</span>     translates <span class="rep">cents</span> to <span class="rep">solfg</span>
<span class="tool">tonh</span>       translates <span class="rep">cents</span> to <span class="rep">Tonh</span>
<span class="tool">vox</span>         determine active and inactive voices in a Humdrum file

-- --------------------------------------- ----------------------------------------------------------

The following Humdrum command produces <span class="rep">cents</span> data as output:

-- ------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

<span class="tool">cents</span>   translates <span class="rep">cents</span>, <span class="rep">freq</span>, <span class="rep">fret</span>, <span class="rep">kern</span>, <span class="rep">MIDI</span>, <span class="rep">pitch</span>, <span class="rep">semits</span>, <span class="rep">solfg</span>, <span class="rep">specC</span>, and <span class="rep">Tonh</span> to <span class="rep">cents</span>
-- ------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
**\*\*cents:**

------------------ ------------
MIDI channel       `*Ch1`
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
tempo              `*MM96.3`
------------------ ------------

*Tandem interpretations for <span class="rep">cents</span>*

## SEE ALSO ##

` barlines, cents, **freq, freq, **fret, **kern, kern, **MIDI, midi, **pitch, pitch, **semits, semits, **solfg, solfg, **specC, specc, **Tonh, tonh`

