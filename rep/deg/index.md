---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Relative Scale Degree
================================================

### REPRESENTATION

> <span class="rep">deg</span> \-- relative scale degree representation

### DESCRIPTION

> The <span class="rep">deg</span> representation can be used to represent key-dependent
> scale-degree information for music in major or minor keys. The
> <span class="rep">deg</span> representation differs from the related
> [<span class="rep">degree</span>](degree.rep.html) representation in that it encodes
> relative rather than absolute pitch-height information.
>
> Three types of data tokens are distinguished by <span class="rep">deg</span>: scale
> degree tokens, rest tokens, and barlines.
>
> Scale degree tokens are encoded as a combination of melodic approach,
> degree value, and degree alteration. The caret (\^) denotes an
> ascending melodic approach to the current note, whereas the lower-case
> letter v denotes a descending melodic approach. Repeated pitches carry
> no melodic approach signifier. The scale degree values are indicated
> by the numbers 1 (tonic) to 7 (leading-tone). These values may be
> chromatically altered by raising (+) or lowering (-). The *amount* of
> chromatic alteration is not indicated; for example, a raised
> super-tonic is represented as `2+` whereas a doubly-raised super-tonic
> is also represented as `2+`. A lowered submediant is represented as
> `6-`.
>
> Scale degree tokens are always represented with respect to a
> prevailing major or minor *key.* In the case of minor keys, scale
> degrees are characterized with respect to the *harmonic minor* scale
> only. By way of example, the pitch F in the key of A minor is
> represented as the submediant (`6`) while F\# is represented as the
> raised submediant (`6+`). In the same key, G is represented as the
> lowered seventh (`7-`) while G\#4 is the normal leading-tone (`7`). In
> the key of A major, F is represented as the lowered submediant (`6-`).
> If this pitch was approached from below, it would be encoded as `^6-`
> \-- whereas if it was approached from above, it would be encoded as
> `v6-`.
>
> Rests are represented by the single letter \`r\'.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly <span class="rep">deg</span> data
> should be given names with the distinguishing \`.deg\' extension.

### SIGNIFIERS

> The following table summarizes the <span class="rep">deg</span> mappings of signifiers
> and signifieds.
>
> >   ----- -------------------------------------
> >   0-9   scale degrees, or measure numbers
> >   \^    ascending melodic approach
> >   v     descending melodic approach
> >   \-    scale degree lowered by one -tone
> >   \--   scale degree lowered by two -tones
> >   \+    scale degree raised by one semitone
> >   r     rest
> >   =     barline; == double barline
> >   ----- -------------------------------------
> >
> > *Summary of <span class="rep">deg</span> Signifiers*

### EXAMPLES

> The sample document given below shows the opening subject of the Fugue
> in C minor in the second volume of Bach\'s *Well Tempered Clavier.*
> The left spine shows a [<span class="rep">kern</span>](kern.rep.html) encoding while
> the right spine shows a corresponding <span class="rep">deg</span> encoding.
>
> > ``
> >
> >   ---------------------------------- ---------
> >   !! J.S. Bach, Fugue 2 WTC Book I   
> >   \*\*kern                           \*\*deg
> >   \*M4/4                             \*M4/4
> >   \*c:                               \*c:
> >   =1                                 =1
> >   8r                                 r
> >   16cc                               1
> >   16bn                               v7
> >   8cc                                \^1
> >   8g                                 v5
> >   8a-                                \^6
> >   16cc                               \^1
> >   16b                                v7
> >   8cc                                \^1
> >   8dd                                \^2
> >   =2                                 =2
> >   8g                                 v5
> >   16cc                               \^1
> >   16bn                               v7
> >   8cc                                \^1
> >   8dd                                \^2
> >   16f                                v4
> >   16g                                \^5
> >   4a-                                \^6
> >   \*-                                \*-
> >   ---------------------------------- ---------
> >
### PERTINENT COMMANDS

> The following Humdrum command accepts <span class="rep">deg</span> encoded data as
> inputs:
>
> >   -- --------------------------------- --------------------------------------------------------
> >                                        
> >      <span class="tool">vox</span>   determine active and inactive voices in a Humdrum file
> >                                        
> >   -- --------------------------------- --------------------------------------------------------
> >
> The following Humdrum command produces <span class="rep">deg</span> data as output:
>
> >   -- --------------------------------- -------------------------------------------------------------------------
> >                                        
> >      <span class="tool">deg</span>   translates **\*\*kern, \*\*pitch, \*\*Tonh, \*\*solfg**, to <span class="rep">deg</span>
> >   -- --------------------------------- -------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> <span class="rep">deg</span>:
>
> >   ---------------- ------------
> >   key signatures   `*k[f#c#]`
> >   key              `*c#:`
> >   ---------------- ------------
> >
> > *Tandem interpretations for <span class="rep">deg</span>*

### SEE ALSO

> ` barlines, deg, **degree, degree, **kern, **pitch, **solfg, **Tonh`

