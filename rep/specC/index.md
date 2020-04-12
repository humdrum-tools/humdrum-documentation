---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Spectral Centroid
============================================

### REPRESENTATION

> **\*\*specC** \-- spectral centroid representation

### DESCRIPTION

> The **\*\*specC** representation can be used to represent the
> frequency of the spectral centroid for pure or complex tones. Spectral
> centroid is the amplitude-weighted mean of several frequency
> components. For example, given three frequencies (200, 400, 900 Hz) of
> equal amplitude, the corresponding spectral centroid would be the
> arithmetic mean of the three frequencies (i.e. 750 Hz). For pure
> tones, the spectral centroid is equivalent to the frequency of the
> pure tone. For complex tones, the spectral centroid is higher when
> tones have greater energy (amplitudes) in the upper partials. Hence,
> spectral centroid provides a simple index for the *richness* or
> *brightness* of a tone or sonority.
>
> Spectral centroid tokens are numerical values in units of hertz.
> Frequencies may be specified as integer or real values (using a
> decimal).
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**specC` data
> should be given names with the distinguishing \`.spc\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*specC** mappings of
> signifiers and signifieds.
>
> >   ----- ----------------------------------------------
> >   0-9   frequency (in hertz) specified as an integer
> >         or real value
> >   r     rest
> >   =     barline; == double barline
> >   ----- ----------------------------------------------
> >
> > *Summary of **\*\*specC** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ----------- -----------
> >   \*\*specC   \*\*specC
> >   \*pure      \*complex
> >   =1          =1
> >   1900        2730
> >   868.9       .
> >   1362        4402
> >   2263.       .
> >   .           3742
> >   =2          =2
> >   r           r
> >   ==          ==
> >   \*-         \*-
> >   ----------- -----------
> >
Notice that frequencies can be either real or integer values. Rests are
represented by the single letter \`r\'.

### PERTINENT COMMANDS

> The following Humdrum commands accept **\*\*specC** encoded data as
> inputs:
>
> >   -- --------------------------------------- -----------------------------------------------------
> >      <span class="tool">cents</span>     translates **\*\*specC** to **\*\*cents**
> >      <span class="tool">deg</span>         translate **\*\*specC** to **\*\*deg**
> >      <span class="tool">degree</span>   translate **\*\*specC** to **\*\*degree**
> >      <span class="tool">freq</span>       translate **\*\*specC** to **\*\*freq**
> >      <span class="tool">kern</span>       translates **\*\*specC** to **\*\*kern**
> >      <span class="tool">pc</span>           translate **\*\*specC** pitch to **\*\*pc**
> >      <span class="tool">pitch</span>     translates **\*\*specC** to **\*\*pitch**
> >      <span class="tool">semits</span>   translate **\*\*specC** to numerical **\*\*semits**
> >      <span class="tool">solfg</span>     translate **\*\*specC** pitch to **\*\*solfg**
> >      <span class="tool">specc</span>     change numerical precision of **\*\*specC** values
> >      <span class="tool">tonh</span>       translate **\*\*solfg** pitch to **\*\*Tonh**
> >                                              
> >   -- --------------------------------------- -----------------------------------------------------
> >
> The following Humdrum command produces **\*\*specC** data as output:
>
> >   -- ------------------------------------- -------------------------------------------------------------
> >      <span class="tool">specc</span>   translates **\*\*freq**, and **\*\*specC** to **\*\*specC**
> >   -- ------------------------------------- -------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*specC**:
>
> >   ------------------ ------------
> >   pure tones         `*pure`
> >   complex tones      `*complex`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*specC***

### SEE ALSO

> ` barlines, **cents, **deg, **degree, **freq, **kern, **pc, **pitch, **semits, **solfg, **Tonh`

