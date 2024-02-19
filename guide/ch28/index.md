---
sidebar:	toc
chapternav:	guide
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	18 Feb 2024
verovio:	"true"
hnp:		"true"
vim:		ft=html
permalink:	/guide/ch28/index.html
---

<div class="chapter-heading">
<h1> Chapter 28 </h1>
<h1> Dynamics </h1>
</div>

------------------------------------------------------------------------


In this chapter we introduce three pre-defined representations
pertaining to musical dynamics. One representation (<span
class="rep">dyn</span>) represents dynamic markings as they appear
visually in a printed score. A second representation (<span
class="rep">dynam</span>) represents a rationalized interpretation
of the notated dynamic markings in a score. A third scheme (<span
class="rep">dB</span>) represents continuous dynamic levels in
decibels.



## The *\*\*dynam* and *\*\*dyn* Representations ##



Musical scores commonly contain dynamic markings that include both
written text (such as "*subito forte*" and "*dimin.*") and graphic
representations (such as hairpin or wedge-shaped crescendo markings).
Unfortunately, traditional dynamic markings are often confusing or
ambiguous. Consider, for example, the following sequence of dynamic
markings from a Beethoven piano sonata:

```text
pp cresc.  cresc.  p cresc.  pp
```

What are we to make of these markings? Does the music gradually
*crescendo* from *pianissimo* to *piano*? Does this initial *crescendo*
occur in two distinct phases or does the repetition of the term
"*cresc.*" merely indicate a continuation of a single *crescendo*?
Does this *crescendo* move to a dynamic level above *piano* and
abruptly reduce to *piano*? Does the final *crescendo* begin at a
*piano* level and get louder &mdash; followed by a relatively abrupt
reduction to *pianissimo*? Or does the final *crescendo* begin below
*piano* and gradually reach *pianissimo*? Such ambiguities are
rampant in printed musical scores. We can examine the accompanying
musical context to help us resolve questions of interpretation, but
computers are unable to bring such sophistication to the task.

Humdrum provides two pre-defined representations for score-related
dynamic markings. One representation (<span class="rep">dyn</span>)
attempts to represent the dynamic markings as they appear in a
visual rendering of a score. That is, <span class="rep">dyn</span>
represents the visual or orthographic information. A second
representation (<span class="rep">dynam</span>) provides a
"rationalized" or canonical means for interpreting score-related
dynamic indications. Users will want to choose one or the other
representation depending on the analytic task being pursued.

In the first instance, <span class="rep">dynam</span> uses standardized
data tokens to represent particular dynamic levels. Table 28.1 shows
the standard representations for <span class="rep">dynam</span>.
For example, the token `pp` represents the concept of pianissimo,
even if the visual rendering may be *pp* or *pianissimo* or *pianiss.*,
etc.

**Table 28.1.** *Signifers in <span class="rep">dynam</span> spines.*

{% include_relative guide-28-table-01.txt %}

In the case of crescendo and diminuendo markings, <span
class="rep">dynam</span> requires an explicit interpretation of
where the dynamic marking begins and ends. The beginning of a
crescendo is indicated by the less-than sign (`<`). The end of the
crescendo is marked by the open square bracket (`]`). Between the
beginning and end points, *continuation signifiers* are encoded.
For crescendos, continuations are indicated using the open parenthesis;
for diminuendos, continuations are indicated using the closed
parenthesis.

In the <span class="rep">dynam</span> representation, no distinction
is made for various ways a composer might indicate a crescendo or
a diminuendo. For example, it doesn't matter whether a diminuendo
is notated as *dim.*, *dimin.*, *diminuendo*, *decres.*, *decresc.*,
*decresendo*, *calando*, *morendo*, *se perdant*, *cédéz*, *gradually
quieter*, or via a hairpin or wedge graphic diminuendo. All are
represented by `>` &hellip; `)` &hellip; `]`.

The <span class="rep">dynam</span> representation also requires
explicit resolution of possibly ambiguous dynamic markings. In many
cases, the user will be required to add dynamic markings that are
only implicit in the original score. Interpreted dynamics are
followed by the upper-case letter `X`, so an interpreted diminuendo
will be represented by `>X` &hellip; `)X` &hellip; `]X`.

