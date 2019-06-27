---
author: Parag Chordia
creation-date: 'Fri May 6 11:25:11 EDT 2005'
description: |
    Documentation for the \*\*bhatk Humdrum representaton; software for
    music research.
keywords: |
    music research,semitone pitch,software,theory,analysis,systematic
    musicology,computer representation,\*\*bhatk
revision-date: 'Fri May 6 11:25:19 EDT 2005'
robots: all
title: 'Humdrum Toolkit Representation Reference - Bhatkhande Notation'
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

\

Humdrum Representation for Bhatkhande Notation
==============================================

### REPRESENTATION

> **\*\*bhatk** \-- representation for Bhatkhande notation

### DESCRIPTION

> The **\*\*bhatk** scheme can be used to represent the basic
> information of the notation system created by Vishnu Narayanan
> Bhatkhande used to transcribe Hindustani music. The **\*\*bhatk**
> representation allows a monophonic encoding of the various notes
> including performance gestures akin to ornaments. **\*\*bhatk** is
> primarily designed to facilitate analytic applications rather than
> music printing or sound generation. Other Humdrum representations
> should be used for these latter purposes. Since one main purpose of
> **\*\*bhatk** is to allow research tasks concerning scribal practices
> in the manuscripts, the layout and the orthographic information of the
> manuscripts are represented rather exactly. Non-notational information
> as clef setting and position of the music within the manuscripts
> (folio) and on the page (line number) is represented using tandem
> interpretations and local comments.
>
> These types of data tokens are distinguished in **\*\*bhatk**: neumes
> and flat or natural icons.
>
> Neumes can encode a variety of attributes including neume-type,
> accidental and liquescence-type.
>
> Pitches are not directly encoded in the **\*\*bhatk** representation.
> Instead, a parallel [**\*\*kern**](kern.rep.html) spine is expected to
> encode the corresponding pitches, as well as a parallel spine for the
> text.
>
> A wide variety of neume types can be encoded using **\*\*bhatk**. The
> following table identifies these individual types.
>
> Scale degrees:
>
> >   --- -----------
> >   S   Sa
> >   r   komal Re
> >   R   Re
> >   g   komal Ga
> >   G   Ga
> >   M   Ma
> >   m   tivra Ma
> >   P   Pa
> >   d   komal Dha
> >   D   Dha
> >   n   komal Ni
> >   N   Ni
> >   --- -----------
> >
> Octaves:
>
> The first element of a ligature is represented by the signifier
> itself, the following elements by using the null token.
>
> >   ---- ---------------
> >   ,    lower octave
> >   \'   middle octave
> >   \"   upper octave
> >   ---- ---------------
> >
> By way of illustration, an *epiphonus* can be represented by dlP, a
> *cepahlicus* by dlC.
>
> At some places the manuscripts contain very special groupings of
> neumes not found in the common classification of neumes. These
> neume-groups are encoded using open and closed parentheses to denote
> the beginning and end of the group.
>
> The only accidentals in Hildegard\'s notation are the flat (b
> *rotundum*) and the natural (b *quadratum*) sign. The **\*\*bhatk**
> representation makes a distinction between two types of flat and
> natural signifiers: An orthographic and a semantic flat or natural.
> Orthographic accidentals frequently appear well before the notes they
> modify. For example, an accidental may appear two or more neumes prior
> to the modified note. The notated accidental icon (orthographic
> accidental) is signified by the \"at\" sign \"@\" for a flat and by
> \"%\" for a natural. In addition, it is useful to identify specific
> notes that are modified by the accidental. These (semantic)
> accidentals are represented by the ampersand \"&\" for a flat and by
> the caret \"\^\" for a natural and placed immediately after the neume
> signifier. In summary, accidentals are represented both by their
> physical location in the manuscript and also by the modified note. In
> the former case, the accidental is signified as a separate token
> (encoded on a separate data record). In the latter case, the
> accidental is signified as a modifier of a neume token.
>
> In representing any work, editorial interpretations are inevitable. It
> may be necessary to make explicit certain implicit information in a
> manuscript (such as expanding abbreviations), or it may be necessary
> to estimate missing or unreadable information. The **\*\*bhatk**
> representation provides several special-purpose signifiers to help
> make explicit various classes of editorial amendments,
> interpretations, or commentaries. Five types of editorial signifiers
> are made available: (1) *sic* (information is encoded literally, but
> is questionable) signified by Y; (2) invisible symbol (unwritten note
> etc., but logically implied) signified by y; (3) editorial
> interpretation, (a \"modest\" editorial act of interpretation \-- such
> as the interpretation of accidentals) is signified by x; (4) editorial
> intervention (a \"significant\" editorial intervention) signified by
> X; (5) footnote (accompanying local or global comment provides a text
> commentary pertaining to a specified data token) signified by ?.

### FILE TYPE

> It is recommended that files containing predominantly `**bhatk` data
> should be given names with the distinguishing \`.hgd\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*bhatk** mappings of
> signifiers and signifieds.
>
> > S

*Sa*

r

*komal Re*

R

*Re*

g

*komal Ga*

G

*Ga*

M

*Ma*

m

*tivra Ma*

P

*Pa*

d

*komal Dha*

D

*Dha*

n

*komal Ni*

N

*Ni*

X

*Sam* (beginning of rhythmic cycle)

O

*Khali* (mid-point of rhythmic cycle)

\|

*Vibha*g indicator (rhythmic cycle separator)

0-9.

reciprocal duration indicators (see \*\*recip)

(

start of note group

)

end of note group

{

start of phrase

}

end of phrase

\[

start of specified *meend* (glissando)

\]

end of specified *meend* (glissando)

\[\^

start of rising *meend* (glissando)

\[v

start of falling *meend* (glissando)

\<

start of *kan*

\>

end of *kan*

\~

*andolan* (vibrato)

\%

*khatka* (turn-like ornament)

w

*murki* (mordent-like ornament)

\-

rest

\+

accent

z

editorial interpretation; entire data token is interpreted

Z

editorial intervention; immediately preceding signifier is an editorial
addition

ZZ

editorial intervention; entire data token is an editorial addition

y

editorial mark; invisible symbol; unwritten note, but logically implied

yy

editorial mark; entire data token is implied

Y

editorial mark: sic marking; information is encoded literally, but is
questionable

YY

editorial mark: sic marking; entire data token is present in the
original but questionable

?

editorial mark: immediately preceding signifier has accompanying
editorial footnote in an ensuing comment

??

editorial mark: entire preceding data token has accompanying editorial
footnote in an ensuing comment

*Summary of **\*\*bhatk** Signifiers*

> Order of signifiers:
>
> 1.  open phrase
> 2.  note-group
> 3.  accent
> 4.  meend
> 5.  andalan
> 6.  duration
> 7.  augmentation dot(s)
> 8.  pitch or rest
> 9.  octave
> 10. 11. 12. 13. close phrase

### EXAMPLES

> The following sample document shows a [**\*\*kern**](kern.rep.html)
> spine with corresponding `**bhatk` data. In addition, a
> [**\*\*silbe**](silbe.rep.html) spine has been used to encode the
> text.
>
> > ``
> >
> >   ---------- ------------- -----------
> >   \*\*kern   \*\*bhatk     \*\*silbe
> >   \*         \*mode4       \*LLatin
> >   !          !154,7        !
> >   \*         \*clefC5,F3   \*
> >   E          R             O
> >   D          .             .
> >   E          .             .
> >   G          C             splen-
> >   E          .             .
> >   D          P             .
> >   E          .             .
> >   F          M3            -di-
> >   D          .             .
> >   C          .             .
> >   E          v             -dis-
> >   AA         S3            -si-
> >   BB         .             .
> >   C          .             .
> >   BB         C             -ma
> >   AA         .             .
> >   E          C             gem-
> >   D          .             .
> >   D          dlP           .
> >   E          .             .
> >   E          v             -ma
> >   D          v             &
> >   E          p             se-
> >   F          Q             .
> >   G          .             .
> >   F          p             .
> >   E          p             .
> >   D          p             .
> >   D          P             .
> >   A          .             .
> >   A          I6            .
> >   G          .             .
> >   F          .             .
> >   E          .             .
> >   D          .             .
> >   E          .             .
> >   D          p             -re-
> >   E          p             .
> >   F          Q             .
> >   G          .             .
> >   F          p             .
> >   E          p             .
> >   D          p             .
> >   D          P             .
> >   A          .             .
> >   A          M4            .
> >   G          .             .
> >   F          .             .
> >   E          .             .
> >   D          P             -num
> >   E          .             .
> >   E          P2            de-
> >   F          .             .
> >   E          .             .
> >   D          .             .
> >   G          M3            .
> >   F          .             .
> >   E          .             .
> >   D          P             -cus
> >   E          .             .
> >   G          p             so-
> >   G          p             .??
> >   !\[-R\]    !\[-R\]       !\[-R\]
> >   A          p             .
> >   c          M3            .
> >   B          .             .
> >   A          .             .
> >   !          !154,8        !
> >   \*         \*clefC4,F2   \*
> >   A          M4            .
> >   G          .             .
> >   F          .             .
> >   E          .             .
> >   D          p             .
> >   E          p             .
> >   F          Q             .
> >   G          .             .
> >   F          C             -lis
> >   E          .             .
> >   D          P3            qui
> >   A          .             .
> >   G          .             .
> >   F          .             .
> >   E          .             .
> >   F          M3            ti-
> >   E          .             .
> >   D          .             .
> >   E          v             -bi
> >   D          p             in-
> >   E          p             .
> >   F          Q             .
> >   G          .             .
> >   F          p             .
> >   E          p             .
> >   D          p             .
> >   D          P             -fu-
> >   A          .             .
> >   A          M4            .
> >   G          .             .
> >   F          .             .
> >   E          .             .
> >   D          p             -sus
> >   E          p             .
> >   F          Q             .
> >   G          .             .
> >   F          p             .
> >   E          p             .
> >   D          P             est
> >   E          .             .
> >   \*         \*clefF3      \*
> >   E?         M3            fons
> >   !D         !Erasure      !
> >   D?         .             .
> >   !C         !Erasure      !
> >   BB         .             .
> >   D          P             .
> >   E          .             .
> >   \*         \*clefC4,F2   \*
> >   E          U             sa-
> >   B          .             .
> >   A          .             .
> >   B          .             .
> >   e          M4            .
> >   d          .             .
> >   c          .             .
> >   B          .             .
> >   c          C             .
> >   B          .             .
> >   c          M4            -li-
> >   B          .             .
> >   A          .             .
> >   G          .             .
> >   G          o             .??
> >   !\[-R\]    !\[-R\]       !\[-R\]
> >   F          p             .
> >   E          p             .
> >   D?         P             .
> >   !E         !Erasure      !
> >   E?         .             -ens
> >   !F         !Erasure      !
> >   \*-        \*-           \*-
> >   ---------- ------------- -----------
> >
### PERTINENT COMMANDS

> There are currently no Humdrum commands that directly process
> **\*\*bhatk** encoded data.

### TANDEM INTERPRETATIONS

> The following tandem interpretation can be used in conjunction with
> **\*\*bhatk**:
>
> >   ------------------ ----------
> >   raag               `*raag:`
> >   instrument         `*I`
> >   instrument class   `*IC`
> >   ------------------ ----------
> >
> > Immediately following the colon is the name of the rag. For
> > instrumentation and instrument-class codes see [Appendix
> > II](../guide.append2.html) of the [*Humdrum User
> > Guide.*](../guide.toc.html)
> >
> > *Tandem interpretations for **\*\*bhatk***

### SEE ALSO

> ` **kern, kern, **MIDI, midi, **pitch, **semits, **solfg, **Tonh,`

### AUTHOR

> Parag Chordia.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide04.html#Semitones)
-   [**Index to Humdrum Representations**](../representations.toc.html)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\

Figure 2: The beginning of Hildegard\'s antiphon \"O splendidissima
gemma\" The encoding includes the marking of erasures in D as well as
the differences found in the parallel source R.
