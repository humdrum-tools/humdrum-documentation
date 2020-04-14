---
sidebar:	toc
chapternav:	guide
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	13 Apr 2020
verovio:	"true"
vim:		ft=html
permalink:	/guide/ch35/index.html
---

<div class="chapter-heading">
<h1> Chapter 35 </h1>
<h1> Layers </h1>
</div>

------------------------------------------------------------------------


In [Chapters 11](/guide/ch11) and [15](/guide/ch15) we examined
different kinds of intervals, including both harmonic and melodic
intervals. A number of different types of intervals were distinguished
and we learned how to calculate such intervals. One type of melodic
interval mentioned in [Chapter 11](/guide/ch11) is the *distance
interval* &mdash; an interval between pitches which are separated
by intervening musical materials. In this chapter we consider more
sophisticated ways of determining distance intervals. These types
of intervals are the foundation of various notions of hierarchies
or "layers" of pitch analysis.

This chapter also visits a related issue of implied harmony. Many
melodic passages outline clear harmonic progressions which are also
implicated in layer-related analyses.



## Implied Harmony ##



Example 35.1 shows a two-phrase trumpet solo from Aaron Copland's *El
Salon Mexico*. Harmonic progressions may be evident only when
arpeggiated figures are collapsed. In this case, an implicit harmony may
is evident where a G major chord is followed by a D dominant seventh
chord. The barlines provide convenient ways of parsing the harmonies.

**Example 35.1** Aaron Copland, *El Salon Mexico*.

{% include verovio.html
	source="guide-35-1"
	scale="45"
	pageWidth="1200"
	humdrum-min-height="875px"
%}

<script type="application/x-humdrum" id="guide-35-1">
!!!COM: Copland, A.
!!!OTL: El Salon Mexico
**kern
*Itromp
*clefG2
*k[]
*M4/4
=29
2r
8r
(8d
8gL
8bJ
=30
28ddL
28b
28dd
28b
28dd
28b
28ddJ
8bL
8ddJ
8ggL
8ddJ
8bL
8gJ
=31
8cc
[4.a
8a]L)
(8dJ
8f#L
8aJ
=32
4cc
8aL
8f#J
8d
4dd
8dd
=33
8ff#~)
8r
4r
2r;
=
*-
</script>

We can collapse the arpeggiated chords using the <span
class="tool">context</span> command:

```bash
context -b = -o = copland
```

Identify the chords is facilitated by using the pitch-class (<span
class="rep">pc</span>) representation described in [Chapter
34.](/guide/ch34)

```bash
context -b = -o = copland | pc -a | rid -d
```

The corresponding output is:

```humdrum
!!!COM: Copland, A.
!!!OTL: El Salon Mexico
**pc
*Itromp
*clefG2
*k[]
*M4/4
r r 2 7 B
2 B 2 B 2 B 2 B 2 7 2 B 7
0 9 9 2 6 9
0 9 6 2 2 2
6 r r r
*-
```

In order to identify these as G major and D dominant chords it would
be convenient to reduce the sets to (2,7,B) and (0,2,6,9) respectively.
For this task, we can use a The following awk script eliminates
repeated tokens within a record: (huniq: We might call this script
**huniq** since it acts like a horizontal version of the <span
class="unix">uniq</span> command:

```awk
awk '{
   # A script to eliminate repeated tokens within a record.
   if ($0 ~ /^[!*]/) {print $0; next}
   else
       { array[$1] = line = $1
       for (i=2; i<=NF; i++)
          {
             if (array[$i] == "") {array[$i]=$i; line = line " " $i}
          }
       print line
       for (i in array) delete array[i]
       }
   }' $1
```

Applying this script to our output:

```humdrum
!!!COM: Copland, A.
!!!OTL: El Salon Mexico
**pc
*Itromp
*clefG2
*k[]
*M4/4
r 2 7 B
2 B 7
0 9 2 6
0 9 6 2
6 r
*-
```

Identifying implicit harmonic intervals can be a little more taxing.
Let's begin by considering a monophonic passage that exhibits a
pseudo-polyphonic or compound melodic tendency. A passage from
Bach's "Gigue" from the solo \'cello *Suite No. 3* is shown in
Example 35.2.

**Example 35.2** J.S. Bach, "Gigue" from *Suite No. 3* for solo \'cello
(excerpt).

{% include verovio.html
	source="guide-35-2"
	scale="65"
	pageWidth="1200"
	humdrum-min-height="550px"
%}
<script type="application/x-humdrum" id="guide-35-2">
**kern
*M3/8
=88
(16F#L
16c)J
(16EL
16c)J
(16DL
16c)J
=89
(16BL
16D)J
(16AL
16D)J
(16BL
16D)J
=90
(16cL
16D)J
(16BL
16D)J
(16AL
16D)J
=91
(16BL
16D)J
=-
*-
</script>



{% include verovio.html
	source="guide-35-3"
	scale="65"
	pageWidth="1200"
	humdrum-min-height="550px"
%}
<script type="application/x-humdrum" id="guide-35-3">
**kern
*k[]
*M4/4
=1
4r
8r
16r
32r
32dd'
([4bb-~
8..bb-]L
32aaJkk')
=2
([4cc#~
8..cc#]L
32ccnJkk')
([4gg~
8..gg]L
32ff#Jkk')
=3
8dd#~
8r
(8.ddn~L
32ccLL
32b-JJJ)
(8.cc~L
32b-LL
32aJJJ)
(8.b-L
32aLL
32gJJJ)
=
*-
</script>



{% include verovio.html
	source="guide-35-4"
	scale="65"
	pageWidth="1200"
	humdrum-min-height="550px"
%}
<script type="application/x-humdrum" id="guide-35-4">
**kern
*k[f#]
*M6/8
8b'
=40
4ee
8ff#
8gg
8aa
=41
4bb
8bb
4.bb~
=42
4.ccc
4.ccc~
=43
[4.bb
4bb]
8bb
=44
4.aa
4aa
8aa
=45
4gg
8aa
4gg
8gg
=46
4.ff#
4ff#
8ff#'
=47
4ee
=-
*-
</script>