Often published editions will include dynamic markings that have
been introduced by the editor. In scholarly publications these
editorialisms are indicated in parentheses or square brackets. Such
interpreted dynamics are followed by the lower-case letter `x`.

The use of the <span class="rep">dynam</span> representation is
illustrated in Example&nbsp;28.1.

<center>
<b>Example 28.1:</b> <i>Dynamics encoding.</i>
</center>

{% include verovio.html
	humdrum-height="100%"
	humdrum-position="top"
	notation-margin-top="-60px"
	pageWidth="1000"
	scale="65"
	source="guide-28-example-01"
	tab-size="16"
%}
<script type="text/x-humdrum" id="guide-28-example-01">
{% include_relative guide-28-example-01.txt %}
</script>

The <span class="rep">dynam</span> encoding is interpreted as
follows: the level begins *piano* with a crescendo beginning prior
to the second chord; the crescendo continues until after the third
chord and then the level abruptly drops to *pianissimo* with the
onset of the fourth chord.  Notice that dynamic markings are "read
from left-to-right"; that is, we presume that the crescendo begins
*piano* and that the *pianissimo* is an abrupt reduction in level,
rather than presuming that the crescendo builds to the *pianissimo*
level and so there is an abrupt reduction in level after the initial
*piano* just before the cresendo begins. In short, a crescendo (or
diminuendo) marking is always assumed to increase (or decrease) the
dynamic level from the preceding indication.

If appropriate, a user can render implicit dynamic shading explicitly.
For example, a user might choose to re-code Example&nbsp;28.1 as either

```humdrum
**kern		**dynam
*staff1		*staff1
=		=
2c 2e 2g 2cc	p
2G 2d 2g 2b		<
	=	=
2A 2c 2e 2a		[
.		>X
.		]X
2E 2B 2e 2g		pp
=		=
*-		*-
```

or

```humdrum

**kern		**dynam
*staff1		*staff1
=		=
2c 2e 2g 2cc	p
.		pppX
2G 2d 2g 2b		<
=		=
2A 2c 2e 2a		(
.		[
2E 2B 2e 2g		pp
=		=
*-	*	-
```

Notice that null data records may be inserted as necessary to clarify
the moment of dynamic change. The <span class="rep">dynam</span>
representation makes use of the common system for representing
barlines.



## The *\*\*dyn* Representation ##



The <span class="rep">dyn</span> representation provides a method
for representing the orthographic appearance of notated dynamic
markings. Unlike <span class="rep">dynam</span>, the <span
class="rep">dyn</span> representation distinguishes between different
ways of identifying a dynamic marking. For example, *dim.*, *dimin.*,
*diminuendo*, *decres.*, *decresc.*, *decresendo*, are all regarded
as different from each other. Composers often have idiosyncratic
ways of writing dynamic markings. As a result, the specific terms
used may have repercussions, for example, in resolving cases of
disputed composership.  In some circumstances, it is thought that
individual composers distinguish the terms in their own minds. For
example, a composer might use *decrescendo* as a general term to
indicate a temporary descending dynamic shape, whereas *diminuendo*
might have a more specific meaning of a 'dying away' or 'fade-out'
gesture.

In the <span class="rep">dyn</span> representation the horizontal
position of dynamic markings is indicated in quarter-durations with
respect to the previous barline. This number appears prior to the
dynamic signifier, hence `4.1f` means a *forte* (e.g., ***f***)
marking just after the horizontal position of the fourth quarter
in the measure. The vertical position of dynamic markings is indicated
with respect to the middle line of a corresponding staff; this
number appears in curly braces.

{% include_relative guide-28-table-signifiers.txt %}


By way of illustration, consider Example&nbsp;28.2.

**Example 28.2:** Arnold Schoenberg, *Three Piano Pieces, Op. 11, No.
2*, excerpt.

{% include verovio.html
	humdrum-height="100%"
	humdrum-position="top"
	notation-margin-top="-40px"
	pageWidth="1400"
	spacingSystem="0"
	scale="40"
	spacingLinear="0.30"
	source="guide-28-example-02"
	tab-size="20"
%}
<script type="text/x-humdrum" id="guide-28-example-02">
{% include_relative guide-28-example-02.txt %}
</script>

