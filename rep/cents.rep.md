---
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
description: |
    Documentation for the \*\*cents Humdrum representaton; software for
    music research.
keywords: |
    music research,software,theory,analysis,systematic musicology,computer
    representation,\*\*cents
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
robots: all
title: 'Humdrum Toolkit Representation Reference - Pitch Cents'
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

\

Humdrum Representation for Pitch Cents
======================================

### REPRESENTATION

> **\*\*cents** \-- absolute pitch representation in hundredths of
> semitones

### DESCRIPTION

> The **\*\*cents** representation is used to represent absolute pitch
> in units of hundredths of semitones with respect to middle C. Each
> equally tempered semitone spans a distance of 100 cents. Middle C is
> designated zero cents. All other pitches are represented with respect
> to this reference, hence A4 is 900 cents and A3 is -300 cents. Cents
> may be specified as either integer or real values.
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

> It is recommended that files containing predominantly `**cents` spines
> should be given names with the distinguishing \`.cnt\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*cents** mappings of
> signifiers and signifieds.
>
> >   ----- ------------------------------
> >   0-9   decimal values
> >   .     decimal point; or null token
> >   \-    minus sign
> >   \+    plus sign (optional)
> >   r     rest
> >   =     barline; == double barline
> >   (     slur start
> >   )     slur end
> >   {     phrase mark (start)
> >   }     phrase mark (end)
> >   ;     pause sign
> >   ----- ------------------------------
> >
> > *Summary of **\*\*cents** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ----------- -------------
> >   \*\*cents   \*\*cents
> >   !tempered   !untempered
> >   =1          =1
> >   {1200       {1209.
> >   700         720.4
> >   700         698
> >   =2          =2
> >   (800        (804.1
> >   700)}       722)}
> >   =3          =3
> >   r           r
> >   500 1100    492 1131.2
> >   =4          =4
> >   400 1200    397 1202
> >   ==          ==
> >   \*-         \*-
> >   ----------- -------------
> >
### PERTINENT COMMANDS

> The following Humdrum commands accept **\*\*cents** encoded data as
> inputs:
>
>   -- --------------------------------------- ----------------------------------------------------------
>                                              
>      [**cents**](../commands/cents.html)     change numerical precision of \*\*cents values
>      [**freq**](../commands/freq.html)       translates **\*\*cents** to **\*\*freq**
>      [**kern**](../commands/kern.html)       translates **\*\*cents** to **\*\*kern**
>      [**pc**](../commands/pc.html)           translates **\*\*cents** to **\*\*pc**
>      [**pitch**](../commands/pitch.html)     translate **\*\*cents** pitch to numerical **\*\*pitch**
>      [**semits**](../commands/semits.html)   translates **\*\*cents** to **\*\*semits**
>      [**solfg**](../commands/solfg.html)     translates **\*\*cents** to **\*\*solfg**
>      [**tonh**](../commands/tonh.html)       translates **\*\*cents** to **\*\*Tonh**
>      [**vox**](../commands/vox.html)         determine active and inactive voices in a Humdrum file
>                                              
>   -- --------------------------------------- ----------------------------------------------------------
>
> The following Humdrum command produces **\*\*cents** data as output:
>
>   -- ------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>                                            
>      [**cents**](../commands/cents.html)   translates **\*\*cents**, **\*\*freq**, **\*\*fret**, **\*\*kern**, **\*\*MIDI**, **\*\*pitch**, **\*\*semits**, **\*\*solfg**, **\*\*specC**, and **\*\*Tonh** to **\*\*cents**
>   -- ------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*cents:**
>
> >   ------------------ ------------
> >   MIDI channel       `*Ch1`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   tempo              `*MM96.3`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*cents***

### SEE ALSO

> ` barlines, cents, **freq, freq, **fret, **kern, kern, **MIDI, midi, **pitch, pitch, **semits, semits, **solfg, solfg, **specC, specc, **Tonh, tonh`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide04.html#Cents)
-   [**Index to Humdrum Representations**](../representations.toc.html)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
