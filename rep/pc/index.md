---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Pitch-Class
======================================

## REPRESENTATION ##

 <span class="rep">pc</span> \-- pitch-class representation

## DESCRIPTION ##

 The <span class="rep">pc</span> representation can be used to characterize
 *pitch-class* or *chroma* information. Two pitches are said to share
 the same pitch-class or chroma when they are octave equivalents. No
 distinction is made between enharmonic spellings. Hence C-sharp4 and
 D-flat7 belong to the same pitch-class. In traditional set theory,
 pitch-classes are identified by integer values between 0 and 11, where
 C=0, C-sharp/D-flat=1 \... B=11.

 Three types of data tokens are distinguished by <span class="rep">pc</span>:
 pitch-class tokens, rest tokens, and barlines.

 Pitch-class tokens are encoded as either numeric, or mixed alphabetic
 and numeric values. Following traditional practice, <span class="rep">pc</span> encodes
 pitch-classes using the integer values between 0 and 11, where C=0,
 C-sharp/D-flat=1 \... B=11. The <span class="rep">pc</span> representation provides
 aliases for the integers 10 and 11 (\`A\' and \`B\' respectively).
 (Encodings using purely numeric values are especially useful when the
 representation is to be processed numerically. Encodings using mixed
 alphanumeric values are often better suited to pattern matching and
 searching tasks.§) (§ For example, where \`10\' and \`11\' are present
 in a stream of data, the regular expression to search for pitch-class
 \`1\' is `(^|[^1])1([^01]|$)`, whereas the corresponding regular
 expression for alphanumeric pitch-class data is simply `1`.)

 In addition to the basic pitch-class information, <span class="rep">pc</span> also
 provides limited capabilities for representing articulation marks,
 ties, slurs, and phrasing. Slurs and phrase markings can be nested
 (slurs within slurs) and may also be elided. Nested markings mean that
 one slur or phrase is entirely subsumed within another slur or phrase.
 For example: ( ( ) ) means that a short slur has occurred within a
 longer slur. Elisions are overlaps, for example, where an existing
 phrase fails to end before a new phrase begins. In <span class="rep">pc</span> the
 ampersand character is used to mark elided slurs or phrases. For
 example: { &{ } &} means that a phrase begins, but does not end until
 after another phrase has begun. The ampersand is used to mark a
 matched pair of slur or phrases marks. Multiple levels of elisions are
 indicated by repeating the ampersand character. Both the beginning and
 ending must be marked by the same number of ampersands. For example,
 the following coding represents a series of elided phrases where three
 separate phrases begin before any of the phrases is terminated: { &{
 &&{ } &&} &} Notice that the second elided phrase terminates after
 third phrase has ended.

 Rests are represented by the single letter \`r\'.

 Barlines are represented using the \"common system\" for barlines \--
 see [**barlines**](barlines.rep.html).

## FILE TYPE ##

 It is recommended that files containing predominantly <span class="rep">pc</span> data
 should be given names with the distinguishing \`.pc\' extension.

## SIGNIFIERS ##

 The following table summarizes the <span class="rep">pc</span> mappings of signifiers
 and signifieds.

   |0-9   |pitch-class values specified as integers
   |      |or as real values; measure numbers
   |A     |alias for pitch-class 10
   |B     |alias for pitch-class 11
   |E     |alias for pitch-class 11
   |r     |rest
   |I     |generic articulation (unspecified articulation)
   |O     |generic ornament (unspecified ornament)
   |T     |alias for pitch-class 10
   |=     |barline; == double barline
   |\[    |first note of a tie
   |\]    |last note of a tie
   |\_    |middle note(s) of a tie (underscore)
   |(     |slur start
   |)     |slur end
   |{     |phrase mark (start)
   |}     |phrase mark (end)
   |;     |pause sign
   |\'    |staccato mark
   |\"    |pizzicato mark
   |\`    |attacka mark
   |\~    |tenuto mark
   |\^    |accent mark
   |&     |elision marker (for slurs or phases)

 *Summary of <span class="rep">pc</span> Signifiers*

## EXAMPLES ##

 The following sample document shows a pitch-class representation for
 the opening measures of Schoenberg\'s \"Sommerm\\o\'u\\(..\'d\" from
 *Three Songs,* opus 48. The left-most spine shows a mixed alphabetic
 and numeric encoding \-- where pitch-class 11 is represented by the
 letter \`B\'.

 ```

   !! Arnold Schoenberg, \"Sommermued\" (1933)                       
   \*\*pc                                        \*\*pc     \*\*pc   \*\*text
   \*Ipiano                                      \*Ipiano   \*Ivox   \*Deutsch
   \*M4/4                                        \*M4/4     \*M4/4   \*M4/4
   \*MM72                                        \*MM72     \*MM72   \*MM72
   =1                                            =1         =1       =1
   r                                             r          r        .
   (7                                            (11        .        .
   .                                             9\^)       r        .
   8\')                                          .          1        Wenn
   r                                             .          .        .
   r                                             r          .        .
   (9                                            (11        2        du
   .                                             7\^)       .        .
   8\')                                          .          0        schon
   r                                             .          .        .
   =2                                            =2         =2       =2
   r                                             r          (0       glaubst ,
   9                                             (7         \[6      \|
   (9\`                                          8          .        .
   B)                                            .          .        .
   r                                             .          .        .
   r                                             7\')       6\])     \|
   .                                             r          .        .
   .                                             (9         3        es
   \[B                                           .          3        ist
   .                                             8)         \[5      e-
   =3                                            =3         =3       =3
   \*-                                           \*-        \*-      \*-
```

 Note that pitch-class representations do not preserve pitch-height or
 contour information.

## PERTINENT COMMANDS ##

 The following Humdrum commands accept <span class="rep">pc</span> encoded data as
 inputs:

   -- ------------------------------------- ------------------------------------------------------------------
      <span class="tool">iv</span>         determine interval vectors for vertical sonorities
      <span class="tool">nf</span>         determine normal form for vertical sonorities
      <span class="tool">pc</span>         convert between numerical and alphanumerical forms of <span class="rep">pc</span>
      <span class="tool">pcset</span>   convert to set-theoretic representations
      <span class="tool">pf</span>         determine prime form for vertical sonorities
      <span class="tool">reihe</span>   output tone-row variant for a given prime row
      <span class="tool">vox</span>       determine active and inactive voices in a Humdrum file
                                            
   -- ------------------------------------- ------------------------------------------------------------------

 The following Humdrum command produces <span class="rep">pc</span> data as output:

   -- ------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------
      <span class="tool">pc</span>   translates <span class="rep">cents</span>, <span class="rep">freq</span>, <span class="rep">kern</span>, <span class="rep">pc</span>, <span class="rep">pitch</span>, <span class="rep">Tonh</span>, <span class="rep">semits</span>, <span class="rep">solfg</span>, <span class="rep">specC</span>, to <span class="rep">pc</span>
   -- ------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

 The following tandem interpretations can be used in conjunction with
 <span class="rep">pc</span>:

 |  meter signatures   `*M6/8`
 |  key signatures     `*k[f#c#]`
 |  key                `*c#:`
 |  tempo              `*MM96.3`
 |  timebase           `*tb32`

 *Tandem interpretations for <span class="rep">pc</span>*

## SEE ALSO ##

 ` barlines, **cents, **freq, **iv, iv, **kern, **nf, nf, pc, **pcset, pcset, **pf, pf, **pitch, reihe, **semits, **solfg, **specC, Tonh`

## REFERENCES ##

 Forte, A. *The Structure of Atonal Music.* New Haven: Yale University
 Press, 1973.

 Rahn, J. *Basic Atonal Theory.* New York: Longman, 1980.

 Straus, J. *Introduction to Post-Tonal Theory.* Englewood Cliffs,


 N.J.: Prentice Hall, 1990.