The `*staff1/2` tandem interpretation indicates that the dynamic
markings pertain to both staffs 1 and 2, however all vertical <span
class="rep">dyn</span> distance measures are encoded with respect
to staff 1. (Reversing the numerical order &mdash; `*staff2/1`
&mdash; would cause all distances to be measured with respect to
staff 2.) The token `0.8f{-4}` means that the signifier *f* is
located 0.8 quarter-duration spaces from the beginning of the bar
and 4 staff-line steps below the center line of staff 1. The token
`1.6>{-4.3}/1.5/` means that a wedge diminuendo marking begins 1.6
quarter-durations from the beginning of the bar; the size of the
opening of the wedge is 1.5 staff-line steps wide and the center
of the opening is located 4.3 staff-line steps below the center
line for staff 1. The token `2.4]{-4.3}` means that a wedge diminuendo
marking ends 2.4 quarter-durations from the beginning of the bar;
the tip of the wedge converges at a point 4.3 staff-line steps below
the center line for staff 1. Changing this value allows tilted
wedges to be represented.



## The *\*\*dB* Representation ##



The <span class="rep">dB</span> representation provides a way to
represent intensity in decibels. Decibels can be expressed in
relative or absolute terms. Absolute values are represented according
to sound pressure level (SPL). An absolute representation is indicated
by the presence of the `*SPL` tandem interpretation. Zero decibels
(SPL) corresponds roughly to the quietest sound detectable under
ideal circumstances. A quiet room is roughly 40 dB in intensity; a
conversation produces roughly 70 dB, a vacuum cleaner produces
roughly 80 dB, a noisy factory produces roughly 90 dB, and a passing
loud motorcycle generates roughly 100 dB (SPL).

The <span class="rep">dB</span> representation provides a convenient
way to represent sound intensity in a numerical form. A numerical
representation allows us to carry out a variety of calculations and
comparisons.


## The *db* Command ##

The <span class="tool">db</span> command translates dynamic markings
to dynamic level expressed in decibels; specifically, <span
class="tool">db</span> translates from the <span class="rep">dynam</span>
representation to <span class="rep">dB</span> representation. By
default, <span class="tool">db</span> uses the following mapping:

{% include_relative guide-28-table-dynamics.txt %}


Notice the presence of the *accent* signifier `v`; the assigned
value `+5` means that any encoded accents will receive a decibel
level 5 dB higher than the basic sound pressure level at that point
in the score.  For example, an explicitly accented note occurring
in a *fortissimo* passage will be assigned a value of 85 dB SPL.

Users can define other mappings by using the <span class="option">f</span>
option for <span class="tool">db</span>.  With <span
class="option">f</span> the user provides a filename that contains
the non-default mapping values. The format for this file is the
same as that shown in the above table. Each table entry specifies
a dynamic marking, followed by a tab, followed by a numerical value.

In the case of crescendo and diminuendo markings, the <span
class="tool">db</span> command attempts to interpolate a series of
values between any preceding and subsequent dynamic markings. The
following example shows a pianissimo marking at the beginning of
measure 5; a crescendo marking spans all of measure 6, and a
mezzo-forte marking appears in measure 7. The right-most spine shows
the corresponding output generated by the <span class="tool">db</span>
command. It shows an interpolation between the two dynamic levels.

```humdrum
**dynam	**dB
*SPL	*
=5	=5
pp	55
.	.
.	.
.	.
=6	=6
<	58
(	61
.	.
(	64
]	67
=7	=7
.	.
mf	70
.	.
```

The interpolation begins with the crescendo indicator and increments
for each continuation signifier (i.e., the open parentheses).
Interpolations are linear and continue up to the crescendo termination
signifier. The size of the increment value depends on starting and
ending dynamic levels as well as the number of crescendo-continuation
signifiers. In the above case four pertinent crescendo signifiers
separate the pianissimo and mezzo-forte markings; each of these
records has been incremented by 3 decibels. Where necessary, decimal
values are output.  Notice that null tokens (such as those in the
middle of measure 6) are ignored in the calculation.



## Processing Dynamic Information ##



