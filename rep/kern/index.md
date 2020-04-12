---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Basic Notated Music
==============================================

## REPRESENTATION ##

 <span class="rep">kern</span> &mdash; core pitch/duration representation for common
 practice music notation

## DESCRIPTION ##

 The <span class="rep">kern</span> scheme can be used to represent basic or core
 information for period-of-common-practice Western music. The
 <span class="rep">kern</span> representation allows pitch and canonical duration
 information to be encoded. In addition, <span class="rep">kern</span> also provides
 limited capabilities for representing accidentals, articulation,
 ornamentation, ties, slurs, phrasing, barlines, stem-direction and
 beaming. In general, <span class="rep">kern</span> is intended to represent the
 underlying semantic information implied by a musical score rather than
 the visual or orthographic information embodied by a given printed
 rendition; <span class="rep">kern</span> is designed to facilitate analytic
 applications rather than music printing or sound generation. Other
 Humdrum representations should be used for these latter purposes.

 Three types of data tokens are distinguished in <span class="rep">kern</span>: notes,
 rests, and barlines.

 Notes can encode a variety of attributes including absolute pitch,
 accidental, canonical duration, articulation, ornamentation, ties,
 slurs, phrasing, stem-direction and beaming.

 Pitches in <span class="rep">kern</span> are encoded as \"nominally\" equally-tempered
 values. Transposing instruments are represented at concert pitch with
 a tandem interpretation indicating the nature of the transposition.
 Pitch information is encoded through a scheme of upper- and lower-case
 letters. Middle C (C4) is represented using the single lower-case
 letter `c`. Successive octaves are designated by letter repetition,
 thus C5 is represented by `cc`, C6 by `ccc` and so on. For pitches
 below C4, upper-case letters are used: `C` for C3, `CC` for C2, and so
 on. This same scheme is used for other pitch letter-names. Changes of
 octave are deemed to occur between B and C. Thus the B below middle
 `c` is represented as `B`; the B below `CC` is represented as `BBB`,
 and so on.

 Accidentals are encoded using the octothorpe (`#`) for sharps, the
 minus sign (`-`) for flats, and the lower-case letter `n` for
 naturals. Accidentals are encoded immediately following the diatonic
 pitch information. Double-sharps and double-flats have no special
 representations in <span class="rep">kern</span> and are simply denoted by repetition
 `(##)` and `(--)`. Triple- and quadruple accidentals are similarly
 encoded by repetition. Sharps, flats, and naturals are mutually
 exclusive in **\*\*kern,** so tokens such as `cc#n` and `GG-#` are
 illegal. In addition, natural signs may not be repeated (i.e. `nn`).

 In **\*\*kern,** all pitches are encoded as contextually independent
 absolute values. Pitches must be encoded with the appropriate
 accidental, even if the accidental is specified in a key-signature, or
 is present earlier in the same measure. Transposing instruments must
 be notated at (sounding) concert pitch (although see the tandem
 interpretation **transposition (3)**).

 Note tokens may be modified by the presence of additional signifiers.

 The <span class="rep">kern</span> representation provides no generic means for
 representing \"curved lines\" found in printed scores. Lines must be
 explicitly interpreted as ties, slurs or phrases. The open brace `{`
 denotes the beginning of a phrase. The closed brace `}` denotes the
 end of a phrase. The open parenthesis `(` and closed parenthesis `)`
 signify the beginning and end of a slur respectively. The semicolon
 `;` denotes a pause. The open square bracket `[` denotes the first
 note of a tie. The closed square bracket `]` denotes the last note of
 a tie. The underscore character `_` denotes middle notes of a tie.

 Additional signifiers are provided for denoting articulation marks and
 ornaments. The letters `T` and `t` are used to signify whole-tone and
 semitone trills, respectively. Whole-tone and semitone mordents are
 signified by the letters `M` and `m`. Inverted mordents are signified
 by `W` (whole-tone) and `w` (semitone). (Note that trills, mordents,
 and inverted mordents wider than two semitones in size are also
 denoted by the upper-case signifier.) The letter `S` signifies a turn,
 whereas the dollar sign (`$`) signifies an inverted (or Wagnerian)
 turn. When a concluding turn is appended to the end of an ornament
 (such as a trill), the upper-case letter `R` is added to the ornament
 signifier (as in `tR` and `TR`). In addition to these ornaments,
 <span class="rep">kern</span> provides a signifier for (multi-note) arpeggiation (`:`).
 The presence of ornaments other than trills, mordents, inverted
 mordents, and turns types can be indicated by the generic ornament
 symbol (`O`).

 Articulation marks include the apostrophe (`'`) for staccato, the
 double-quote (`"`) for pizzicato, the greve (`` ` ``) for
 staccatissimo or attacca, the tilde (`~`) for tenuto, and the caret
 (`^`) for all note-related accents (including \< and \>). In addition,
 <span class="rep">kern</span> provides signifiers for up-bow (`v`) and down-bow (`u`).
 The presence of other articulation types can be indicated by the
 generic articulation symbol (`I`).

 As noted, the <span class="rep">kern</span> scheme is intended for analytic
 applications rather than as a means for representing visual renderings
 of notation. Nevertheless, <span class="rep">kern</span> distinguishes up-stems,
 down-stems, and beamings in order to assist in analytic tasks such as
 the determination of voicings and in order to facilitate the parsing
 of note-groupings. Up-stems and down-stems are indicated by the slash
 (`/`) and backslash characters (`\`) respectively. The beginning and
 ends of beams are signified by the upper-case letters `L` and `J`.
 Multiple beams are indicated via letter repetition, e.g. `LL <--> JJ`
 and `LLL <--> JJJ` for double- and triple-beams respectively. Partial
 beams may extend to the right (`K`) or left (`k`). Again, multiple
 partial beams are indicated via letter repetition. By way of example,
 a doubly-dotted sixteenth note beamed to a thirty-second note can be
 represented as:

 ``

   --------
   16..LL
   32JJkk
   --------

 Slurs and phrase markings can be nested (e.g. slurs within slurs) and
 may also be elided (e.g. overlapping phrases). Nested markings mean
 that one slur or phrase is entirely subsumed under another slur or
 phrase. For example: `(   (   )    )` means that a short slur has
 occurred within a longer slur. Elisions are overlaps, for example,
 where an existing phrase fails to end while a new phrase begins. In
 <span class="rep">kern</span> the ampersand character is used to mark elided slurs or
 phrases. For example: `{   &{   }    &}` means that two phrases
 overlap &mdash; the initial phrase ending after second phrase has begun.
 Multiple levels of elisions are indicated by repeating the ampersand
 character. Both the beginning and ending must be marked by the same
 number of ampersands. For example, the following coding represents a
 series of elided phrases where three separate phrases begin before any
 of the phrases is terminated: { &{ &&{ } &&} &} Notice that the second
 elided phrase terminates after third phrase has ended.

 *Durations* are encoded in a manner identical to the
 [<span class="rep">recip</span>](recip.rep.html) representation. Durations are encoded
 as nominal proportions using integer numbers and the period character.
 With the exception of the value zero, durations are represented by
 reciprocal numerical values corresponding to the American duration
 names: `1` for whole note, `8` for eighth, `32` for thirty-second,
 etc. The number zero (`0`) is reserved for the *breve* duration (i.e.
 a duration of twice the length of a whole note). Dotted durations are
 indicated by adding the period character (`.`) immediately following
 the numerical value &mdash; hence `8.` signifies a dotted-eighth note and
 `2..` signifies a doubly-dotted half note. Any number of augmentation
 dots may follow the duration integer.

 Triplet and other irregular durations are represented using the same
 reciprocal logic. Three quarter triplets in the time of four quarters
 (a whole duration) are signified by the value `3` (i.e. \"third
 notes\"). Eighth-note quintuplets (5 in the time of 4) are represented
 by the value `10` (a half duration divided by 5). See
 [<span class="rep">recip</span>](recip.rep.html) for further details.

 The <span class="rep">kern</span> representation also allows for the encoding of
 acciaccaturas, non-canonical groupettos, and appoggiaturas. Depending
 on the expected analytic application, one way to handle these
 notational devices is to encode the notes according to the manner in
 which they are typically performed. Alternatively, since these notes
 are viewed as embellishment notes and hold potentially less analytic
 status, a special designation for these notes can be useful for
 certain types of studies.

 Acciaccaturas (grace notes) are visually represented as minature notes
 denoted by a slash mark through the stem. In <span class="rep">kern</span> these notes
 are treated as \"durationless\" notes and are designated by the
 lower-case letter `q`. Hence, the token `G#q` denotes a G\#3
 acciaccatura. Non-canonical groupettos are minature (non-cue) notes
 (typically in groups) whose stems do not contain a slash, and whose
 notated durations cause the total notated duration for the measure to
 exceed the prevailing meter. These groupetto notes are encoded as
 notes having their notated durations, but are also designated by the
 upper-case letter `Q`. Hence, a minature sixteenth-note middle C would
 be encoded as `16cQ`. Depending on the analytic task, these notes may
 be treated as equivalent to their notated durations, or they may be
 discarded. For example, the <span class="tool">timebase</span>
 command eliminates these notes. Note that data records containing
 acciaccaturas or groupettos notes must not include normal notes.

 In the case of appoggiaturas, <span class="rep">kern</span> requires that they be
 encoded as performed. An appropriate duration is assigned to the
 appoggiatura according to common performance practice. The duration of
 the subsequent note is reduced by a corresponding amount. The status
 of the two notes forming the appoggiatura is nevertheless marked. The
 appoggiatura itself is designated by the upper-case letter `P`,
 whereas the subsequent note (whose notated duration has been shorted)
 is designated by the lower-case letter `p`.

 Rest tokens are denoted by the lower-case letter `r` along with a
 numerical duration signifier. Rests may also have the attributes of
 stem-direction, beaming, slur, and phrase, but rests cannot be
 assigned articulation or ornamentation attributes. In many meters, a
 full measure of rest is indicated by a whole rest, even if the actual
 duration of the measure differs from four quarters. The actual
 duration of the rest is encoded, however, repetition of the `r` is
 used to indicate that the visual rendering of the rest is as a whole
 rest.

 Barlines are represented using the \"common system\" for barlines &mdash;
 see [**barlines**](barlines.rep.html). A barline is denoted by the
 occurrence of an equals sign (`=`) at the beginning of the token &mdash;
 followed by an optional measure number (integer) followed by an
 optional letter (single lower-case alphabetic character), followed by
 an optional pause marking (`;`). Double-barlines are represented by
 the occurrence of two or more equals signs (`==`) at the beginning of
 the token &mdash; followed by an optional pause marking (`;`).

 In representing any work, editorial interpretations are inevitable. It
 may be necessary to make explicit certain implicit information in a
 score (such as expanding abbreviations), or it may be necessary to
 estimate missing or unreadable information. Interpreting the voicings
 (that is, making explicit the degree of connectedness between
 successive pitches) is an important editorial function in <span class="rep">kern</span>
 representations. The <span class="rep">kern</span> representation provides several
 special-purpose signifiers to help make explicit various classes of
 editorial amendments, interpretations, or commentaries. Five types of
 editorial signifiers are made available: (1) *sic* (information is
 encoded literally, but is questionable) signified by `Y`; (2)
 *invisible symbol* (unprinted note, rest or barline, but logically
 implied) signified by `y`; (3) *editorial interpretation,* (a
 \"modest\" editorial act of interpretation &mdash; such as the
 interpretation of accidentals in *musica ficta*) signified by `x`; (4)
 *editorial intervention* (a \"significant\" editorial intervention)
 signified by `X`; (5) *footnote* (accompanying local or global comment
 provides a text commentary pertaining to a specified data token)
 signified by `?`.

## FILE TYPE ##

 It is recommended that files containing predominantly <span class="rep">kern</span> data
 should be given names with the distinguishing \`.krn\' extension.

## SIGNIFIERS ##

 The following table summarizes the <span class="rep">kern</span> mappings of signifiers
 and signifieds.

   ---------------- --------------------------------------------------------------------------
   0                breve duration
   1                whole duration
   2                half duration
   3                half-note triplet duration
   4                quarter duration
   6                quarter-note triplet duration
   8                eighth duration
   12               eighth-note triplet duration
   16               sixteenth duration
   24               sixteenth-note triplet duration
   32               thirty-second duration
   64               sixty-fourth duration
   128              one-hundred and twenty-eighth duration
   .                duration augmentation dot
                    (must follow a number)
   \-               flat sign-nus character)
   \- -             double-flat (two successiv-nus characters)
   a-g              absolute pitches above middle C
   A-G              absolute pitches below middle C
   \#               sharp
   \#\#             double sharp
   h                end glissando
   i                undefined; [user assignable](../guide.append1.html#RDF)
   j                undefined; [user assignable](../guide.append1.html#RDF)
   k                partial beam extending leftward
   kk               two partial beams extending leftward
   l                undefined; [user assignable](../guide.append1.html#RDF)
   m                mordent (semitone)
   n                natural sign
   o                harmonic
   p                designator of a note subsequent to an appoggiatura
   q                acciaccatura (grace note signifier; in lieu of duration)
   r                rest
   rr               any duration rest that is visually rendered as whole duration
   t                trill (semitone)
   u                down-bow
   v                up-bow
   w                inverted mordent (semitone)
   x                editorial interpretation; immediately preceding signifier is interpreted
   xx               editorial interpretation; entire data token is interpreted
   y                editorial mark: invisible symbol; unprinted note, rest, or
   z                sforzando
                    barline, but logically implied
   H                begin glissando
   I                generic articulation (unspecified articulation)
   J                end beam
   JJ               end two beams
   K                partial beam extending rightward
   KK               two partial beams extending rightward
   L                start beam
   LL               start two beams
   M                mordent (whole tone)
   N                undefined; [user assignable](../guide.append1.html#RDF)
   O                generic ornament (unspecified ornament)
   P                appoggiatura note designator
   Q                groupetto note designator
   R                signified ornament ends with a turn
   S                turn
   \$               Wagnerian turn
   T                trill (whole tone)
   U                con sordino; muted note
   V                undefined; [user assignable](../guide.append1.html#RDF)
   W                inverted mordent (whole tone)
   X                editorial intervention; immediately preceding signifier is an
                    editorial addition; see also **x**
   XX               editorial intervention; entire data token is an editorial addition
   Y                editorial mark: *sic* marking; information is encoded
   Z                undefined; [user assignable](../guide.append1.html#RDF)
                    literally, but is questionable
                    (space character) multiple-stop conjunction &mdash; indicates
                    joint note-tokens
   =                barline; == double barline
   \[               first note of a tie
   \]               last note of a tie
   \_               middle note(s) of a tie (underscore)
   (                slur start
   )                slur end
   {                phrase mark (start)
   }                phrase mark (end)
   ;                pause sign
   \'               staccato mark
   s                spiccato
   \"               pizzicato mark
   \`               staccatissimo mark; attacca mark; martellato mark, (heavy wedge)
   \~               tenuto mark
   \^               accent mark
   :                arpeggiation (of multi-note chord)
   \|               in barline &mdash; thin line designator
   !                in barline &mdash; thick line designator
   ,                breath mark
   /                up-stem
   \\               down-stem
   &                elision marker (for slurs or phrases)
   ?                editorial mark: immediately preceding signifier has accompanying
                    editorial footnote in an ensuing comment
   ??               editorial mark: entire preceding data token has accompanying
                    editorial footnote in an ensuing comment
   @ % + \| \< \>   undefined; [user assignable](../guide.append1.html#RDF)
   ---------------- --------------------------------------------------------------------------

 *Summary of <span class="rep">kern</span> Signifiers*

## CONTEXT DEPENDENCIES ##

 In general, signifiers in the <span class="rep">kern</span> representation are intended
 to be context independent. This means, for example, that the data
 tokens `{(16ff#/'` and `/ff#16'({` are equivalent. A few exceptions to
 this principle are necessary in order to maintain the meaning of
 multiple-character signifiers.

 Numbers encoding a duration must be contiguous. That is, a sixteenth
 note may be encoded as `16ff#` or `ff#16` but not as `1ff#6`.
 Augmentation dots (signified by the period) must follow immediately
 after the associated duration numerals. Thus `16.ff#` is acceptable,
 but not `16ff#.` or `.16ff#`. Sharps, flats, and naturals must follow
 immediately after the corresponding alphabetic pitch signifiers
 (`16ff#` but not `16#ff`). Signifiers that can be repeated must be
 contiguous. This include pp, PP, LL, JJ, XX, xx, ??, \#\#, &mdash;, and ..

 The elision marker (`&`) must immediately precede the associated slur
 (`&{ ... &}`) or slur (`&( ... &)`).

 Barlines follow a strict contextual syntax. Barlines must begin with
 one or more equals-signs, followed by an optional measure number,
 followed by an optional lower-case letter, followed by an optional
 pause signifier.

 In certain applications, it may be necessary to have a canonical
 ordering of the signifiers within <span class="rep">kern</span> data tokens. For
 example, when comparing two ostensibly identical <span class="rep">kern</span> files,
 trivial differences of signifier orderings will cause UNIX commands
 such as <span class="unix">cmp</span> and <span class="unix">diff</span> to declare the files to be \"different.\"
 In this case, it is useful to adopt a standard order of signifiers so
 that direct file comparisons may be made. Similarly, differences in
 signifier orderings can cause problems for pattern matching tasks. For
 example, in searching for a sixteenth-note F-sharp, it is convenient
 to define a simple regular expression &mdash; such as `16f#` rather than
 having to define a regular expression that handles all possible
 contextual orderings &mdash; such as `(16.*f#)|(f#.*16)`. For this reason,
 a canonical ordering of the <span class="rep">kern</span> signifiers is given in the
 following table.

   -------------------------------------- ----------------------------------- ----------------------------------
   **signified**                          **signifier(s)**                    **comments**
                                                                              
   1\. open phrase elision indicator      **&**                               must precede **{**
   2\. open phrase mark                   **{**                               
   3\. open slur elision indicator        **&**                               must precede **(**
   4\. open slur                          **(**                               
   5\. open tie                           **\[**                              
   6\. duration                           **0123456789**                      any combination; signifiers
                                                                              may be repeated
   7\. augmentation dot(s)                **.**                               signifier may be repeated
   8\. pitch or rest                      **abcdefgrABCDEFG**                 only one of; signifier may
                                                                              be repeated
   9\. accidental                         **-** or **\#** or **n**            **-** and **\#** may be repeated
   10\. glissando                         **h** or **H**                      
   11\. harmonic                          **o**                               
   12\. pause                             **;**                               
   13\. ornament                          **MmS\$TtWwR** or **O**             **O** precludes others; no
                                                                              repetition of a given signifier;
                                                                              must appear in order given
   14\. appoggiatura designator           **p** or **P**                      
   15\. acciaccatura designator           **q**                               
   16\. groupetto designator              **Q**                               
   17\. articulation                      **Usz \' \" \` \~ \^ :** or **I**   **I** precludes others; no
                                                                              repetition of a given signifier;
                                                                              must appear in order given
   18\. bowing                            **u** or **v**                      only one of
   19\. stem-direction                    **/** or **\\**                     only one of
   20\. beaming                           **L** or **J**                      signifiers may be repeated
   21\. partial beaming                   **k** or **K**                      signifiers may be repeated
   22\. user-defined marks                **ijl**                             one or more of;
                                          **NVZ**                             may be repeated but
                                          **@ % + \| \< \>**                  must be in order given
   23\. closed or continuing tie          **\]** or **\_**                    
   24\. closed slur elision indicator     **&**                               must precede **)**
   25\. closed slur                       **)**                               
   26\. closed phrase elision indicator   **&**                               must precede **}**
   27\. closed phrase mark                **}**                               
   28\. breath mark                       **,**                               
   29\. editorial marks                   **xx** or **XX**                    
   -------------------------------------- ----------------------------------- ----------------------------------

 *Canonical Ordering of Signifiers in <span class="rep">kern</span> Note Tokens*

 \
 \
 Note that the editorial signifiers `?, y,` and `Y`, as well as the
 single editorial signifiers `x` and `X` (as opposed to `xx` and `XX`)
 can appear anywhere in a data token, except as the first character.

## EXAMPLES ##

 A sample document is given below:

 ``

   ------------------------------------ --------------- ---------------
   !! J.S. Bach, Fugue 2 WTC Book I                     
   !! (3 parts), in c minor; BWV 847b                   
   \*\*kern                             \*\*kern        \*\*kern
   \*M4/4                               \*M4/4          \*M4/4
   \*MM72                               \*MM72          \*MM72
   \*k\[b-e-a-\]                        \*k\[b-e-a-\]   \*k\[b-e-a-\]
   \*c:                                 \*c:            \*c:
   =1                                   =1              =1
   1r                                   8r              1r
   .                                    16cc            .
   .                                    16bn            .
   .                                    8cc             .
   .                                    8g              .
   .                                    8a-             .
   .                                    16cc            .
   .                                    16b             .
   .                                    8cc             .
   .                                    8dd             .
   =2                                   =2              =2
   1r                                   8g              1r
   .                                    16cc            .
   .                                    16bn            .
   .                                    8cc             .
   .                                    8dd             .
   .                                    16f             .
   .                                    16g             .
   .                                    4a-             .
   .                                    16g             .
   .                                    16f             .
   =3                                   =3              =3
   1r                                   16e-            8r
   .                                    16cc            .
   .                                    16bn            16gg
   .                                    16an            16ff\#
   .                                    16g             8gg
   .                                    16fn            .
   .                                    16e-            8cc
   .                                    16d             .
   .                                    8c              8ee-
   .                                    8ee-            16gg
   .                                    .               16ff\#
   .                                    8dd             8gg
   .                                    8cc             8aan
   =4                                   =4              =4
   \*-                                  \*-             \*-
   ------------------------------------ --------------- ---------------

## PERTINENT COMMANDS ##

 The following Humdrum commands accept <span class="rep">kern</span> encoded data as
 inputs:

   -- ------------------------------------------- ----------------------------------------------------------
                                                  
      [<span class="tool">census</span> -k](../commands/census.html)    determine general characteristics of a <span class="rep">kern</span> file
      <span class="tool">cents</span>         translates <span class="rep">kern</span> to <span class="rep">cents</span>
      <span class="tool">deg</span>             translates <span class="rep">kern</span> to <span class="rep">deg</span>
      <span class="tool">degree</span>       translates <span class="rep">kern</span> to <span class="rep">degree</span>
      <span class="tool">freq</span>           translates <span class="rep">kern</span> to <span class="rep">freq</span>
      <span class="tool">hint</span>           calculate harmonic intervals from <span class="rep">kern</span> input
      <span class="tool">key</span>             estimate the key of a <span class="rep">kern</span> input
      <span class="tool">mint</span>           calculate melodic intervals from <span class="rep">kern</span> input
      <span class="tool">pc</span>               translates <span class="rep">kern</span> to <span class="rep">pc</span>
      <span class="tool">pitch</span>         translates <span class="rep">kern</span> to <span class="rep">pitch</span>
      <span class="tool">proof</span>         check for errors in <span class="rep">kern</span> encoded file
      <span class="tool">semits</span>       translate <span class="rep">kern</span> to numerical <span class="rep">semits</span>
      <span class="tool">solfa</span>         translate <span class="rep">kern</span> to numerical <span class="rep">solfa</span>
      <span class="tool">solfg</span>         translate <span class="rep">kern</span> to numerical <span class="rep">solfg</span>
      <span class="tool">synco</span>         measure degree of metric syncopation
      <span class="tool">timebase</span>   reformat <span class="rep">kern</span> score with constant timebase
      <span class="tool">tonh</span>           translate <span class="rep">kern</span> to numerical <span class="rep">Tonh</span>
      <span class="tool">trans</span>         transpose <span class="rep">kern</span> score
      <span class="tool">urrhythm</span>   characterize the rhythmic prototypes in a passage
      <span class="tool">vox</span>             determine active and inactive voices in a Humdrum file
                                                  
   -- ------------------------------------------- ----------------------------------------------------------

 The following Humdrum commands produce <span class="rep">kern</span> data as outputs:

   -- ------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                  
      <span class="tool">kern</span>           translates <span class="rep">cents</span>, <span class="rep">degree</span>, <span class="rep">freq</span>, <span class="rep">fret</span>, <span class="rep">MIDI</span>, <span class="rep">pitch</span>, <span class="rep">semits</span>, <span class="rep">solfg</span>, <span class="rep">specC</span>, and <span class="rep">Tonh</span> to <span class="rep">kern</span>
      <span class="tool">timebase</span>   reformat <span class="rep">kern</span> score with constant timebase
      <span class="tool">trans</span>         transpose <span class="rep">kern</span> score
   -- ------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

 The following tandem interpretations can be used in conjunction with
 <span class="rep">kern</span>:

   ------------------------ ------------
   clef                     `*clefG2`
   instrument               `*I`
   instrument class         `*IC`
   key signatures           `*k[f#c#]`
   key                      `*c#:`
   meter signatures         `*M6/8`
   tempo                    `*MM96.3`
   timebase                 `*tb32`
   transposing instrument   `*ITr`
   ------------------------ ------------

 *Tandem interpretations for <span class="rep">kern</span>*

## SEE ALSO ##

 ` barlines, **cents, **degree, **freq, **fret, **MIDI, **mint, **pc, **pitch, **recip, **semits, **solfg, **specC, **Tonh`

