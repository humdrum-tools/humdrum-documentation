---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Beat Prototypes
==========================================

### REPRESENTATION

> **\*\*URrhythm** \-- represent Johnson-Laird beat prototypes for a
> passage

### DESCRIPTION

> The **\*\*URrhythm** representation encodes beat \"prototypes\"
> (Ur-rhythms) evident in a musical passage. The representation is based
> on Johnson-Laird\'s theory of rhythmic prototypes (see
> [**REFERENCES**](#REFERENCES) below).
>
> The **\*\*URrhythm** representation characterizes each beat in a
> passage as belonging to one of three \"beat types\": *Note* (N),
> *Syncopation* (S), or *Other* (O). Only principle beats are
> characterized in this way. Hence, in 3/4 or 9/8 meters, three beats
> are characterized for each complete measure. Similarly, in 4/2 and
> 12/16, four beats are characterized for each complete measure.
> Johnson-Laird\'s rhythmic-prototype theory can be applied only to
> musical passages conforming to regular meters (simple and compound,
> duple, triple and quadruple).
>
> A \"Note\" (signified in the output by the letter \`N\') is defined as
> a beat that coincides with a note onset.
>
> A metric \"Syncopation\" (signified by the letter \`S\') is defined as
> arising when no note-onset happens on a beat whose metric position is
> more important than that of the most recent note onset. By way of
> example, imagine a measure in 4/4 meter containing a quarter-note,
> followed by a half-note, followed by a quarter-note. The third beat
> position does not coincide with a note onset. The most recent note
> onset prior to the third beat occurs on beat two. Since beat three is
> a more important metric position than beat two, beat three is deemed
> to be syncopated.
>
> Metrically syncopated beats can happen only after the first note
> onset; subsequent syncopated moments require another note onset (i.e.
> two syncopated moments can\'t occur in a row without some note onset
> intervening).
>
> An \"Other\" (signified by the letter \`O\') is any beat that is not a
> Note (N) or a syncopation (S).
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**URrhythm`
> data should be given names with the distinguishing \`.urr\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*URrhythm** mappings of
> signifiers and signifieds.
>
> >   ----- --------------------------------
> >   N     \"note\" beat prototype
> >   O     \"other\" beat prototype
> >   S     \"syncopation\" beat prototype
> >   .     null token
> >   =     barline; == double barline
> >   0-9   measure numbers
> >   ----- --------------------------------
> >
> > *Summary of **\*\*URrhythm** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   --------------
> >   \*\*URrhythm
> >   \*M4/4
> >   \*tb8
> >   N
> >   .
> >   N
> >   .
> >   S
> >   .
> >   =1
> >   N
> >   .
> >   O
> >   .
> >   S
> >   .
> >   O
> >   .
> >   =2
> >   S
> >   .
> >   S
> >   .
> >   O
> >   .
> >   N
> >   .
> >   \*-
> >   --------------
> >
### PERTINENT COMMANDS

> The following Humdrum command produces **\*\*URrhythm** data as
> output:
>
> >   -- ------------------------------------------- ---------------------------------------------------
> >      <span class="tool">urrhythm</span>   characterize the rhythmic prototypes in a passage
> >   -- ------------------------------------------- ---------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*URrhythm**:
>
> >   ------------------ -----------
> >   meter signatures   `*M6/8`
> >   tempo              `*MM96.3`
> >   timebase           `*tb32`
> >   ------------------ -----------
> >
> > *Tandem interpretations for **\*\*URrhythm***

### SEE ALSO

> ` barlines, **metpos, metpos, urrhythm, **synco, synco, **timebase`

[]{#REFERENCES}

### REFERENCES

> Philip Johnson-Laird, \"Rhythm and meter: A theory at the
> computational level,\" *Psychomusicology,* Vol. 10 (1991) pp. 88-106.
>
> Jasba Simpson & David Huron, \"The perception of rhythmic similarity:
> A test of a modified version of Johnson-Laird\'s theory,\" *Canadian
> Acoustics,* Vol. 21, No. 3 (1993) pp. 89-90.