The <span class="rep">dB</span> representation can be used to
assist a number of tasks related to musical dynamics. Suppose, for
example, that we want to compare the average overall dynamic levels for
two arabesques:

```bash
extract -i '**dynam' arabesque1 | db | rid -GLId | stats
extract -i '**dynam' arabesque2 | db | rid -GLId | stats
```

Similarly, we might compare the overall dynamic levels between two
sections of a single work. Perhaps we wish to know whether the
exposition is on average louder than the development section:

```bash
yank -s Exposition -r 1 symphony3 | extract -i '**dynam' \
     | db | rid -GLId | stats
yank -s Development -r 1 symphony3 | extract -i '**dynam' \
     | db | rid -GLId | stats
```

Does a work tend to begin quietly and end loudly, or vice versa?
Here we might compare the first 10 measures with the final 10
measures. Notice the use of <span class="tool">ditto</span> to
increase the number of values participating in the calculation of
the average dynamic level:

```bash
yank -n = -r 1-10 janacek | extract -i '**dynam' \
     | ditto -s = | db | rid -GLId | stats
yank -n = -r '$-10-$' janacek | extract -i '**dynam' \
     | ditto -s = | db | rid -GLId | stats
```

Suppose we want to determine whether there is an association between
dynamic levels and pitch height for Klezmer music. That is, does
the music tend to be quieter for lower pitches and louder for higher
pitches? A straightforward way to determine this is to compare
dynamic level with pitch height &mdash; represented in semitones
(<span class="rep">semits</span>). The <span class="tool">correl</span>
command can then be used to measure Pearson's coefficient of
correlation. If there is a relationship between pitch height and
dynamic level then the correlation should be positive.


```bash
semits klezmer | correl -s ^= -m
```

This command assumes an input consisting of two spines &mdash; one
pitch-related and a <span class="rep">dB</span> spine. The <span
class="option">s</span> option for <span class="tool">correl</span>
is used to skip barlines so bar numbers aren't included in the
calculation. The <span class="option">m</span> option for <span
class="tool">correl</span> disables the "matched pairs" criterion.
Normally, if a number is found in one spine but not the other then
<span class="tool">correl</span> will complain and terminate. With
the <span class="option">m</span> option, each encoded pitch need
not have a corresponding dynamic level indication and vice versa.

Similarly, we could use this same approach to determine whether
there is a relationship between duration and dynamic level. Are
longer notes more likely to be louder in Klezmer music?

```bash
dur klezmer | correl -s ^= -m
```

A variation on this procedure might be to restrict the comparison
over a specified pitch range. For example, one might think that
higher pitches tend to be louder but that lower pitches are neither
softer nor louder than usual. In order to test this view we can use
the <span class="tool">recode</span> command to reassign "low"
pitches to a single value. By way of illustration, the reassignment
might presume that below G4 (semits=7) there is no relationship
between pitch height and dynamic level. We might recode all values
lower than 7 to a unique string (such as `XXX`) and then use <span
class="unix">grep -v</span> to eliminate these notes from a subsequent
correlation:

```bash
extract -i '**kern' klezmer | semits recode > temp1  extract -i '**dB' klezmer > temp2  assemble temp1 temp2 | grep -v 'XXX' | correl -s ^= -m
```



## Terraced Dynamics ##



Suppose we want to identify whether various works exhibit "terraced"
or "graduated" dynamics. In the case of terraced dynamics, we would
expect to see many relatively abrupt dynamic contrasts, such as
alternations between *forte* and *piano*. There are several ways
of approaching this question. One approach might translate <span
class="rep">dynam</span> data to <span class="rep">dB</span> data
and then calculate the average (or maximum) changes in dynamic
level. If a work contains many crescendos and diminuendos markings,
then most of the changes in <span class="rep">dB</span> values will
be small. Conversely, alternations between contrasting dynamic
levels will cause the average decibel differences to be larger.
The <span class="tool">xdelta</span> command can be used to calculate
the changes in dynamic level. Notice that it is important to avoid
using the <span class="tool">ditto</span> command since repeated
dynamic level values will cause the average dynamic difference to
approach zero.

```bash
extract -i '**dynam' haendel | db | xdelta -a -s = | rid -d | stats
```

