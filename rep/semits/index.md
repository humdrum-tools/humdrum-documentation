---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Humdrum Representation for Semitone Pitch
=========================================

### REPRESENTATION

> **\*\*semits** \-- semitone absolute pitch representation

### DESCRIPTION

> The **\*\*semits** representation is used to represent absolute pitch
> in semitone units with respect to middle C. Middle C is designated
> zero semitones. All other pitches are represented with respect to this
> reference, hence A4 is 9 semits and A3 is -3 semits. Fractional values
> can also be represented, hence 1.5 is midway between C\#4 and D4.
>
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

> It is recommended that files containing predominantly `**semits` data
> should be given names with the distinguishing \`.sem\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*semits** mappings of
> signifiers and signifieds.
>
> >   ----- ----------------------------------
> >   0-9   decimal values
> >   \-    minus sign
> >   \+    plus sign (optional)
> >   .     fractional delimiter; null token
> >   r     rest
> >   =     barline; == double barline
> >   (     slur start
> >   )     slur end
> >   {     phrase mark (start)
> >   }     phrase mark (end)
> >   ;     pause sign
> >   ----- ----------------------------------
> >
> > *Summary of **\*\*semits** Signifiers*

### EXAMPLES

> The following sample document shows a [**\*\*kern**](kern.rep.html)
> spine with corresponding `**semits` pitch values.
>
> > ``
> >
> >   ------------ ----------
> >   \*\*semits   \*\*kern
> >   \*M4/4       \*M4/4
> >   \*c:         \*c:
> >   =            =
> >   r            8r
> >   12           16cc
> >   11           16bn
> >   12           8cc
> >   14           8dd
> >   5            16f
> >   7            16g
> >   8            4a-
> >   7            16g
> >   5            16f
> >   =            =
> >   4 7          1e 1g
> >   ==           ==
> >   \*-          \*-
> >   ------------ ----------
> >
### PERTINENT COMMANDS

> The following Humdrum commands accept **\*\*semits** encoded data as
> inputs:
>
> >   -- --------------------------------------- --------------------------------------------------------
> >      [**cents**](../commands/cents.html)     translates **\*\*semits** to **\*\*cents**
> >      [**freq**](../commands/freq.html)       translates **\*\*semits** to **\*\*freq**
> >      [**kern**](../commands/kern.html)       translates **\*\*semits** to **\*\*kern**
> >      [**melac**](../commands/melac.html)     calculate melodic accent values for successive pitches
> >      [**pc**](../commands/pc.html)           translate **\*\*semits** pitch to **\*\*pc**
> >      [**pitch**](../commands/pitch.html)     translate **\*\*semits** pitch to **\*\*pitch**
> >      [**semits**](../commands/semits.html)   change numerical precision of **\*\*semits** values
> >      [**solfg**](../commands/solfg.html)     translate **\*\*semits** pitch to **\*\*solfg**
> >      [**tonh**](../commands/tonh.html)       translate **\*\*semits** pitch to **\*\*Tonh**
> >      [**vox**](../commands/vox.html)         determine active and inactive voices in a Humdrum file
> >                                              
> >   -- --------------------------------------- --------------------------------------------------------
> >
> The following Humdrum commands produce **\*\*semits** data as outputs:
>
> >   -- --------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> >      [**semits**](../commands/semits.html)   translates **\*\*cents**, **\*\*freq**, **\*\*fret**, **\*\*kern**, **\*\*MIDI**, **\*\*pitch**, **\*\*semits**, **\*\*solfg**, **\*\*specC**, **\*\*Tonh**, to **\*\*semits**
> >   -- --------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*semits**:
>
> >   ------------------ ------------
> >   MIDI channel       `*Ch1`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*semits***

### SEE ALSO

> ` barlines, **cents, cents, **freq, freq, **fret, **kern, kern, **MIDI, midi, **pitch, pitch, semits, **solfg, solfg, **specC, specc, **Tonh, tonh`

