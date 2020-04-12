---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Pitch
================================

### REPRESENTATION

> <span class="rep">pitch</span> \-- American National Standards Institute pitch notation

### DESCRIPTION

> The <span class="rep">pitch</span> representation permits the encoding of Western
> musical pitches using the standard system for pitch designations
> adopted by the American National Standards Institute (e.g. \`G\#4\').
>
> The <span class="rep">pitch</span> representation distinguishes three types of data
> tokens: pitches, rests, and barlines. Pitches may be encoded using
> pitch letter-name, accidental, octave designation, and pitch deviation
> (in cents). In addition, <span class="rep">pitch</span> provides limited capabilities
> for representing phrasing and slurs.
>
> Pitch tokens consist of up to four logical parts \-- without any
> intervening spaces. The first part is the pitch letter-name; only the
> upper-case letters A, B, C, D, E, F, and G are permitted. The second
> part is an optional accidental: the octothorpe (\#) for sharp, the
> small letter \`b\' for flat, the small letter \`x\' for double-sharp,
> and two successive small letter \`b\'s for double-flats. Triple and
> quadruple sharps (x\#, xx, etc.) and flats (bbb, bbbb, etc.) are
> permissible, however a given pitch token may not be modified by sharps
> and flats concurrently.
>
> The third part of a pitch token is the octave designation. The number
> 4 is used to designate all pitches between middle C and the B a major
> seventh above, inclusive. Octave numbers are incremented by one for
> each successively higher octave, and are decremented by one for each
> successively lower octave. Negative octave numbers are not permitted,
> so the lowest pitch in the <span class="rep">pitch</span> representation is C0 (16.35
> Hz). Only a single octave digit is permitted, so the highest
> <span class="rep">pitch</span> pitch is B9 (15,804 Hz).
>
> If a given pitch deviates from equal temperament, a fourth part is
> added to a <span class="rep">pitch</span> pitch token denoting the cents deviation from
> equal temperament. This consists of an integer value preceded by
> either a plus or minus sign.
>
> By way of example, the following <span class="rep">pitch</span> token encodes a note 19
> cents flat from A440 (in this case A435 Hz):
>
> > ` A4-19`
>
> Once again, no intervening spaces are permitted within a single note.
> Notice that the order of signifiers is important for pitch encodings.
> Pitch letter-name is followed by one or more accidentals (if
> appropriate), followed by an octave designation, followed by cents
> deviation (if appropriate) \-- where cents deviation is an integer
> preceded by the plus or minus sign.
>
> Several notes may be encoded concurrently in a single spine by using
> the Humdrum multiple-stop convention: notes within multiple-stops are
> separated by single spaces. The following example encodes a C-minor
> chord as four pitches in two <span class="rep">pitch</span> spines \-- each spine
> containing a double-stop.
>
> > ``
> >
> > \*\*pitch

\*\*pitch

C4 Eb4

G4 C5

\*-

\*-

Pitch tokens may be modified by the presence of additional signifiers.
The open brace \`{\' denotes the beginning of a phrase. The closed brace
\`}\' denotes the end of a phrase. The open parenthesis \`(\' denotes
the beginning of a slur. The closed parenthesis \`)\' denotes the end of
a slur. The semicolon \`;\' denotes a pause.

Rest tokens are denoted by the lower-case letter \`r\'.

Barlines are represented using the \"common system\" for barlines \--
see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly <span class="rep">pit</span> data
> should be given names with the distinguishing \`.pit\' extension.

### SIGNIFIERS

> The following table summarizes the <span class="rep">pitch</span> mappings of
> signifiers and signifieds.
>
> >   ----- ------------------------------------------------------------
> >   A-G   absolute pitches letter name
> >   0-9   octave designation, where C4 equals middle C;
> >         also cents deviation (when preceded by minus or plus sign)
> >   b     flat
> >   bb    double flat
> >   bbb   triple flat
> >   \#    sharp
> >   x     double sharp
> >   x\#   triple sharp
> >   xx    quadruple sharp
> >   r     rest
> >   =     barline; == double barline
> >   (     slur start
> >   )     slur end
> >   {     phrase mark (start)
> >   }     phrase mark (end)
> >   ;     pause sign
> >   \-    negative cents deviation-nus sign)
> >   \+    positive cents deviation
> >   ----- ------------------------------------------------------------
> >
> > *Summary of <span class="rep">pitch</span> Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ----------- -----------
> >   \*\*pitch   \*\*pitch
> >   \*pelog     \*slendro
> >   =1          =1
> >   A\#4+20     Bb4-80
> >   A4          .
> >   A4          .
> >   =2          =2
> >   A4          {(G3+5
> >   r           G3+73
> >   .           G\#3-2)
> >   r           r
> >   r           Db4+18
> >   Db4         Db4+77}
> >   \*-         \*-
> >   ----------- -----------
> >
### PERTINENT COMMANDS

> The following Humdrum commands accept <span class="rep">pitch</span> encoded data as
> inputs:
>
> >   -- --------------------------------------- -----------------------------------------------------------
> >      <span class="tool">cents</span>     translates <span class="rep">pitch</span> to <span class="rep">cents</span>
> >      <span class="tool">deg</span>         translate <span class="rep">pitch</span> to <span class="rep">deg</span>
> >      <span class="tool">degree</span>   translate <span class="rep">pitch</span> to <span class="rep">degree</span>
> >      <span class="tool">freq</span>       translates <span class="rep">pitch</span> to <span class="rep">freq</span>
> >      <span class="tool">hint</span>       calculate harmonic intervals from <span class="rep">pitch</span> input
> >      <span class="tool">kern</span>       translates <span class="rep">pitch</span> to <span class="rep">kern</span>
> >      <span class="tool">mint</span>       calculate melodic intervals from <span class="rep">pitch</span> input
> >      <span class="tool">pc</span>           translate <span class="rep">pitch</span> pitch to <span class="rep">pc</span>
> >      <span class="tool">semits</span>   translate <span class="rep">pitch</span> pitch to numerical <span class="rep">semits</span>
> >      <span class="tool">solfa</span>     translate <span class="rep">pitch</span> pitch to <span class="rep">solfa</span>
> >      <span class="tool">solfg</span>     translate <span class="rep">pitch</span> pitch to <span class="rep">solfg</span>
> >      <span class="tool">tonh</span>       translate <span class="rep">pitch</span> pitch to <span class="rep">Tonh</span>
> >      <span class="tool">trans</span>     transpose <span class="rep">pitch</span> score
> >      <span class="tool">vox</span>         determine active and inactive voices in a Humdrum file
> >                                              
> >   -- --------------------------------------- -----------------------------------------------------------
> >
> The following Humdrum command produces <span class="rep">pitch</span> data as output:
>
> >   -- ------------------------------------- -------------------------------------------------------------------------------------
> >      <span class="tool">pitch</span>   translates <span class="rep">cents</span>, <span class="rep">degree</span>, <span class="rep">freq</span>, <span class="rep">fret</span>, <span class="rep">kern</span>,
> >                                            <span class="rep">MIDI</span>, <span class="rep">semits</span>, <span class="rep">solfg</span>, <span class="rep">specC</span>, and <span class="rep">Tonh</span> to
> >                                            <span class="rep">pitch</span>
> >   -- ------------------------------------- -------------------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> <span class="rep">pitch</span>:
>
> >   ------------------ ------------
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   tempo              `*MM96.3`
> >   ------------------ ------------
> >
> > *Tandem interpretations for <span class="rep">pitch</span>*

### SEE ALSO

> ` barlines, **cents, **deg, **degree, **freq, **hint, **kern, mint, **pc, pitch, **semits, **solfa, **solfg, **specC, **Tonh`

