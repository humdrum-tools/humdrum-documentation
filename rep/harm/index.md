---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Humdrum Representation for Functional Harmony
=============================================

### REPRESENTATION

> **\*\*harm** \-- representation for Western functional harmony

### DESCRIPTION

> The **\*\*harm** representation provides one method for encoding
> Western functional harmony. In the **\*\*harm** representation, chords
> are normally identified within a key context \-- such as G minor, or
> A-flat major. Keys are normally indicated using the \"key\" tandem
> interpretation. If no key indication is provided, the harmony
> representation is deemed both key-independent and mode-independent
> (neither major or minor). (Key-independent representations may be
> useful for comparing harmonic patterns between groups of works in
> varying keys.) Changes of key can be defined at any point in a
> **\*\*harm** representation. The defined key context remains in effect
> until the occurrence of another key-interpretation or until the key
> context is specifically \"undefined\": the reserved key-interpretation
> `*?:` can be used to \"undefine\" the key context.
>
> Chords are labelled according to four attributes: (1) chord root, (2)
> chord type, (3) inversion, and (4) chord alterations.
>
> Chord roots are identified according to the diatonic scale degree.
> Scale degrees are indicated through the use of Roman numerals: I for
> tonic, II for supertonic, III for mediant, etc. The specific roots
> will vary according to whether the key is major or minor. For example,
> in the key of C major, the III chord will have E as the root, whereas
> in the key of C minor, the III chord will have E-flat as the root. By
> definition, the scale degrees of the minor key are assumed to
> correspond to the pitches of the *harmonic minor* scale. Notice that
> without a major or minor mode distinction, the roots of the *III* and
> *VI* chords are ambiguous \-- they simply denote mediant and
> submediant chords respectively.
>
> Of course musical passages may contain chords having altered roots.
> Raising or lowering the root is indicated by prepending a minus sign
> (-) or octothorpe character (\#) respectively. For example, in the
> major key, a chromatic mediant chord based on the lowered sub-mediant
> would be encoded as *-VI.* In a notated score, the lowering of the
> root may be achieved by adding a flat or by adding a natural \--
> depending upon the prevailing key; however, the specific accidental
> used to lower the root is irrelevant to **\*\*harm.** For example, in
> the key of C minor, a minor chord having E-natural as a root would be
> encoded as *\#iii.*
>
> In the case of triads, there are four possible chord types: major,
> minor, diminished, and augmented triads. Upper- and lower-case
> numerals are used to indicate whether the third of the chord is major
> or minor. For example, the supertonic chord in a major key would
> normally be indicated as \"ii\". In short, major and augmented triads
> are indicated through a upper-case Roman numeral, whereas minor and
> diminished triads are indicated through a lower-case Roman numeral.
> Diminished chords are indicated by the explicit addition of the small
> letter \`o\' \-- for example, the diminished triad with a root on the
> leading tone is denoted as \"viio.\" Augmented chords are indicated by
> the explicit addition of the plus sign (+) \-- e.g. \"III+\" for the
> augmented triad on the mediant degree (common in the minor key), or
> \"V+\" for the augmented altered dominant chord.
>
> In **\*\*harm,** inversions of chords are indicated using lower-case
> alphabetic characters: first inversion - \"b\"; second inversion
> \"c\"; third inversion - \"d\"; etc. Root position is implied, so in
> the absence of a letter designation (a,b,c \...) the token *IV* means
> a IV chord in root position. Figured-bass notation is not used in
> **\*\*harm** because it proves inconsistent in the spelling of
> extended tertian chords. In the case of a fully spelled 13th chord in
> root position, for example, the figured bass would be 1-2-3-4-5-6-7.
> However, this same figured bass would apply to all inversions of the
> 13th chord, and so it fails to distinguish any of the possible
> inversions. In **\*\*harm,** the first inversion of a 13th chord is
> signified by the letter \"b\" whereas the hypothetical 6th inversion
> of a 13th chord is signified by the letter \"f\".
>
> Seventh chords are indicated by the addition of the number \"7\" \--
> as for example in the dominant seventh chord: V7. Ninth, eleventh, and
> thirteenth chords are similarly represented: e.g. V9, V11, V13. Such
> extended tertian chords can be encoded in more detail by indicating
> whether the interval is major or minor \-- signified by use of the
> upper- or lower-case letter \"M.\" For example, a dominant minor ninth
> chord would be represented by \"Vm9\" whereas a dominant major
> thirteenth chord would be represented by \"VM13\". When the interval
> is not explicitly indicated as major or minor, it is assumed that the
> actual spelling is in accordance with the prevailing key signature.
> For example, V9 is equivalent to Vm9 when the prevailing key is minor.
>
> If it is necessary to specify more precisely the actual intervals
> involved in an extended tertian chord, all intervals may be included:
> Vm9P11m13. When more than one interval is given, the intervals must be
> specified in ascending order and must include a major or minor
> designation. Where intervals are perfect, the upper-case letter \"P\"
> is used. Where intervals are augmented, the upper-case letter \"A\" is
> used. Where intervals are diminished, the upper-case letter \"D\" may
> be used. (It is common practice to represent diminished intervals
> using the lower-case letter d; in **\*\*harm,** however, this would be
> indistinguishable from the designation for third inversion.) Thus the
> half-diminished seventh chord would normally be represented as viiom7,
> whereas the full-diminished seventh chord would be represented as
> viioD7. Doubly-augmented and doubly-diminished intervals can use
> \"AA\" and \"DD\" respectively.
>
> Of course it is rare that a musical passage or work remains within a
> single key. The use of secondary dominants and modulations requires
> that some means be provided for indicating shifting key areas. When
> shifts of key are sanctioned, these should normally be encoded using
> an \"X of Y\" approach \-- e.g. V of V. In the **\*\*harm**
> representation, such shifts are indicated via the slash character (/).
> For example, a dominant seventh chord on the supertonic degree can be
> represented as V7/ii. If a passage modulates to the subdominant and
> remains there for some time, chord sequences can be identified as /IV
> \-- e.g. V7/IV, I/IV, vi/IV, ii/IV, V/II/IV, II/IV, etc. (Notice the
> use of I/IV rather than IV; in long sequences of chords it is
> preferable to encode successive chords within the new key area.) There
> is no limit to the number of key-area shifts specified in a harmonic
> token: e.g. V/V/V/V/V/I is syntactically legal.
>
> In traditional harmony, a variety of special chords may be encountered
> \-- such as the Neopolitan chord, and the \"ethnic sixth\" chords:
> Italian, French, and German. The Neopolitan chord is a major triad
> whose root is the lowered supertonic; it is represented in
> **\*\*harm** by the reserved upper-case letter \"N\". The Neopolitan
> chord normally appears as a first inversion chord, so the Neopolitan
> sixth chord would be represented as \"Nb\". Notice that the Neopolitan
> sixth chord is equivalent to \"-IIb\". The Italian, French, and German
> augmented sixth chords are represented as \"Lt\", \"Fr\", and \"Gn\"
> respectively. In addition, the \"Tristan chord\" (A4m7m10 above bass
> pitch) has a special designation as \"Tr\".
>
> Occasionally, chords may appear using *enharmonically* equivalent
> spelling. Such chords can be encoded by using the enharmonic prefix of
> the tilde character (\~). For example, if a Neopolitan sixth chord is
> spelled using the raised tonic rather than the lowered supertonic, the
> chord may be encoded: \~Nb.
>
> In other cases, it may be entirely impossible to identify a chord in
> terms of traditional Western functional harmony. Such chords may be
> encoded by specifying a set of intervals above the bass pitch \-- with
> the question-mark prefix. For example, in the key of A major, the
> chord C4, E4, F\#4, G\#4, D5 can be represented as: ?-IIIM3A4A5M9.
> Notice that this representation reverts to a descriptive approach and
> so is no longer truly \"functional.\"
>
> Chord identifications may be characterized as (1) explicit, (2)
> implied, or (3) alternate. Explicit harmonies occur when most or all
> of the chordal tones are present. In some cases (such as melodic
> lines) the harmonies may be implied rather than explicit. Implicit
> harmonies are indicated by placing the chord signfied in parentheses
> (). In other circumstances, there will be more than one way of
> labelling a given harmony. Alternate harmonies are indicated through
> the use of square brackets \[\]. All other indications are assumed to
> be explicit. In the case of bi-tonal works, the user may elect to pair
> explicit and alternate encodings, e.g. iii\[v/vi\], or make use of two
> independent **\*\*harm** spines. Two or more **\*\*harm** spines may
> be necessary in the case of polytonal works.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**harm` data
> should be given names with the distinguishing \`.hrm\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*harm** mappings of signifiers
> and signifieds.
>
> >   -------- -------------------------------------------
> >   \-       lowered root
> >   \#       raised root
> >   \+       augmented triad
> >   o        diminished triad
> >   I        chord degree (major)
> >   i        chord degree (minor)
> >   V        chord degree (major)
> >   v        chord degree (minor)
> >   b        first inversion chord
> >   c        second inversion chord
> >   d        third inversion chord
> >   e        fourth inversion chord (ninth chords)
> >   f        fifth inversion chord (eleventh chords)
> >   g        sixth inversion chord (thirteenth chords)
> >   r        rest
> >   7        added seventh
> >   9        added ninth
> >   11       added eleventh
> >   13       added thirteenth
> >   .        null token
> >   /        secondary function, e.g. V \"of\" vi
> >   m        minor interval
> >   M        major interval
> >   P        perfect interval
> >   A        augmented interval
> >   D        diminished interval
> >   AA       doubly-augmented interval
> >   DD       doubly-diminished interval
> >   Nb       Neopolitan sixth chord
> >   N        Neopolitan chord in \"root position\"
> >   Lt       Italian augmented sixth chord
> >   Fr       French augmented sixth chord
> >   Gn       German augmented sixth chord
> >   Tr       Tristan chord
> >   \~       enharmonically-spelled chord
> >   ( )      implicit harmony
> >   \[ \]    alternative functional harmony label
> >   viiom7   half-diminished seventh chord
> >   viioD7   full-diminished seventh chord
> >   -------- -------------------------------------------
> >
> > *Summary of **\*\*harm** Signifiers*

### EXAMPLES

> A sample document is given below:\
> \
>
> > ``
> >
> >   ----------------
> >   \*\*harm
> >   \*C:
> >   !! An example.
> >   =1
> >   I
> >   IVb
> >   .
> >   V7/V
> >   =2
> >   I/V
> >   vib/V\[iiib\]
> >   ii/V\[vi\]
> >   viioD7/V
> >   =3
> >   V\[I/V\]
> >   .
> >   IV
> >   Nb
> >   V7d
> >   =4
> >   !! Minore
> >   \*c:
> >   i
> >   ?-IIIM3A4A5M9
> >   \#iiiob
> >   IV
> >   \*?:
> >   Lt
> >   =5
> >   ic
> >   Vm9
> >   I
> >   ==
> >   \*-
> >   ----------------
> >
### PERTINENT COMMANDS

> Currently, no special-purpose Humdrum commands produce **\*\*harm** as
> output, or process **\*\*harm** encoded data input.

### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*harm**:
>
> >   ------------------ ------------
> >   MIDI channel       `*Ch1`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*harm***

### SEE ALSO

> ` barlines, **embel, **kern`

