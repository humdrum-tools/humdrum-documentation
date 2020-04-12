---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Frequency
====================================

## REPRESENTATION ##

> <span class="rep">freq</span> \-- frequency representation

## DESCRIPTION ##

> The <span class="rep">freq</span> representation can be used to represent frequencies
> for pure or complex tones. <span class="rep">freq</span> distinguishes three types of
> tokens: frequencies, rests, and barlines. Frequencies are encoded in
> hertz (Hz) where 440 Hz means 440 cycles per second. Frequencies may
> be specified as integer or real values (using a decimal). In addition,
> <span class="rep">freq</span> provides limited capabilities for representing phrasing
> and slurs.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

## FILE TYPE ##

> It is recommended that files containing predominantly <span class="rep">freq</span> data
> should be given names with the distinguishing \`\"\' extension.

## SIGNIFIERS ##

> The following table summarizes the <span class="rep">freq</span> mappings of signifiers
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
> > *Summary of <span class="rep">freq</span> Signifiers*

## EXAMPLES ##

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

## PERTINENT COMMANDS ##

> The following Humdrum commands accept <span class="rep">freq</span> encoded data as
> inputs:
>
> >   -- --------------------------------------- --------------------------------------------------------
> >                                              
> >      <span class="tool">barks</span>     translates <span class="rep">freq</span> to <span class="rep">barks</span>
> >      <span class="tool">cbr</span>         translates <span class="rep">freq</span> to <span class="rep">cbr</span>
> >      <span class="tool">cents</span>     translates <span class="rep">freq</span> to <span class="rep">cents</span>
> >      <span class="tool">cocho</span>     translates <span class="rep">freq</span> to <span class="rep">cocho</span>
> >      <span class="tool">kern</span>       translates <span class="rep">freq</span> to <span class="rep">kern</span>
> >      <span class="tool">pc</span>           translates <span class="rep">freq</span> to <span class="rep">pc</span>
> >      <span class="tool">pitch</span>     translates <span class="rep">freq</span> to <span class="rep">pitch</span>
> >      <span class="tool">semits</span>   translate <span class="rep">freq</span> to numerical <span class="rep">semits</span>
> >      <span class="tool">solfg</span>     translate <span class="rep">freq</span> to numerical <span class="rep">solfg</span>
> >      <span class="tool">specc</span>     translate <span class="rep">freq</span> to numerical <span class="rep">specC</span>
> >      <span class="tool">tonh</span>       translate <span class="rep">freq</span> to numerical <span class="rep">Tonh</span>
> >      <span class="tool">vox</span>         determine active and inactive voices in a Humdrum file
> >                                              
> >   -- --------------------------------------- --------------------------------------------------------
> >
> The following Humdrum command produces <span class="rep">freq</span> data as output:
>
> >   -- ----------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> >                                          
> >      <span class="tool">freq</span>   translates <span class="rep">cbr</span>, <span class="rep">cents</span>, <span class="rep">cocho</span>, <span class="rep">freq</span>, <span class="rep">fret</span>, <span class="rep">kern</span>, <span class="rep">MIDI</span>, <span class="rep">pitch</span>, <span class="rep">semits</span>, <span class="rep">solfg</span>, <span class="rep">specC</span>, and <span class="rep">Tonh</span> to <span class="rep">cents</span>
> >   -- ----------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> >
## TANDEM INTERPRETATIONS ##

> The following tandem interpretations can be used in conjunction with
> <span class="rep">freq</span>:
>
> >   ------------------ ------------
> >   pure tones         `*pure`
> >   complex tones      `*complex`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for <span class="rep">freq</span>*

## SEE ALSO ##

> ` barlines, **cbr, **cents, **coch, **degree, **kern, **pc, **pitch, **semits, **specC, **Tonh`

