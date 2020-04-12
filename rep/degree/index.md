---
sidebar: toc
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Absolute Scale Degree
================================================

### REPRESENTATION

> <span class="rep">degree</span> -- absolute scale degree representation

### DESCRIPTION

> The <span class="rep">degree</span> representation can be used to represent
> key-dependent scale-degree information for music in major or minor
> keys. The <span class="rep">degree</span> representation differs from the related
> [<span class="rep">deg</span>](deg.rep.html) representation in that it encodes absolute
> rather than relative pitch-height information.
>
> Three types of data tokens are distinguished by <span class="rep">degree</span>: scale
> degree tokens, rest tokens, and barlines.
>
> Scale degree tokens are encoded as a combination of degree values,
> degree alterations, and octave designations. The scale degree values
> are indicated by the numbers 1 (tonic) to 7 (leading-tone). These
> values may be chromatically altered by raising (+) or lowering (-).
> The *amount* of chromatic alteration is not indicated; for example, a
> raised super-tonic is represented as `2+` whereas a doubly-raised
> super-tonic is also represented as `2+`. A lowered submediant is
> represented as `6-`.
>
> A second integer value is used to indicate the octave following the
> ANSI standard pitch designations. For example, the pitch A4 lies in
> octave 4. (Octaves begin at C and end at B.) In order to avoid
> confusing scale degrees with octave indications the slash character is
> used as a sub-token separator. For example, the pitch C4 in the key of
> C major is represented as `1/4`, while the pitch A\#4 in the key of G
> major is represented as `2+/4`.
>
> Scale degree tokens are always represented with respect to a
> prevailing major or minor *key.* In the case of minor keys, scale
> degrees are characterized with respect to the *harmonic minor* scale
> only. By way of example, the pitch F4 in the key of A minor is
> represented as the submediant (`6/4`) while F\#4 is represented as the
> raised submediant (`6+/4`). In the same key, G4 is represented as the
> lowered seventh (`7-/4`) while G\#4 is the normal leading-tone
> (`7/4`). In the key of A major, F4 is represented as the lowered
> submediant (`6-/4`).
>
> Rests are represented by the single letter \`r\'.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly <span class="rep">degree</span> data
> should be given names with the distinguishing \`.dgr\' extension.

### SIGNIFIERS

> The following table summarizes the <span class="rep">degree</span> mappings of
> signifiers and signifieds.
>
> >   ----- --------------------------------------------------------
> >   0-9   scale degrees, octave designations, or measure numbers
> >   /     scale-degree / octave number separator
> >   \-    scale degree lowered
> >   \+    scale degree raised
> >   r     rest
> >   =     barline; == double barline
> >   ----- --------------------------------------------------------
> >
> > *Summary of <span class="rep">degree</span> Signifiers*

### EXAMPLES

> The sample document given below shows the opening subject of the Fugue
> in C minor in the second volume of Bach\'s *Well Tempered Clavier.*
> The left spine shows a [<span class="rep">kern</span>](kern.rep.html) encoding while
> the right spine shows a corresponding <span class="rep">degree</span> encoding.
>
> > ``
> >
> >   ---------------------------------- ------------
> >   !! J.S. Bach, Fugue 2 WTC Book I   
> >   \*\*kern                           \*\*degree
> >   \*M4/4                             \*M4/4
> >   \*c:                               \*c:
> >   =1                                 =1
> >   8r                                 r
> >   16cc                               1/5
> >   16bn                               7/4
> >   8cc                                1/5
> >   8g                                 5/4
> >   8a-                                6/4
> >   16cc                               1/5
> >   16b                                7/4
> >   8cc                                1/5
> >   8dd                                2/5
> >   =2                                 =2
> >   8g                                 5/4
> >   16cc                               1/5
> >   16bn                               7/4
> >   8cc                                1/5
> >   8dd                                2/5
> >   16f                                4/4
> >   16g                                5/4
> >   4a-                                6/4
> >   \*-                                \*-
> >   ---------------------------------- ------------
> >
### PERTINENT COMMANDS

> The following Humdrum commands accept <span class="rep">degree</span> encoded data as
> inputs:
>
> >   -- ------------------------------------- --------------------------------------------------------
> >                                            
> >      <span class="tool">kern</span>     translates <span class="rep">degree</span> to <span class="rep">kern</span>
> >      <span class="tool">pitch</span>   translates <span class="rep">degree</span> to <span class="rep">pitch</span>
> >      <span class="tool">solfg</span>   translates <span class="rep">degree</span> to <span class="rep">solfg</span>
> >      <span class="tool">tonh</span>     translates <span class="rep">degree</span> to <span class="rep">Tonh</span>
> >      <span class="tool">vox</span>       determine active and inactive voices in a Humdrum file
> >                                            
> >   -- ------------------------------------- --------------------------------------------------------
> >
> The following Humdrum command produces <span class="rep">degree</span> data as output:
>
> >   -- --------------------------------------- ----------------------------------------------------------------------------------------
> >                                              
> >      <span class="tool">degree</span>   translates <span class="rep">kern</span>, <span class="rep">pitch</span>, <span class="rep">solfg</span>, <span class="rep">Tonh</span>, to <span class="rep">degree</span>
> >   -- --------------------------------------- ----------------------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> <span class="rep">degree</span>:
>
> >   ---------------- ------------
> >   key signatures   `*k[f#c#]`
> >   key              `*c#:`
> >   ---------------- ------------
> >
> > *Tandem interpretations for <span class="rep">degree</span>*

### SEE ALSO

> ` barlines, **deg, deg, degree, **kern, **pitch, **solfg, **Tonh`

