---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Semitone Pitch
=========================================

## REPRESENTATION ##

<span class="rep">semits</span> &mdash; semitone absolute pitch representation

## DESCRIPTION ##

The <span class="rep">semits</span> representation is used to represent absolute pitch
in semitone units with respect to middle C. Middle C is designated
zero semitones. All other pitches are represented with respect to this
reference, hence A4 is 9 semits and A3 is -3 semits. Fractional values
can also be represented, hence 1.5 is midway between C\#4 and D4.

Pitch tokens may be modified by the presence of additional signifiers.
The open brace \`{\' denotes the beginning of a phrase. The closed
brace \`}\' denotes the end of a phrase. The open parenthesis \`(\'
denotes the beginning of a slur. The closed parenthesis \`)\' denotes
the end of a slur. The semicolon \`;\' denotes a pause.

Rest tokens are denoted by the lower-case letter \`r\'.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">semits</span> data
should be given names with the distinguishing \`.sem\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">semits</span> mappings of
signifiers and signifieds.

----- ----------------------------------
0-9   decimal values
\-    minus sign
\+    plus sign (optional)
.     fractional delimiter; null token
r     rest
=     barline; == double barline
(     slur start
)     slur end
{     phrase mark (start)
}     phrase mark (end)
;     pause sign
----- ----------------------------------

*Summary of <span class="rep">semits</span> Signifiers*

## EXAMPLES ##

The following sample document shows a [<span class="rep">kern</span>](kern.rep.html)
spine with corresponding <span class="rep">semits</span> pitch values.

``

------------ ----------
\*\*semits   \*\*kern
\*M4/4       \*M4/4
\*c:         \*c:
=            =
r            8r
12           16cc
11           16bn
12           8cc
14           8dd
5            16f
7            16g
8            4a-
7            16g
5            16f
=            =
4 7          1e 1g
==           ==
\*-          \*-
------------ ----------

## PERTINENT COMMANDS ##

The following Humdrum commands accept <span class="rep">semits</span> encoded data as
inputs:

-- --------------------------------------- --------------------------------------------------------
<span class="tool">cents</span>     translates <span class="rep">semits</span> to <span class="rep">cents</span>
<span class="tool">freq</span>       translates <span class="rep">semits</span> to <span class="rep">freq</span>
<span class="tool">kern</span>       translates <span class="rep">semits</span> to <span class="rep">kern</span>
<span class="tool">melac</span>     calculate melodic accent values for successive pitches
<span class="tool">pc</span>           translate <span class="rep">semits</span> pitch to <span class="rep">pc</span>
<span class="tool">pitch</span>     translate <span class="rep">semits</span> pitch to <span class="rep">pitch</span>
<span class="tool">semits</span>   change numerical precision of <span class="rep">semits</span> values
<span class="tool">solfg</span>     translate <span class="rep">semits</span> pitch to <span class="rep">solfg</span>
<span class="tool">tonh</span>       translate <span class="rep">semits</span> pitch to <span class="rep">Tonh</span>
<span class="tool">vox</span>         determine active and inactive voices in a Humdrum file

-- --------------------------------------- --------------------------------------------------------

The following Humdrum commands produce <span class="rep">semits</span> data as outputs:

-- --------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<span class="tool">semits</span>   translates <span class="rep">cents</span>, <span class="rep">freq</span>, <span class="rep">fret</span>, <span class="rep">kern</span>, <span class="rep">MIDI</span>, <span class="rep">pitch</span>, <span class="rep">semits</span>, <span class="rep">solfg</span>, <span class="rep">specC</span>, <span class="rep">Tonh</span>, to <span class="rep">semits</span>
-- --------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">semits</span>:

------------------ ------------
MIDI channel       `*Ch1`
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
------------------ ------------

*Tandem interpretations for <span class="rep">semits</span>*

## SEE ALSO ##

` barlines, **cents, cents, **freq, freq, **fret, **kern, kern, **MIDI, midi, **pitch, pitch, semits, **solfg, solfg, **specC, specc, **Tonh, tonh`

