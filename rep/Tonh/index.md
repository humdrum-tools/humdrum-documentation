---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


German Pitch
=======================================

## REPRESENTATION ##

<span class="rep">Tonh</span> &mdash; German Tonhöhe (pitch) notation

## DESCRIPTION ##

The <span class="rep">Tonh</span> representation permits the encoding of Western
musical pitches using the common German system for pitch naming. This
system is similar to the English system of pitch designations with the
exceptions noted below.

The <span class="rep">Tonh</span> representation distinguishes three types of data
tokens: pitches, rests, and barlines. Pitches are encoded using pitch
letter-name, accidental, and octave designation. In addition,
<span class="rep">Tonh</span> provides limited capabilities for representing phrasing
and slurs.

Pitch tokens consist of three logical parts &mdash; without any
intervening spaces. The first part is the pitch letter-name; only the
upper-case letters A, B, C, D, E, F, G, H, and S are permitted. The
second part is an optional accidental: the suffix \`is\' designates a
sharp, while the suffix \`es\' designates a flat &mdash; hence \`Cis\' for
C-sharp and \`Ges\' for G-flat. Suffixes may be repeated for double
and triple sharps and flats. Special exceptions include the following:
\`B\' for B-flat, \`H\' for B-natural, \`Heses\' for B double-flat
(rather than \`Bes\'), and \`As\' and \`Es\' rather than \`Aes\' or
\`Ees\'. In addition, \`S\' may be used as an alias for \`Es\'
(E-flat).

The third part of a pitch token is the octave designation. The number
4 is used to designate all pitches between middle C and the H a major
seventh above, inclusive. Octave numbers are incremented by one for
each successively higher octave, and are decremented by one for each
successively lower octave. Negative octave numbers are not permitted,
so the lowest pitch in the <span class="rep">Tonh</span> representation is C0 (16.35
Hz). Only a single octave digit is permitted, so the highest
<span class="rep">Tonh</span> pitch is H9 (15,804 Hz).

Once again, no intervening spaces are permitted within a single note.
Notice that the order of signifiers is important for pitch encodings.
Pitch letter-name is followed by one or more accidentals (if
appropriate), followed by an octave designation.

Several notes may be encoded concurrently in a single spine by using
the Humdrum multiple-stop convention: notes within multiple-stops are
separated by single spaces. The following example encodes a C-minor
chord as four pitches in two <span class="rep">Tonh</span> spines &mdash; each spine
containing a double-stop.

``

---------- ----------
\*\*Tonh   \*\*Tonh
C4 Es4     G4 C5
\*-        \*-
---------- ----------

Pitch tokens may be modified by the presence of additional signifiers.
The open brace \`{\' denotes the beginning of a phrase. The closed
brace \`}\' denotes the end of a phrase. The open parenthesis \`(\'
denotes the beginning of a slur. The closed parenthesis \`)\' denotes
the end of a slur. The semicolon \`;\' denotes a pause.

Rest tokens are denoted by the lower-case letter \`r\'.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">Tonh</span> data
should be given names with the distinguishing \`.tnh\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">Tonh</span> mappings of signifiers
and signifieds.

------- -----------------------------------------------
0-9     octave designation, where C4 equals middle C;
A-H     absolute pitches letter name
es      flat
eses    double flat (\`eseses\' for triple flat)
is      sharp
isis    double sharp
Heses   B double-flat (rather than \`Bes\')
As      A-flat (rather than \`Aes\')
Es      E-flat (rather than \`Ees\')
S       alias for \`Es\'
n       natural
r       rest
=       barline; == double barline
(       slur start
)       slur end
{       phrase mark (start)
}       phrase mark (end)
;       pause sign
------- -----------------------------------------------

*Summary of <span class="rep">Tonh</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

----------------------------------
!! Anton Webern
!! Klavierstück, opus posthumous
!! Im Tempo eines Menuetts
\*\*Tonh
=2
(Cis4
Dn5)
Es3
Fis3
F4
E2
=3
Cn6
B2 A3
H4
Gis2 G3
Cis4
D2 S3
=4
\*-
----------------------------------

## PERTINENT COMMANDS ##

The following Humdrum commands accept <span class="rep">Tonh</span> encoded data as
inputs:

-- --------------------------------------- ----------------------------------------------------------
<span class="tool">cents</span>     translate <span class="rep">Tonh</span> to <span class="rep">cents</span>
<span class="tool">deg</span>         translate <span class="rep">Tonh</span> to <span class="rep">deg</span>
<span class="tool">degree</span>   translate <span class="rep">Tonh</span> to <span class="rep">degree</span>
<span class="tool">freq</span>       translate <span class="rep">Tonh</span> to <span class="rep">freq</span>
[<span class="tool">hint</span>](../commands/hints.html)      calculate harmonic intervals from <span class="rep">Tonh</span> input
<span class="tool">kern</span>       translate <span class="rep">Tonh</span> to <span class="rep">kern</span>
<span class="tool">mint</span>       calculate melodic intervals from <span class="rep">Tonh</span> input
<span class="tool">pc</span>           translate <span class="rep">Tonh</span> pitch to <span class="rep">pc</span>
<span class="tool">pitch</span>     translate <span class="rep">Tonh</span> pitch to <span class="rep">pitch</span>
<span class="tool">semits</span>   translate <span class="rep">Tonh</span> pitch to numerical <span class="rep">semits</span>
<span class="tool">solfa</span>     translate <span class="rep">Tonh</span> pitch to <span class="rep">solfa</span>
<span class="tool">solfg</span>     translate <span class="rep">Tonh</span> pitch to <span class="rep">solfg</span>
<span class="tool">trans</span>     transpose <span class="rep">Tonh</span> score
<span class="tool">vox</span>         determine active and inactive voices in a Humdrum file

-- --------------------------------------- ----------------------------------------------------------

The following Humdrum command produces <span class="rep">Tonh</span> data as output:

-- ----------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<span class="tool">tonh</span>   translates <span class="rep">cents</span>, <span class="rep">degree</span>, <span class="rep">fret</span>, <span class="rep">freq</span>, <span class="rep">kern</span>, <span class="rep">MIDI</span>, <span class="rep">pitch</span>, <span class="rep">semits</span>, <span class="rep">solfg</span>, and <span class="rep">specC</span> to <span class="rep">Tonh</span>
-- ----------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">Tonh</span>:

------------------ ------------
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
tempo              `*MM96.3`
------------------ ------------

*Tandem interpretations for <span class="rep">Tonh</span>*

## SEE ALSO ##

` barlines, **cents, **deg, **degree, **freq, **hint, hint, **kern, **mint, mint, **pc, pc, **pitch, pitch, **semits, **solfa, **solfg, solfg, **specC, tonh`

