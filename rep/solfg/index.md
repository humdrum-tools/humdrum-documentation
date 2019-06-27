---
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Humdrum Representation for French Solfège
=========================================

### REPRESENTATION

> **\*\*solfg** \-- French solfège (pitch) notation

### DESCRIPTION

> The **\*\*solfg** representation permits the encoding of Western
> musical pitches using the common French system for pitch naming.
>
> The **\*\*solfg** representation distinguishes three types of data
> tokens: pitches, rests, and barlines. Pitches are encoded using
> diatonic pitch names, accidentals, and octave indications. In
> addition, **\*\*solfg** provides limited capabilities for representing
> phrasing and slurs.
>
> Pitch tokens consist of three logical parts \-- without any
> intervening spaces. The first part uses the so-called \`fixed-do\'
> method of diatonic pitch designations: *do, ré, mi, fa, sol, la,* and
> *si.* The second part is an optional accidental preceded by an tilde.
> Flats (*bémol*) and sharps (*di\\o\'e\\ga\'se*) are abbreviated *b*
> and *d* respectively. Hence, \`do di\\o\'e\\ga\'se\' (`do~d`) for
> C-sharp, \`la b\\o\'e\\aa\'mol\' (`la~b`) for A-flat, \`sol
> double-dièse\' (`sol~dd`) for G double-sharp, \`si double-bémol\'
> (`si~bb`) for B double-flat, and so on.
>
> The third part of a pitch token is the octave designation. The number
> 4 is used to designate all pitches between middle C and the *si* a
> major seventh above, inclusive. Octave numbers are incremented by one
> for each successively higher octave, and are decremented by one for
> each successively lower octave. Negative octave numbers are not
> permitted, so the lowest pitch in the **\*\*solfg** representation is
> do0 (16.35 Hz). Only a single octave digit is permitted, so the
> highest **\*\*solfg** pitch is si9 (15,804 Hz).
>
> Once again, no intervening spaces are permitted within a single note.
> Notice that the order of signifiers is important for pitch encodings.
> Pitch letter-name is followed by one or more accidentals (if
> appropriate), followed by an octave designation.
>
> Several notes may be encoded concurrently in a single spine by using
> the Humdrum multiple-stop convention: notes within multiple-stops are
> separated by single spaces. The following example encodes a C-minor
> chord as four pitches in two **\*\*solfg** spines \-- each spine
> containing a double-stop.
>
> > ``
> >
> >   ------------ -----------
> >   \*\*solfg    \*\*solfg
> >   do4 mi\~b4   sol4 do5
> >   \*-          \*-
> >   ------------ -----------
> >
> Pitch tokens may be modified by the presence of additional signifiers.
> The open brace \`{\' denotes the beginning of a phrase. The closed
> brace \`}\' denotes the end of a phrase. The open parenthesis \`(\'
> denotes the beginning of a slur. The closed parenthesis \`)\' denotes
> the end of a slur. The semicolon \`;\' denotes a pause.
>
> Rest tokens are denoted by the lower-case letter \`r\'.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**solfg` data
> should be given names with the distinguishing \`.slg\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*solfg** mappings of
> signifiers and signifieds.
>
> >   ------------ ------------------------------------------------
> >   0-9          octave designation, where do4 equals middle C;
> >   doremifasl   diatonic pitches letter names
> >   \~           accidental delimiter
> >   \~b          flat (bémol)
> >   \~d          sharp (dièse)
> >   \~bb         double-flat
> >   \~dd         double-sharp
> >   n            natural
> >   r            rest
> >   =            barline; == double barline
> >   (            slur start
> >   )            slur end
> >   {            phrase mark (start)
> >   }            phrase mark (end)
> >   ;            pause sign
> >   ------------ ------------------------------------------------
> >
> > *Summary of **\*\*solfg** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ------------------- -----------
> >   !! Claude Debussy   
> >   !! \"Voiles\"       
> >   \*\*solfg           \*\*solfg
> >   =1                  =1
> >   r                   r
> >   {mi5                {sol\~d5
> >   re5                 fah\~d5
> >   do5                 mi5
> >   si\~b4              re5
> >   =2                  =2
> >   la\~b4              do5
> >   sol\~d5             do6
> >   fa\~d5}             si\~b5}
> >   =3                  =3
> >   \*-                 \*-
> >   ------------------- -----------
> >
### PERTINENT COMMANDS

> The following Humdrum commands accept **\*\*solfg** encoded data as
> inputs:
>
>   -- --------------------------------------- -----------------------------------------------------------
>      [**cents**](../commands/cents.html)     translate **\*\*solfg** to **\*\*cents**
>      [**deg**](../commands/deg.html)         translate **\*\*solfg** to **\*\*deg**
>      [**degree**](../commands/degree.html)   translate **\*\*solfg** to **\*\*degree**
>      [**freq**](../commands/freq.html)       translate **\*\*solfg** to **\*\*freq**
>      [**hint**](../commands/hint.html)       calculate harmonic intervals from **\*\*solfg** input
>      [**kern**](../commands/kern.html)       translate **\*\*solfg** to **\*\*kern**
>      [**mint**](../commands/mint.html)       calculate melodic intervals from **\*\*solfg** input
>      [**pc**](../commands/pc.html)           translate **\*\*solfg** pitch to **\*\*pc**
>      [**pitch**](../commands/pitch.html)     translate **\*\*solfg** pitch to **\*\*pitch**
>      [**semits**](../commands/semits.html)   translate **\*\*solfg** pitch to numerical **\*\*semits**
>      [**solfa**](../commands/solfa.html)     translate **\*\*solfg** pitch to **\*\*solfa**
>      [**tonh**](../commands/tonh.html)       translate **\*\*solfg** pitch to **\*\*Tonh**
>      [**trans**](../commands/trans.html)     transpose **\*\*solfg** score
>      [**vox**](../commands/vox.html)         determine active and inactive voices in a Humdrum file
>                                              
>   -- --------------------------------------- -----------------------------------------------------------
>
> The following Humdrum command produces **\*\*solfg** data as output:
>
>   -- ------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>      [**solfg**](../commands/solfg.html)   translates **\*\*cents**, **\*\*degree**, **\*\*fret**, **\*\*freq**, **\*\*kern**, **\*\*MIDI**, **\*\*pitch**, **\*\*semits**, **\*\*specC**, and **\*\*Tonh** to **\*\*solfg**
>   -- ------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*solfg**:
>
> >   ------------------ ------------
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   tempo              `*MM96.3`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*solfg***

### SEE ALSO

> ` barlines, **cents, **deg, **degree, **freq, **hint, **kern, **mint, mint, **pc, pc, **pitch, pitch, **semits, **solfa, solfg, **Tonh, tonh`

