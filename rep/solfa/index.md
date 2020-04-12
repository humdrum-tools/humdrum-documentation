---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
robots: all
---


Solfa Syllables
==========================================

## REPRESENTATION ##

 <span class="rep">solfa</span> &mdash; representation for tonic solfa syllables

## DESCRIPTION ##

 The <span class="rep">solfa</span> representation permits the encoding of extended
 tonic solfa syllables for the \"moveable doh\" system of pitch naming.

 The <span class="rep">solfa</span> representation distinguishes three types of data
 tokens: pitches, rests, and barlines.

 Pitches tokens are represented using the syllables *do, re, mi, fa,
 so, la,* and *ti* &mdash; or their chromatic alterations: *di, da, ri,
 ra,* etc. (see table below). Tonic solfa syllables can be determined
 only with reference to some prevailing key. For example, the pitch C
 is the tonic (`do`) in the key of C major or C minor.

 The <span class="rep">solfa</span> representation does not distinguish between major
 and minor modes. Only the tonic pitch is of importance when
 determining the representation for a given pitch. For example, in both
 C major and C minor, the pitch A-natural is represented as `la` while
 the pitch A-flat is represented as `le`.

 The amount of chromatic alteration is not represented by
 <span class="rep">solfa</span>; once a pitch is \"raised,\" raising it further will not
 change the note's representation. For example, where the tonic pitch
 is B-flat, both B-natural and B-sharp are represented by `di`.

 Octave designations are not represented in **\*\*solfa.** However,
 <span class="rep">solfa</span> provides limited capabilities for representing phrasing
 and slurs.

 Several pitches may be encoded concurrently in a single spine by using
 the Humdrum multiple-stop convention: pitches within multiple-stops
 are separated by single spaces. For example, the following example
 encodes a 4-note tonic major chord using two <span class="rep">solfa</span> spines &mdash;
 each spine containing a double-stop.

  | \*\*solfa   |\*\*solfa
  | \*C:        |\*C:
  | do mi       |so do
  | \*-         |\*-

 Pitch tokens may be modified by the presence of additional signifiers.
 The open brace \`{\' denotes the beginning of a phrase. The closed
 brace \`}\' denotes the end of a phrase. The open parenthesis \`(\'
 denotes the beginning of a slur. The closed parenthesis \`)\' denotes
 the end of a slur. The semicolon \`;\' denotes a pause.

 Rest tokens are denoted by the lower-case letter \`r\'.

 Barlines are represented using the \"common system\" for barlines &mdash;
 see [**barlines**](barlines.rep.html).

## FILE TYPE ##

 File type is dubbed \`.sol\'.

## SIGNIFIERS ##

 The following table summarizes the <span class="rep">solfa</span> mappings of
 signifiers and signifieds.

  | do  | (pronounced *doe*) tonic pitch
  | di  | (*dee*) raised tonic pitch
  | de  | (*day*) lowered tonic pitch
  | re  | (*ray*) supertonic pitch
  | ri  | (*ree*) raised supertonic pitch
  | ra  | (*raw*) lowered supertonic pitch
  | mi  | (*me*) mediant pitch
  | my  | (*my*) raised mediant pitch
  | me  | (*may*) lowered mediant pitch
  | fa  | (*fah*) subdominant pitch
  | fi  | (*fee*) raised subdominant pitch
  | fe  | (*fay*) lowered subdominant pitch
  | so  | (*so*) dominant pitch
  | si  | (*see*) raised dominant pitch
  | se  | (*say*) lowered dominant pitch
  | la  | (*la*) submediant pitch
  | li  | (*lee*) raised submediant pitch
  | le  | (*lay*) lowered submediant pitch
  | ti  | (*tee*) leading tone
  | ty  | (*tie*) raised leading tone
  | te  | (*tay*) lowered leading tone
  | r   | rest
  | =   | barline; == double barline
  | (   | slur start
  | )   | slur end
  | {   | phrase mark (start)
  | }   | phrase mark (end)
  | ;   | pause sign

 *Summary of <span class="rep">solfa</span> Signifiers*

## EXAMPLES ##

 A sample document is given below:

```
   !! Johannes Brahms         
   !! Waltz Opus 39, No. 15   
   \*\*solfa                  \*\*solfa
   \*M3/4                     \*M3/4
   \*A:                       \*A:
   =2                         =2
   do                         so mi
   so mi                      .
   .                          mi do
   mi so                      mi do
   .                          so mi
   =3                         =3
   do                         la fa
   .                          so
   .                          fa
   fa fa                      so mi
   la do                      fa re
   =4                         =4
   do                         so mi
   \*-                        \*-
```

## PERTINENT COMMANDS ##

 The following Humdrum command accepts <span class="rep">solfa</span> encoded data as
 inputs:

   -- --------------------------------- --------------------------------------------------------
      <span class="tool">vox</span>   determine active and inactive voices in a Humdrum file
                                        
   -- --------------------------------- --------------------------------------------------------

 The following Humdrum command produces <span class="rep">solfa</span> data as output:

   -- ------------------------------------- ---------------------------------------------------------------------
      <span class="tool">solfa</span>   translates <span class="rep">kern</span>, <span class="rep">pitch</span>, <span class="rep">solfg</span>, <span class="rep">Tonh</span>
   -- ------------------------------------- ---------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

 The following tandem interpretations can be used in conjunction with
 <span class="rep">solfa</span>:

  | meter signatures |  `*M6/8`
  | key signatures   |  `*k[f#c#]`
  | key              |  `*c#:`
  | tempo            |  `*MM96.3`

 *Tandem interpretations for <span class="rep">solfa</span>*

## SEE ALSO ##

 ` barlines, **deg, **degree, **kern, **pitch, **solfg, **Tonh, vox`