Another approach to this problem might be to count the number of
dynamic contrasts, avoiding the use of the <span class="tool">db</span>
command. In the following pipeline, we use <span
class="tool">context</span> to generate pairs of dynamic markings,
and then use <span class="unix">grep</span> to count the number of
alternations between *f* and *p*.

```bash
extract -i '**dynam' haendel | grep -v '[][()=rX]' | rid -d \
     | context -n 2 | grep -c 'f p'
extract -i '**dynam' haendel | grep -v '[][()=rX]' | rid -d \
     | context -n 2 | grep -c 'p f'
```



## Dynamic Swells ##



Conceptually, crescendos and diminuendos can be paired to form one
of two dynamic gestures. A "swell" gesture consists of a crescendo
followed by a diminuendo. Conversely, a "dip" gesture would consist
of a diminuendo followed by a crescendo. Musical intuition would
suggest that swell gestures are more common than dip gestures. We
could test this view as follows:

```bash
extract -i '**dynam' grieg | grep -v '[][()=rX]' | rid -d \
| context -n 2 | grep -c '< >'
extract -i '**dynam' grieg | grep -v '[][()=rX]' | rid -d \
| context -n 2 | grep -c '> <'
```



## MIDI Dynamics ##



Dynamic level data is not always easily available. One possible
source is to translate MIDI key-velocity data to an estimated decibel
value.  Actual sound pressure levels will depend on the timbre of
the MIDI sounds, the specific pitch played, and the volume on the
output amplifier. Nevertheless, a rough estimate of sound pressure
level may be useful for various analytic tasks. Recall that in the
<span class="rep">MIDI</span> representation, key-velocity data is
encoded as the final number in three-number tokens where numbers
are separated by slashes. The first value in the triplet is elapsed
clock ticks and the second value is the MIDI key number (positive
for key-on events, negative for key-off events). By way of reminder,
the following example shows three <span class="rep">kern</span>
notes with a corresponding <span class="rep">MIDI</span> representation.

```humdrum
**kern	**MIDI
*	*Ch1
4c	72/60/64
4d	72/-60/64 72/62/64
4e	72/-62/64 72/64/64
.	72/-64/64
*-	*-
```

In order to translate to a <span class="rep">dB</span> representation,
we must first isolate the key velocity values for key-on events.
The following <span class="tool">humsed</span> command simply
eliminates all data up to (and including) the last slash character:

```bash
extract -i '**MIDI' mono_input | humsed 's/.*\///'
```

This will leave us with just the key-down velocity data. Let's
suppose that the following rough decibel equivalents are established:

```text
key	velocity approximate dB SPL
127	85
100	80
90	77
80	74
70	70
60	65
50	60
40	53
30	44
20	32
10	21
1	10
0	0
```

An appropriate reassignment file for <span class="tool">recode</span>
would begin as follows:

```humdrum
=127	85
=100	80
=90	77
=80	74
=70	70
```
etc.

The completed translation would be accomplished by the following
pipeline:

```bash
extract -i '**MIDI' mono_input | humsed 's/.*\///' \
     | recode -f reassign | sed 's/**MIDI/**dB/'
```

Notice the use of the <span class="unix">sed</span> command to
replace the <span class="rep">MIDI</span> interpretation by a <span
class="rep">dB</span> interpretation.



## Reprise ##



In this chapter we have introduced three representations related
to musical dynamics. The <span class="rep">dyn</span> representation
allows us to encode dynamic markings as they appear visually in a
printed score. Unfortunately, traditional notated dynamic markings
are often confusing or ambiguous. In order to facilitate some types
of analytic processing it is useful to generate a more rationalized
interpretation of the dynamics of a work. The <span
class="rep">dynam</span> representation provides a canonical scheme
for representing basic notated dynamic markings where ambiguities
are resolved by explicitly interpreting the meaning of dynamic
markings. A third scheme (<span class="rep">dB</span>) provides a
scheme for representing continuous dynamic levels in decibels. We
have seen that the <span class="tool">db</span> command (which
translates from <span class="rep">dynam</span> to <span
class="rep">dB</span>) allows us to pose and answer a variety of
questions related to the dynamic organization of music.



