---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


French Solfège
=========================================

## REPRESENTATION ##

<span class="rep">solfg</span> &mdash; French solfège (pitch) notation

## DESCRIPTION ##

The <span class="rep">solfg</span> representation permits the encoding of Western
musical pitches using the common French system for pitch naming.

The <span class="rep">solfg</span> representation distinguishes three types of data
tokens: pitches, rests, and barlines. Pitches are encoded using
diatonic pitch names, accidentals, and octave indications. In
addition, <span class="rep">solfg</span> provides limited capabilities for representing
phrasing and slurs.

Pitch tokens consist of three logical parts &mdash; without any
intervening spaces. The first part uses the so-called \`fixed-do\'
method of diatonic pitch designations: *do, ré, mi, fa, sol, la,* and
*si.* The second part is an optional accidental preceded by an tilde.
Flats (*bémol*) and sharps (*di\\o'e\\ga'se*) are abbreviated *b*
and *d* respectively. Hence, \`do di\\o'e\\ga'se\' (`do~d`) for
C-sharp, \`la b\\o'e\\aa'mol\' (`la~b`) for A-flat, \`sol
double-dièse\' (`sol~dd`) for G double-sharp, \`si double-bémol\'
(`si~bb`) for B double-flat, and so on.

The third part of a pitch token is the octave designation. The number
4 is used to designate all pitches between middle C and the *si* a
major seventh above, inclusive. Octave numbers are incremented by one
for each successively higher octave, and are decremented by one for
each successively lower octave. Negative octave numbers are not
permitted, so the lowest pitch in the <span class="rep">solfg</span> representation is
do0 (16.35 Hz). Only a single octave digit is permitted, so the
highest <span class="rep">solfg</span> pitch is si9 (15,804 Hz).

Once again, no intervening spaces are permitted within a single note.
Notice that the order of signifiers is important for pitch encodings.
Pitch letter-name is followed by one or more accidentals (if
appropriate), followed by an octave designation.

Several notes may be encoded concurrently in a single spine by using
the Humdrum multiple-stop convention: notes within multiple-stops are
separated by single spaces. The following example encodes a C-minor
chord as four pitches in two <span class="rep">solfg</span> spines &mdash; each spine
containing a double-stop.

``

------------ -----------
\*\*solfg    \*\*solfg
do4 mi\~b4   sol4 do5
\*-          \*-
------------ -----------

Pitch tokens may be modified by the presence of additional signifiers.
The open brace \`{\' denotes the beginning of a phrase. The closed
brace \`}\' denotes the end of a phrase. The open parenthesis \`(\'
denotes the beginning of a slur. The closed parenthesis \`)\' denotes
the end of a slur. The semicolon \`;\' denotes a pause.

Rest tokens are denoted by the lower-case letter \`r\'.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">solfg</span> data
should be given names with the distinguishing \`.slg\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">solfg</span> mappings of
signifiers and signifieds.

------------ ------------------------------------------------
0-9          octave designation, where do4 equals middle C;
doremifasl   diatonic pitches letter names
\~           accidental delimiter
\~b          flat (bémol)
\~d          sharp (dièse)
\~bb         double-flat
\~dd         double-sharp
n            natural
r            rest
=            barline; == double barline
(            slur start
)            slur end
{            phrase mark (start)
}            phrase mark (end)
;            pause sign
------------ ------------------------------------------------

*Summary of <span class="rep">solfg</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

------------------- -----------
!! Claude Debussy   
!! \"Voiles\"       
\*\*solfg           \*\*solfg
=1                  =1
r                   r
{mi5                {sol\~d5
re5                 fah\~d5
do5                 mi5
si\~b4              re5
=2                  =2
la\~b4              do5
sol\~d5             do6
fa\~d5}             si\~b5}
=3                  =3
\*-                 \*-
------------------- -----------

## PERTINENT COMMANDS ##

The following Humdrum commands accept <span class="rep">solfg</span> encoded data as
inputs:

-- --------------------------------------- -----------------------------------------------------------
<span class="tool">cents</span>     translate <span class="rep">solfg</span> to <span class="rep">cents</span>
<span class="tool">deg</span>         translate <span class="rep">solfg</span> to <span class="rep">deg</span>
<span class="tool">degree</span>   translate <span class="rep">solfg</span> to <span class="rep">degree</span>
<span class="tool">freq</span>       translate <span class="rep">solfg</span> to <span class="rep">freq</span>
<span class="tool">hint</span>       calculate harmonic intervals from <span class="rep">solfg</span> input
<span class="tool">kern</span>       translate <span class="rep">solfg</span> to <span class="rep">kern</span>
<span class="tool">mint</span>       calculate melodic intervals from <span class="rep">solfg</span> input
<span class="tool">pc</span>           translate <span class="rep">solfg</span> pitch to <span class="rep">pc</span>
<span class="tool">pitch</span>     translate <span class="rep">solfg</span> pitch to <span class="rep">pitch</span>
<span class="tool">semits</span>   translate <span class="rep">solfg</span> pitch to numerical <span class="rep">semits</span>
<span class="tool">solfa</span>     translate <span class="rep">solfg</span> pitch to <span class="rep">solfa</span>
<span class="tool">tonh</span>       translate <span class="rep">solfg</span> pitch to <span class="rep">Tonh</span>
<span class="tool">trans</span>     transpose <span class="rep">solfg</span> score
<span class="tool">vox</span>         determine active and inactive voices in a Humdrum file

-- --------------------------------------- -----------------------------------------------------------

The following Humdrum command produces <span class="rep">solfg</span> data as output:

-- ------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<span class="tool">solfg</span>   translates <span class="rep">cents</span>, <span class="rep">degree</span>, <span class="rep">fret</span>, <span class="rep">freq</span>, <span class="rep">kern</span>, <span class="rep">MIDI</span>, <span class="rep">pitch</span>, <span class="rep">semits</span>, <span class="rep">specC</span>, and <span class="rep">Tonh</span> to <span class="rep">solfg</span>
-- ------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">solfg</span>:

------------------ ------------
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
tempo              `*MM96.3`
------------------ ------------

*Tandem interpretations for <span class="rep">solfg</span>*

## SEE ALSO ##

` barlines, **cents, **deg, **degree, **freq, **hint, **kern, **mint, mint, **pc, pc, **pitch, pitch, **semits, **solfa, solfg, **Tonh, tonh`

