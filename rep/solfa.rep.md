---
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
description: |
    Documentation for the \*\*solfa Humdrum representaton; software for
    music research.
keywords: |
    music research,solfa
    syllables,solfege,software,theory,analysis,systematic
    musicology,computer representation,\*\*solfa
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
robots: all
title: 'Humdrum Toolkit Representation Reference - Solfa Syllables'
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

\

Humdrum Representation for Solfa Syllables
==========================================

### REPRESENTATION

> **\*\*solfa** \-- representation for tonic solfa syllables

### DESCRIPTION

> The **\*\*solfa** representation permits the encoding of extended
> tonic solfa syllables for the \"moveable doh\" system of pitch naming.
>
> The **\*\*solfa** representation distinguishes three types of data
> tokens: pitches, rests, and barlines.
>
> Pitches tokens are represented using the syllables *do, re, mi, fa,
> so, la,* and *ti* \-- or their chromatic alterations: *di, da, ri,
> ra,* etc. (see table below). Tonic solfa syllables can be determined
> only with reference to some prevailing key. For example, the pitch C
> is the tonic (`do`) in the key of C major or C minor.
>
> The **\*\*solfa** representation does not distinguish between major
> and minor modes. Only the tonic pitch is of importance when
> determining the representation for a given pitch. For example, in both
> C major and C minor, the pitch A-natural is represented as `la` while
> the pitch A-flat is represented as `le`.
>
> The amount of chromatic alteration is not represented by
> **\*\*solfa**; once a pitch is \"raised,\" raising it further will not
> change the note\'s representation. For example, where the tonic pitch
> is B-flat, both B-natural and B-sharp are represented by `di`.
>
> Octave designations are not represented in **\*\*solfa.** However,
> **\*\*solfa** provides limited capabilities for representing phrasing
> and slurs.
>
> Several pitches may be encoded concurrently in a single spine by using
> the Humdrum multiple-stop convention: pitches within multiple-stops
> are separated by single spaces. For example, the following example
> encodes a 4-note tonic major chord using two **\*\*solfa** spines \--
> each spine containing a double-stop.
>
> > ``
> >
> >   ----------- -----------
> >   \*\*solfa   \*\*solfa
> >   \*C:        \*C:
> >   do mi       so do
> >   \*-         \*-
> >   ----------- -----------
> >
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

> File type is dubbed \`.sol\'.

### SIGNIFIERS

> The following table summarizes the **\*\*solfa** mappings of
> signifiers and signifieds.
>
> >   ---- -----------------------------------
> >   do   (pronounced *doe*) tonic pitch
> >   di   (*dee*) raised tonic pitch
> >   de   (*day*) lowered tonic pitch
> >   re   (*ray*) supertonic pitch
> >   ri   (*ree*) raised supertonic pitch
> >   ra   (*raw*) lowered supertonic pitch
> >   mi   (*me*) mediant pitch
> >   my   (*my*) raised mediant pitch
> >   me   (*may*) lowered mediant pitch
> >   fa   (*fah*) subdominant pitch
> >   fi   (*fee*) raised subdominant pitch
> >   fe   (*fay*) lowered subdominant pitch
> >   so   (*so*) dominant pitch
> >   si   (*see*) raised dominant pitch
> >   se   (*say*) lowered dominant pitch
> >   la   (*la*) submediant pitch
> >   li   (*lee*) raised submediant pitch
> >   le   (*lay*) lowered submediant pitch
> >   ti   (*tee*) leading tone
> >   ty   (*tie*) raised leading tone
> >   te   (*tay*) lowered leading tone
> >   r    rest
> >   =    barline; == double barline
> >   (    slur start
> >   )    slur end
> >   {    phrase mark (start)
> >   }    phrase mark (end)
> >   ;    pause sign
> >   ---- -----------------------------------
> >
> > *Summary of **\*\*solfa** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   -------------------------- -----------
> >   !! Johannes Brahms         
> >   !! Waltz Opus 39, No. 15   
> >   \*\*solfa                  \*\*solfa
> >   \*M3/4                     \*M3/4
> >   \*A:                       \*A:
> >   =2                         =2
> >   do                         so mi
> >   so mi                      .
> >   .                          mi do
> >   mi so                      mi do
> >   .                          so mi
> >   =3                         =3
> >   do                         la fa
> >   .                          so
> >   .                          fa
> >   fa fa                      so mi
> >   la do                      fa re
> >   =4                         =4
> >   do                         so mi
> >   \*-                        \*-
> >   -------------------------- -----------
> >
### PERTINENT COMMANDS

> The following Humdrum command accepts **\*\*solfa** encoded data as
> inputs:
>
> >   -- --------------------------------- --------------------------------------------------------
> >      [**vox**](../commands/vox.html)   determine active and inactive voices in a Humdrum file
> >                                        
> >   -- --------------------------------- --------------------------------------------------------
> >
> The following Humdrum command produces **\*\*solfa** data as output:
>
> >   -- ------------------------------------- ---------------------------------------------------------------------
> >      [**solfa**](../commands/solfa.html)   translates **\*\*kern**, **\*\*pitch**, **\*\*solfg**, **\*\*Tonh**
> >   -- ------------------------------------- ---------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*solfa**:
>
> >   ------------------ ------------
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   tempo              `*MM96.3`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*solfa***

### SEE ALSO

> ` barlines, **deg, **degree, **kern, **pitch, **solfg, **Tonh, vox`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide13.html#XXXXX)
-   [**Index to Humdrum Representations**](../representations.toc.html)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
