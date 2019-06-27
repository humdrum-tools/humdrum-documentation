---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Pitch
================================

### REPRESENTATION

> **\*\*pitch** \-- American National Standards Institute pitch notation

### DESCRIPTION

> The **\*\*pitch** representation permits the encoding of Western
> musical pitches using the standard system for pitch designations
> adopted by the American National Standards Institute (e.g. \`G\#4\').
>
> The **\*\*pitch** representation distinguishes three types of data
> tokens: pitches, rests, and barlines. Pitches may be encoded using
> pitch letter-name, accidental, octave designation, and pitch deviation
> (in cents). In addition, **\*\*pitch** provides limited capabilities
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
> so the lowest pitch in the **\*\*pitch** representation is C0 (16.35
> Hz). Only a single octave digit is permitted, so the highest
> **\*\*pitch** pitch is B9 (15,804 Hz).
>
> If a given pitch deviates from equal temperament, a fourth part is
> added to a **\*\*pitch** pitch token denoting the cents deviation from
> equal temperament. This consists of an integer value preceded by
> either a plus or minus sign.
>
> By way of example, the following **\*\*pitch** token encodes a note 19
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
> chord as four pitches in two **\*\*pitch** spines \-- each spine
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

> It is recommended that files containing predominantly `**pit` data
> should be given names with the distinguishing \`.pit\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*pitch** mappings of
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
> > *Summary of **\*\*pitch** Signifiers*

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

> The following Humdrum commands accept **\*\*pitch** encoded data as
> inputs:
>
> >   -- --------------------------------------- -----------------------------------------------------------
> >      [**cents**](../commands/cents.html)     translates **\*\*pitch** to **\*\*cents**
> >      [**deg**](../commands/deg.html)         translate **\*\*pitch** to **\*\*deg**
> >      [**degree**](../commands/degree.html)   translate **\*\*pitch** to **\*\*degree**
> >      [**freq**](../commands/freq.html)       translates **\*\*pitch** to **\*\*freq**
> >      [**hint**](../commands/hint.html)       calculate harmonic intervals from **\*\*pitch** input
> >      [**kern**](../commands/kern.html)       translates **\*\*pitch** to **\*\*kern**
> >      [**mint**](../commands/mint.html)       calculate melodic intervals from **\*\*pitch** input
> >      [**pc**](../commands/pc.html)           translate **\*\*pitch** pitch to **\*\*pc**
> >      [**semits**](../commands/semits.html)   translate **\*\*pitch** pitch to numerical **\*\*semits**
> >      [**solfa**](../commands/solfa.html)     translate **\*\*pitch** pitch to **\*\*solfa**
> >      [**solfg**](../commands/solfg.html)     translate **\*\*pitch** pitch to **\*\*solfg**
> >      [**tonh**](../commands/tonh.html)       translate **\*\*pitch** pitch to **\*\*Tonh**
> >      [**trans**](../commands/trans.html)     transpose **\*\*pitch** score
> >      [**vox**](../commands/vox.html)         determine active and inactive voices in a Humdrum file
> >                                              
> >   -- --------------------------------------- -----------------------------------------------------------
> >
> The following Humdrum command produces **\*\*pitch** data as output:
>
> >   -- ------------------------------------- -------------------------------------------------------------------------------------
> >      [**pitch**](../commands/pitch.html)   translates **\*\*cents**, **\*\*degree**, **\*\*freq**, **\*\*fret**, **\*\*kern**,
> >                                            **\*\*MIDI**, **\*\*semits**, **\*\*solfg**, **\*\*specC**, and **\*\*Tonh** to
> >                                            **\*\*pitch**
> >   -- ------------------------------------- -------------------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*pitch**:
>
> >   ------------------ ------------
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   tempo              `*MM96.3`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*pitch***

### SEE ALSO

> ` barlines, **cents, **deg, **degree, **freq, **hint, **kern, mint, **pc, pitch, **semits, **solfa, **solfg, **specC, **Tonh`

