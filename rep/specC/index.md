---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Spectral Centroid
============================================

## REPRESENTATION ##

> <span class="rep">specC</span> \-- spectral centroid representation

## DESCRIPTION ##

> The <span class="rep">specC</span> representation can be used to represent the
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

## FILE TYPE ##

> It is recommended that files containing predominantly <span class="rep">specC</span> data
> should be given names with the distinguishing \`.spc\' extension.

## SIGNIFIERS ##

> The following table summarizes the <span class="rep">specC</span> mappings of
> signifiers and signifieds.
>
> >   ----- ----------------------------------------------
> >   0-9   frequency (in hertz) specified as an integer
> >         or real value
> >   r     rest
> >   =     barline; == double barline
> >   ----- ----------------------------------------------
> >
> > *Summary of <span class="rep">specC</span> Signifiers*

## EXAMPLES ##

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

## PERTINENT COMMANDS ##

> The following Humdrum commands accept <span class="rep">specC</span> encoded data as
> inputs:
>
> >   -- --------------------------------------- -----------------------------------------------------
> >      <span class="tool">cents</span>     translates <span class="rep">specC</span> to <span class="rep">cents</span>
> >      <span class="tool">deg</span>         translate <span class="rep">specC</span> to <span class="rep">deg</span>
> >      <span class="tool">degree</span>   translate <span class="rep">specC</span> to <span class="rep">degree</span>
> >      <span class="tool">freq</span>       translate <span class="rep">specC</span> to <span class="rep">freq</span>
> >      <span class="tool">kern</span>       translates <span class="rep">specC</span> to <span class="rep">kern</span>
> >      <span class="tool">pc</span>           translate <span class="rep">specC</span> pitch to <span class="rep">pc</span>
> >      <span class="tool">pitch</span>     translates <span class="rep">specC</span> to <span class="rep">pitch</span>
> >      <span class="tool">semits</span>   translate <span class="rep">specC</span> to numerical <span class="rep">semits</span>
> >      <span class="tool">solfg</span>     translate <span class="rep">specC</span> pitch to <span class="rep">solfg</span>
> >      <span class="tool">specc</span>     change numerical precision of <span class="rep">specC</span> values
> >      <span class="tool">tonh</span>       translate <span class="rep">solfg</span> pitch to <span class="rep">Tonh</span>
> >                                              
> >   -- --------------------------------------- -----------------------------------------------------
> >
> The following Humdrum command produces <span class="rep">specC</span> data as output:
>
> >   -- ------------------------------------- -------------------------------------------------------------
> >      <span class="tool">specc</span>   translates <span class="rep">freq</span>, and <span class="rep">specC</span> to <span class="rep">specC</span>
> >   -- ------------------------------------- -------------------------------------------------------------
> >
## TANDEM INTERPRETATIONS ##

> The following tandem interpretations can be used in conjunction with
> <span class="rep">specC</span>:
>
> >   ------------------ ------------
> >   pure tones         `*pure`
> >   complex tones      `*complex`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for <span class="rep">specC</span>*

## SEE ALSO ##

> ` barlines, **cents, **deg, **degree, **freq, **kern, **pc, **pitch, **semits, **solfg, **Tonh`

