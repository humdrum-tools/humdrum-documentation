---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Frequency
====================================

### REPRESENTATION

> **\*\*freq** \-- frequency representation

### DESCRIPTION

> The **\*\*freq** representation can be used to represent frequencies
> for pure or complex tones. **\*\*freq** distinguishes three types of
> tokens: frequencies, rests, and barlines. Frequencies are encoded in
> hertz (Hz) where 440 Hz means 440 cycles per second. Frequencies may
> be specified as integer or real values (using a decimal). In addition,
> **\*\*freq** provides limited capabilities for representing phrasing
> and slurs.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**freq` data
> should be given names with the distinguishing \`\"\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*freq** mappings of signifiers
> and signifieds.
>
> >   ----- ----------------------------------------------
> >   0-9   frequency (in hertz) specified as an integer
> >         or real value
> >   r     rest
> >   =     barline; == double barline
> >   (     slur start
> >   )     slur end
> >   {     phrase mark (start)
> >   }     phrase mark (end)
> >   ;     pause sign
> >   ----- ----------------------------------------------
> >
> > *Summary of **\*\*freq** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ---------- -----------
> >   \*\*freq   \*\*freq
> >   \*pure     \*complex
> >   =1         =1
> >   440        (440
> >   440.9      .
> >   880        440
> >   263.       .
> >   .          440)
> >   =2         =2
> >   r          r
> >   ==         ==
> >   \*-        \*-
> >   ---------- -----------
> >
> Notice that frequencies can be either real or integer values. Rests
> are represented by the single letter \`r\'.

### PERTINENT COMMANDS

> The following Humdrum commands accept **\*\*freq** encoded data as
> inputs:
>
> >   -- --------------------------------------- --------------------------------------------------------
> >                                              
> >      <span class="tool">barks</span>     translates **\*\*freq** to **\*\*barks**
> >      <span class="tool">cbr</span>         translates **\*\*freq** to **\*\*cbr**
> >      <span class="tool">cents</span>     translates **\*\*freq** to **\*\*cents**
> >      <span class="tool">cocho</span>     translates **\*\*freq** to **\*\*cocho**
> >      <span class="tool">kern</span>       translates **\*\*freq** to **\*\*kern**
> >      <span class="tool">pc</span>           translates **\*\*freq** to **\*\*pc**
> >      <span class="tool">pitch</span>     translates **\*\*freq** to **\*\*pitch**
> >      <span class="tool">semits</span>   translate **\*\*freq** to numerical **\*\*semits**
> >      <span class="tool">solfg</span>     translate **\*\*freq** to numerical **\*\*solfg**
> >      <span class="tool">specc</span>     translate **\*\*freq** to numerical **\*\*specC**
> >      <span class="tool">tonh</span>       translate **\*\*freq** to numerical **\*\*Tonh**
> >      <span class="tool">vox</span>         determine active and inactive voices in a Humdrum file
> >                                              
> >   -- --------------------------------------- --------------------------------------------------------
> >
> The following Humdrum command produces **\*\*freq** data as output:
>
> >   -- ----------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> >                                          
> >      <span class="tool">freq</span>   translates **\*\*cbr**, **\*\*cents**, **\*\*cocho**, **\*\*freq**, **\*\*fret**, **\*\*kern**, **\*\*MIDI**, **\*\*pitch**, **\*\*semits**, **\*\*solfg**, **\*\*specC**, and **\*\*Tonh** to **\*\*cents**
> >   -- ----------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*freq**:
>
> >   ------------------ ------------
> >   pure tones         `*pure`
> >   complex tones      `*complex`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*freq***

### SEE ALSO

> ` barlines, **cbr, **cents, **coch, **degree, **kern, **pc, **pitch, **semits, **specC, **Tonh`

