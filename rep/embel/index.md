---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Embellishment Tones
==============================================

### REPRESENTATION

> <span class="rep">embel</span> \-- representation for embellishment tones

### DESCRIPTION

> The <span class="rep">embel</span> representation is used to represent the harmonic
> status of individual pitches in a passage of Western tonal music.
> There are several different ways of defining and classifying
> embellishment tones. The <span class="rep">embel</span> representation categorizes
> embellishment tones according to the following criteria:
>
> -   whether or not the tone belongs to a given chord
> -   whether or not the tone appears in a metrically accented position
> -   whether or not the tone is approached by diatonic step
> -   whether or not the tone is resolved or left by diatonic step.
>
> Although variations in nomenclature exist, music scholars have
> identified and defined many types of embellishment tones including:
> passing tones, neighbour tones, appoggiaturas, escape tones,
> anticipations, retardations, and suspensions. In addition to these
> non-chordal embellishment tones, there are also chordal embellishment
> tones, such as repetitions, and arpeggiations. The following table
> characterizes each of the various types of embellishment tones
> according to the criteria outlined above.
>
>   --------------------------------- ----------------- ------------------------------ ----------------- --
>                                                                                                        
>   **Non-Chordal Embellishments:**                                                                      
>                                                                                                        
>                                     Approach          Resolution                     Metric position   
>                                                                                                        
>   Accented passing tone             step              step (in same direction)       accented          
>   Unaccented passing tone           step              step (in same direction)       unaccented        
>   Upper neighbor tone               ascending step    step (in opposite direction)   unaccented        
>   Lower neighbor tone               descending step   step (in opposite direction)   unaccented        
>   Accented upper neighbor           ascending step    step (in opposite direction)   unaccented        
>   Accented lower neighbor           descending step   step (in opposite direction)   unaccented        
>   Anticipation                      step or leap      same pitch                     unaccented        
>   Suspension                        same pitch        descending step                accented          
>   Retardation                       same pitch        ascending step                 accented          
>   Escape tone                       step              leap                           unaccented        
>   Appoggiatura                      leap              step                           accented          
>   Changing tone                     ¤                 ¤                              ¤                 
>   Pedal tone                        ¤                 ¤                              ¤                 
>                                                                                                        
>   **Chordal Embellishments:**                                                                          
>                                                                                                        
>   Repeated chordal tone             same pitch        ¤                              ¤                 
>   Arpeggio tone                     leap              step or leap                   ¤                 
>                                                                                                        
>   --------------------------------- ----------------- ------------------------------ ----------------- --
>
> *Types of Chordal and Non-chordal Embellishments*
>
> When the harmony changes while a pitch is sustained, it is possible
> for a chordal tone to be transformed into a non-chordal embellishment,
> such as a suspension. Whenever a tone changes function as an
> embellishment, at the appropriate point it is indicated by placing the
> <span class="rep">embel</span> data token in square brackets. The square brackets
> indicate that the note is already sounding (no new note-onset), but
> has changed function.
>
> Embellishment tokens may be modified by the presence of additional
> signifiers. The open brace \`{\' denotes the beginning of a phrase.
> The closed brace \`}\' denotes the end of a phrase. The semicolon
> \`;\' denotes a pause.
>
> Rest tokens are denoted by the lower-case letter \`r\'.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly <span class="rep">embel</span> data
> should be given names with the distinguishing \`.emb\' extension.

### SIGNIFIERS

> The following table provides a complete list of signifiers defined in
> <span class="rep">embel</span>:
>
> >   ------- --------------------------------------------------
> >   aln     accented lower neighbor tone
> >   ant     anticipation
> >   app     appoggiatura
> >   apt     accented passing tone
> >   arp     arpeggio tone (chordal tone)
> >   arp7    arpeggio tone (7th added to the chord)
> >   aun     accented upper neighbor tone
> >   chg     changing tone
> >   cln     chromatic lower neighbor tone
> >   ct      chordal tone (i.e. not an embellishment)
> >   ct7     chordal tone (7th added to the chord)
> >   cun     chromatic upper neighbor tone
> >   cup     chromatic unaccented passing tone
> >   et      escape tone
> >   ln      lower neighbor tone
> >   ped     pedal
> >   rep     repeated tone
> >   ret     retardation
> >   23ret   2-3 retardation
> >   78ret   7-8 retardation
> >   sus     suspension
> >   43sus   4-3 suspension
> >   98sus   9-8 suspension
> >   76sus   7-6 suspension
> >   un      upper neighbor tone
> >   un7     upper neighbor tone (7th added to the chord)
> >   upt     unaccented passing tone
> >   upt7    unaccented passing tone (7th added to the chord)
> >   ------- --------------------------------------------------
> >
> > *Summary of <span class="rep">embel</span> Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ---------- ----------- ----------
> >   \*\*kern   \*\*embel   \*\*harm
> >   \*C:       \*C:        \*C:
> >   =1         =1          =1
> >   4g         ct          I
> >   4cc        ct          Ib
> >   8ff        app         Ic
> >   \[8ee      ct          .
> >   =2         =2          =2
> >   2ee\]      \[sus\]     V7
> >   4dd        ct          .
> >   =3         =3          =3
> >   4cc        ct          I
> >   \*-        \*-         \*-
> >   ---------- ----------- ----------
> >
### PERTINENT COMMANDS

> Currently, no special-purpose Humdrum commands produce <span class="rep">embel</span>
> as output, or process <span class="rep">embel</span> encoded data as input.

### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> <span class="rep">embel</span>:
>
> >   ------------------ ------------
> >   MIDI channel       `*Ch1`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for <span class="rep">embel</span>*

### SEE ALSO

> ` barlines, **harm`

