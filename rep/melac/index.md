---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Melodic Accent
=========================================

## REPRESENTATION ##

> <span class="rep">melac</span> \-- melodic accent representation

## DESCRIPTION ##

> The <span class="rep">melac</span> representation is used to characterize the degree of
> pitch-related stress (melodic accent) for successive moments. Three
> types of tokens are recognized by <span class="rep">melac</span>: stress-tokens, rests,
> and barlines. Stress-tokens encode decimal values ranging between 0
> (no stress) and 1 (maximum stress).
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

## FILE TYPE ##

> It is recommended that files containing predominantly <span class="rep">melac</span> data
> should be given names with the distinguishing \`.mac\' extension.

## SIGNIFIERS ##

> The following table summarizes the <span class="rep">melac</span> mappings of
> signifiers and signifieds.
>
> >   ----- --------------------------------------------
> >   0-9   melodic accent values specified as integer
> >         or real value; measure numbers
> >   r     rest
> >   =     barline; == double barline
> >   =;    barline with pause sign
> >   ----- --------------------------------------------
> >
> > *Summary of <span class="rep">melac</span> Signifiers*

## EXAMPLES ##

> The following sample document shows a single spine of <span class="rep">melac</span>
> data for the bass line of J. S. Bach\'s two-part keyboard Invention
> No. 1. The corresponding [<span class="rep">kern</span>](kern.rep.html) and
> [<span class="rep">semits</span>](semits.rep.html) representations are also shown:
>
> > ``
> >
> >   ---------------------------------------------- ------------ -----------
> >   !! J.S. Bach, Two-part Invention 1 (BWV 772)                
> >   \*\*kern                                       \*\*semits   \*\*melac
> >   \*C:                                           \*C:         \*C:
> >   \*M4/4                                         \*M4/4       \*M4/4
> >   =1                                             =1           =1
> >   2r                                             r            r
> >   16r                                            r            r
> >   16C                                            -12          1
> >   16D                                            -10          0.33
> >   16E                                            -8           0.221
> >   16F                                            -7           0.556
> >   16D                                            -10          0.121
> >   16E                                            -8           0.241
> >   16C                                            -12          0.121
> >   =2                                             =2           =2
> >   8G                                             -5           0.241
> >   8GG                                            -17          0.17
> >   4r                                             r            r
> >   16r                                            r            r
> >   16G                                            -5           1
> >   16A                                            -3           0.33
> >   16B                                            -1           0.221
> >   16c                                            0            0.556
> >   16A                                            -3           0.121
> >   16B                                            -1           0.241
> >   16G                                            -5           0.121
> >   =3                                             =3           =3
> >   \*-                                            \*-          \*-
> >   ---------------------------------------------- ------------ -----------
> >
> Notice that melodic accent values can be either real or integer
> values. Rests are represented by the single letter \`r\'.

## PERTINENT COMMANDS ##

> The following Humdrum command produces <span class="rep">melac</span> data as output:
>
> >   -- ------------------------------------- --------------------------------------------------------
> >      <span class="tool">melac</span>   calculate melodic accent values for successive pitches
> >   -- ------------------------------------- --------------------------------------------------------
> >
## TANDEM INTERPRETATIONS ##

> The following tandem interpretations can be used in conjunction with
> <span class="rep">melac</span>:
>
> >   ------------------ ------------
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for <span class="rep">melac</span>*

## SEE ALSO ##

> ` barlines, melac, **semits, semits`

