---
sidebar:	toc
chapternav:	guide
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	13 Apr 2020
vim:		ft=html
permalink:	/guide/ch33/index.html
---

<div class="chapter-heading">
<h1> Chapter 33 </h1>
<h1> Word Sounds </h1>
</div>

------------------------------------------------------------------------


In addition to the meanings conveyed by words, words also provide
distinctive sounds that can prove to be musically useful. Poets and
composers often arrange or choose texts so that the sequence of
sounds create alliteration, onomatopoeia, rhythm, rhyme and other
sonorous effects. This chapter introduces the <span class="rep">IPA</span>
scheme for representing speech sounds. This representation provides
a companion to the <span class="rep">text</span> and <span
class="rep">silbe</span> representations discussed in
[Chapter&nbsp;27.](/guide/ch27) Various sonorous processes are
illustrated.



## The \*\*IPA Representation ##



The Humdrum <span class="rep">IPA</span> scheme provides a way to
represent the International Phonetic Alphabet. The <span
class="rep">IPA</span> scheme is based on the transliteration scheme
developed by linguist Evan Kirshenbaum. The scheme is suitable for
representing the basic phonemes found in most of the world's
languages. The table below summarizes the <span class="rep">IPA</span>
mappings for various phonemes.


*Summary of *\*\*IPA* Signifiers*


<style>
.underline {
	text-decoration: underline;
	font-weight: bold;
	color: crimson;
}
</style>

| symbol            | meaning |
| ================= | ======= |
| `@`	| **schwa**&dagger; (&#601;) as in (unaccented) *b<span class="underline">a</span>nan<span class="underline">a</span>, c<span class="underline">o</span>llide, <span class="underline">a</span>lone* or (accented) *h<span class="underline">u</span>mdr<span class="underline">u</span>m*		|
| `V`	| **schwa** (IPA symbol: &#601;) as in the British pronunciation of *h<span class="underline">u</span>t*		|
| `R`	| **R**&Dagger; as in *b<span class="underline">ur</span>n, op<span class="underline">er</span>ation, d<span class="underline">ir</span>t, <span class="underline">ur</span>gent*		|
| `&`	| short **a** (IPA symbol: &aelig;) as in *m<span class="underline">a</span>t, m<span class="underline">a</span>p, m<span class="underline">a</span>d, g<span class="underline">a</span>g, sn<span class="underline">a</span>p, p<span class="underline">a</span>tch*		|
| `A`	| **ä** (IPA symbol: &#596;); as in *b<span class="underline">o</span>ther, c<span class="underline">o</span>t*, and, with most American speakers, *f<span class="underline">a</span>ther, c<span class="underline">a</span>rt*		|
| `a`	| **&aring;**; *f<span class="underline">a</span>ther* as pronounced by speakers who do not rhyme it with *bother*.		|
| `E`	| short **e** (IPA symbol: (* &epsilon; or E); as in *g<span class="underline">e</span>t, b<span class="underline">e</span>d, p<span class="underline">e</span>ck, <span class="underline">e</span>dge*		|
| `i`	| long **e** (IPA symbol: e(ma); as in *b<span class="underline">ea</span>t, gr<span class="underline">ee</span>d, <span class="underline">e</span>venl<span class="underline">y</span>, <span class="underline">ea</span>s<span class="underline">y</span>*		|
| `I`	| short **i** (IPA symbol: I or (*i); as in *t<span class="underline">i</span>p, ban<span class="underline">i</span>sh, act<span class="underline">i</span>ve*		|
| `o`	| **o** as in *<span class="underline">o</span>b<span class="underline">oe</span>, tromb<span class="underline">o</span>ne, banj<span class="underline">o</span>*		|
| `O`	| o(de (IPA symbol: o or upside-down c'); as in *l<span class="underline">aw</span>, <span class="underline">a</span>ll, sh<span class="underline">aw</span>m*		|
| `W`	| **oe** digraph (IPA symbol: (oe); as in the French *b<span class="underline">oeu</span>f*, German *H<span class="underline"><span class="underline">ö</span>lle*		|
| `u`	| **ü**; as in *r<span class="underline">u</span>le, y<span class="underline">ou</span>th, f<span class="underline">ew</span>, <span class="underline">oo</span>ze*		|
| `U`	| **u(de'** (IPA symbol: (*u or U or (*w); as in *p<span class="underline">u</span>ll, w<span class="underline">oo</span>d, b<span class="underline">oo</span>k*		|
| `y`	| **ue**; as in the German *f<span class="underline">ü</span>llen*, *h<span class="underline">ü</span>bsch*, or French *r<span class="underline">ue</span>*		|
| *vowel*`~`	| `~` following a vowel indicates a vowel or diphthong pronounced with open nasal passages; as in the French "un bon vin blanc" (W~ bo~ va~ blA~)		|
| `b`	| **b** (IPA symbol: b or c(hc'); as in *<span class="underline">b</span>eam, ca<span class="underline">b</span>in, ro<span class="underline">b</span>*		|
| `d`	| **d**; as in *<span class="underline">d</span>ee<span class="underline">d</span>, <span class="underline">d</span>ulcimer, a<span class="underline">dd</span>er*		|
| `f`	| **f**; as in *<span class="underline">f</span>ugue, sta<span class="underline">ff</span>*, *<span class="underline">f</span>orte*		|
| `g`	| **g**; as in *<span class="underline">g</span>uitar, fa<span class="underline">g</span>ot, <span class="underline">g</span>i<span class="underline">g</span>*		|
| `h`	| **h**; as in *<span class="underline">h</span>ear, a<span class="underline">h</span>ead, <span class="underline">h</span>orn*		|
| `k`	| **k**; as in *<span class="underline">c</span>ook, ta<span class="underline">k</span>e, s<span class="underline">c</span>ore, a<span class="underline">ch</span>e*		|
| `x`	| **K** (IPA symbol: k); as in the German *i<span class="underline">ch</span>, Bu<span class="underline">ch</span>*		|
| `l`	| **l**; as in *<span class="underline">l</span>ibretto, <span class="underline">L</span>u<span class="underline">ll</span>y, poo<span class="underline">l</span>*		|
| `m`	| **m**; as in *<span class="underline">m</span>usic, li<span class="underline">mb</span>, hy<span class="underline">mn</span>*		|
| `n`	| **n**; as in *<span class="underline">n</span>o, i<span class="underline">n</span>strume<span class="underline">n</span>t, blow<span class="underline">n</span>*		|
| `N`	| **eng** (IPA symbol: n' with a tail); as in *si<span class="underline">ng</span>, fi<span class="underline">ng</span>eri<span class="underline">ng</span>, i<span class="underline">n</span>k*		|
| `p`	| **p**; as in *<span class="underline">p</span>iano, bee<span class="underline">p</span>er, li<span class="underline">p</span>*		|
| `r`	| **r**; as in *<span class="underline">r</span>eed, o<span class="underline">r</span>gan, ca<span class="underline">r</span>*		|
| `s`	| **s**; as in *<span class="underline">s</span>oprano, <span class="underline">c</span>ymbal, <span class="underline">s</span>our<span class="underline">ce</span>, ba<span class="underline">ss</span>*		|
| `S`	| **sh** ["esh"] (IPA symbol: (It(Im(Ib'); as in *<span class="underline">sh</span>arp, cre<span class="underline">sc</span>endo, spe<span class="underline">ci</span>al, percu<span class="underline">ssi</span>on*		|
| `t`	| **t**; as in *<span class="underline">t</span>empo, <span class="underline">t</span>ie, a<span class="underline">tt</span>acca, minue<span class="underline">t</span>*		|
| `T`	| **th** ["thorn"] (IPA symbol: (*h); as in *<span class="underline">th</span>in, pa<span class="underline">th</span>, e<span class="underline">th</span>er*		|
| `D`	| **th** ["eth"] (IPA symbol: d~) as in *<span class="underline">th</span>en, rhy<span class="underline">th</span>m, smoo<span class="underline">th</span>*		|
| `v`	| **v**; as in *<span class="underline">v</span>oice, <span class="underline">v</span>i<span class="underline">v</span>ace, li<span class="underline">v</span>e*		|
| `w`	| **w**; as in *<span class="underline">w</span>e, a<span class="underline">w</span>ay*		|
| `j`	| **j**; as in *<span class="underline">y</span>es, <span class="underline">J</span>ohann, c<span class="underline">u</span>e, on<span class="underline">i</span>on*		|
| `z`	| **z**; as in *<span class="underline">z</span>one, rai<span class="underline">s</span>e, <span class="underline">x</span>ylophone, ja<span class="underline">zz</span>*		|
| `Z`	| **zh** ["yogh"]&sect; as in *mea<span class="underline">s</span>ure, vi<span class="underline">si</span>on, a<span class="underline">z</span>ure* 		|
| *consonant*-	| following a consonant (l-, n-, m-, or N-)** indicates a consonant preceded by a *schwa* that is pronounced as an independent syllable; as in batt<span class="underline">le</span>, mitt<span class="underline">en</span>, eat<span class="underline">en</span>*		|
| *consonant*;	| following a consonant,&dagger;&dagger; indicates that the front of the tongue is positioned as in the beginning of the word yard'		|
| `^`	| preceding phoneme is palatalized		|
| `'`	| primary stress (should precede stressed sound)		|
| `,`	| secondary stress (should precede stressed sound)		|
| `%`	| silence signifier		|


| note | comment |
| === | === |
| &dagger;  	| The IPA *schwa* is notated as an upside-down 'e'.	|
| &Dagger;   	| The IPA symbol consists of a *schwa* with a hook.	|
| &sect; 	| The IPA *yogh* is written like a flat-topped numeral '3' that has been lowered in height.	|
| *  	| In IPA such vowels are marked by the presence of a tilde above the vowel.	|
| **  	| In IPA such consonants are marked by the presence of a vertical bar below the consonant.	|
| &dagger;&dagger;  |  The IPA symbol consists of a superscript letter 'j' either following or hooked beneath the consonant.	|

Humdrum does not provide a tool for translating from <span
class="rep">text</span> or <span class="rep">silbe</span> representations
to <span class="rep">IPA</span>. However, there are a number of
commercial text-to-phoneme translators available for most common
languages.



## Alliteration ##



A common sonorous use of words is found in alliteration where several
successive words commence with the same sound. A famous example of
alliteration is found at the beginning of William Shakespeare's
*Tempest*:

```humdrum
**text	**IPA
Full	ful
fathom	f&D@m
five	fAiv
thy	DAi
father	fADR
lies	lAiz
*-	*-
```

Given an <span class="rep">IPA</span> input, occurrences of
alliteration can be found by first isolating the initial phoneme
for each word using <span class="tool">humsed</span>. This task
requires some additional knowledge about using <span
class="tool">humsed</span>. Both <span class="unix">sed</span> and
<span class="tool">humsed</span> provide a "back reference"
construction that allows users to manipulate a matched expression
without knowing the precise matched sequence of characters. The
expression to be matched is indicated via parentheses preceded by
back-slash characters, i.e., `\(` and `\)`. Several such expressions
can be defined and each successive expression is internally labelled
with an integer beginning with 1. The marked expression can then
be "back-referenced" by using the integer label preceded by a
back-slash. Hence, `\1` refers to the first referenced expression.
Consider, by way of illustration, the following command:

```bash
sed 's/^\(.\).*/\1/'
```

In this command, the referenced expression consists of the period
(match any single character). Notice that this expression is
back-referenced in the replacement string &mdash; `\1`. In other
words, this <span class="unix">sed</span> command carries out the
following operation: find a single character at the beginning of a
line followed by zero or more characters. Replace this entire string
by just the first character in the line.

Let's now use this back-reference technique in our alliteration
search.  First we extract the <span class="rep">IPA</span> spine
and use <span class="tool">humsed</span> to eliminate all but the
first character in each data record:

```bash
extract -i '**IPA' Tempest | humsed 's/^\(.\).*/\1/'
```

The result is:

```humdrum
**IPA
f
f
f
D
f
*-
```

We can now amalgamate successive initial phonemes by using the <span
class="tool">context</span> command. Suppose we are interested in
identifying alliterations where three or more words begin with the
same initial phoneme. For this, we would use the **-n 3** option
for <span class="tool">context</span>. Having amalgamated three
phonemes on each data record we can use <span class="tool">humsed</span>
to eliminate the spaces between the multiple stops:

```bash
extract -i '**IPA' Tempest | humsed 's/\(.\).*/\1/' \
     | context -n 3 | humsed 's/ //g'
```

The revised output is:

```humdrum
**IPA
fff
ffD
fDf
Dfl
.
.
*-
```

Now we need to identify any data records that contain three identical
sigifiers. Once again, we can use the back-reference feature for
<span class="tool">humsed</span>.

```bash
extract -i '**IPA' Tempest | humsed 's/\(.\).*/\1/' \
     | context -n 3 | humsed 's/ //g'; s/\(.\)\1\1/allit: \1/'
```

The resulting output is:

```humdrum
**IPA
allit: f
ffD
fDf
Dfl
.
.
*-
```

Let's add one further refinement which illustrates yet another
feature provided by <span class="unix">sed</span> and <span
class="tool">humsed</span>. Recall that operations such as substitions
(`s`) and deletions (`d`) can be preceded by a regular expression
that limits the operation only to those lines that match the
expression. For example, the command `sed '/=/s/[0-9]//g'` will
eliminate all numbers found on lines containing an equals sign. The
leading regular expression can be followed by an exclamation mark
which reverses the sense of the action. For example, the command
`sed '/=/!s/[0-9]//g'` will eliminate all numbers *except* those
found on lines containin an equals sign.

This feature can be usefully applied in our alliteration task to
eliminate all other data in our spine except alliteration markers.
Our final revised pipeline transforms non-alliteration data to null
tokens:

```bash
extract -i '**IPA' Tempest | humsed 's/\(.\).*/\1/' \
     | context -n 3 | humsed 's/ //g'; s/\(.\)\1\1/allit: \1/; \
     /allit/!s/.*/./'
```

The final output is:

```humdrum
**IPA
allit: f
.
.
.
.
.
*-
```



## Classifying Phonemes ##



Linguists have devised innumerable ways for classifing phonemes.
For example, phenomes such as *f*, *s*, *sh*, *th*, *v*, etc. are
classified as fricatives. Bi-labial plosives include the *p* and
*b* sounds. The *m* and *n* sounds are classified as nasals. And
so on.

For some tasks, it is often useful to reduce the phonemes to phonetic
classes. For example, in our example from Shakespeare's *Tempest*,
the 'th' in 'thy' is part of the fricative alliteration.

In [Chapter&nbsp;22](/guide/ch22) we saw how <span class="tool">humsed</span>
can be used to classify things. A simple reassignment script can
be defined which collapses the various phonemes into a smaller set
of phonetic classes. For example, a suitable script might contain
the following assignments:

```bash
s/[bdtk]//g
s/[mn]//g
s/[fsSTDv]//g
```
etc.

Classifying phonemes in this way will allow us to broaden our
searches for alliterative passages.



## Properties of Vowels ##



Vowels are particular important in music since notes can be sustained
only by increasing the duration of the vowels. In speech, more time
is occupied by vowel sounds than by consonants. In vocal music, an
even greater proportion of the time is taken up by vowels. This
means that the quality of the vowels can have a marked impact on
the overall timbre or tone color of a work. For example, a long
note sustained with an 'ee' can sound very different from the
same note sung with a sustained 'ah'.

Like consonants, vowels can also be classified in many ways. One
common classifying dimension is the front/back distinction. The
vowel 'oo' is a front position vowel whereas the vowel 'ah' is a
back position vowel. Similarly, vowels can be classified according
to the high/low distinction. The vowel 'ee' is a high vowel whereas
the vowel 'oh' is a low vowel.

A preponderance of high vowels is often associated with sarcasm,
irony or humor. Taunting sounds made by children ("nya, nya &hellip;")
commonly use high vowels mixed with nasals. Similarly, high/nasal
vocal sounds are often used by comedians and actors to produce a
'funny' voice.

Suppose we want to test the idea that a certain piece in a Gilbert
and Sullivan operetta exhibits a preponderance of high vowels. We
might begin by creating a re-assignment file where the estimated
height of each vowel is given a value between 1 (low) and 10 (high).
We can estimate the overall average vowel height for a piece by
averaging these values together. The basic pipeline will extract
the pertinent <span class="rep">IPA</span> spine, eliminate all
non-vowel phonemes, add spaces between each vowel, and then assign
estimated heights to each vowel. Finally, non-data records are
eliminated using <span class="tool">rid</span> and the data values
averaged using the <span class="tool">stats</span> command:

```bash
extract -i '**IPA' Penzance | humsed 's/[^@VR&AaEiIoOWuUy]//'\
     | humsed 's/./& /g; s/ / /; s/ $//' | humsed -f vowel.map\
     | rid -GLId | stats
```

This procedure can be repeated for several movements or pieces to
provide a contrast for the piece of interest.



## Vowel Coloration ##



When translating vocal texts from one language to another, it is
often difficult for translators to preserve the vowel coloration.
A vocal work can be considerably maligned if a prominent (high/long)
note is changed from an 'ah' sound to an 'ee' sound.

Suppose we want to determine which of several English translations
of a song by Schubert best preserves the vowel coloration. As above,
let's limit our notion of coloration to vowel height. (Of course
any other similarity mapping or dimension can be used.) As in our
Gilbert and Sullivan example, we could simply compare the overall
vowel height for the original Schubert song with each of the
translations. However, not all notes are equally important. In the
first instance, the vowels on longer sustained notes will be more
noticeable than the vowels attending shorter notes. A simple remedy
is to use the <span class="tool">timebase</span> command to expand
the input so that longer notes are proportionally more influential
in our measure of overall vowel height. We can use <span
class="tool">ditto</span> to repeat sustained vowels:

```bash
timebase -t 16 Schubert | extract -i '**IPA' \
   | humsed 's/[^@VR&AaEiIoOWuUy]//' | humsed 's/./& /g; \
   s/ / /; s/ $//' | humsed -f vowel.map | rid -GLId | stats
```

Since translators have plenty of other issues to consider when
translating a vocal text, we might focus our comparisons solely on
a small collection of especially important notes. We might for
example use a longer value for <span class="tool">timebase</span>.
Alternatively, we might use the Humdrum <span class="tool">accent</span>
command (described in [Chapter&nbsp;25](/guide/ch25)) to identify notes
have a particularly high noticeability.



## Rhymes and Rhyme Schemes ##



Rhymes are common poetic devices throughout the world's cultures.
Rhymes involve the use of similar or identical word-final phonemes.
Typically, rhymes are based on the final phonemes of phrase-terminating
words, but rhymes commonly occur in mid-phrase and other positions
in poetry from various cultures. Consider the rhymes in the following
traditional nonsense verse:

<div style="padding-left: 50px; white-space:pre;">
We're all in the dumps,
For diamonds are trumps,
The kittens are gone to St. Paul's
The babies are bit,
The moon's in a fit
And the houses are built without walls.
</div>

&ndash; Anon. "We're All in the Dumps" From The Faber Book of Nonsense
Verse, Geoffrey Grigson (ed.) 1979; p.65

Suppose we want to automatically identify the rhyme scheme for this
(or some other) text. Our first order of business is to identify
phrase-terminating points. Let's assume we already have some phrase
indicators (via curly braces {}). Our input might begin as follows:

```humdrum
**text	**IPA
We're	{wRr
all	Al
in	In
the	D@
dumps,	d@mps}
```
etc.

Using <span class="tool">extract</span>, <span class="tool">context</span>
and <span class="tool">rid</span> we can isolate each poetic phrase:

```bash
extract -i '**IPA poem | context -b { -e } | rid -GLId
```

The result is as follows:

```bash
{wRr Al In D@ d@mps}
{foR dAim@nds Ar tr@mps}
{D@ kIt@ns Ar gAn tu seint pAUls}
{D@ beibiz Ar bIt}
{D@ munz In @ fIt}
{&nd D@ h&uz@z Ar bIlt wITAut wAUls}
```

The rhyming portion of words typically consist of a final vowel
plus any subsequent consonants. We can isolate these phonemes using
<span class="unix">sed</span>.  Notice our use of back reference
to preserve the final phonemes:

```bash
 ... | sed 's/.*\([@VR&AaEiIoOWuUy][^@VR&AaEiIoOWuUy]*}$\)/\1/'
```

The resulting output is:

```humdrum
@mps}
@mps}
Uls}
It}
It}
Uls}
```

A little further processing can remove the closing braces using
<span class="unix">sed</span>, and eliminate the duplicate lines
using <span class="unix">sort</span> and <span class="unix">uniq</span>.

```bash
 ... | humsed 's/}//' | sort | uniq
```

The output can then be changed into a set of substitutions for a
<span class="tool">humsed</span> script. A suitable file would
contain the following substitutions:

```text
s/.*@mps$/A/
s/.*It$/B/
s/.*Uls$/C/
s/.*/./
```

This script will label all words ending with "umps" to `A`. Word
ending with "its" will be labelled `B`, and so on. All other words
will be output as null tokens. Using this script, a suitable pipeline
for processing our original file would be as follows:

```bash
extract -i '**IPA poem | context -b { -e } | humsed 's/}//' \
     | humsed -f rhyme | rid -GLId
```

The corresponding output would indicate the rhyme scheme for this poem:

```text
A
A
B
C
C
B
```

Note that the entire analytic procedure can be placed in a shell
script and applied to any input containing <span class="rep">IPA</span>
text. The following script adds a number of refinements.

```bash
# RHYME

# This script determines the rhyme scheme for an input file containing
# an **IPA spine.  This script assumes that the input contains curly
# braces indicating phrase endings.
#
# USAGE:  rhyme

extract -i '**IPA' $1 | extract -f 1 | context -b { -e } | rid -GLId \
     | sed 's/.*\([@VR&AaEiIoOWuUy][^@VR&AaEiIoOWuUy]*}$\)/\1/' \
     | sort | uniq | sed 's/^/s\/.*/; s/$/\/XXX\//' \
     | awk 'BEGIN {alphabet[1]="A"; alphabet[2]="B"; alphabet[3]="C";
          alphabet[4]="D"; alphabet[5]="E"; alphabet[6]="F";
          alphabet[7]="G"; alphabet[8]="H"; alphabet[9]="I";
          alphabet[10]="J"; alphabet[11]="K"; alphabet[12]="L";
          alphabet[13]="M"; alphabet[14]="N"; alphabet[15]="O";
          alphabet[16]="P"; alphabet[17]="Q"; alphabet[18]="R";
          alphabet[19]="S"; alphabet[20]="T"; alphabet[21]="U";
          alphabet[22]="V"; alphabet[23]="W"; alphabet[24]="X";
          alphabet[25]="Y"; alphabet[26]="Z";
          alphabet[27]="ERROR"}
          {temp=$0
          gsub("XXX",alphabet[NR],temp)
          print temp
          }' > rhyme.sed.$$
extract -i '**IPA' $1 | extract -f 1 | context -b { -e } | rid -GLId \
     | sed -f rhyme.sed.$$
rm rhyme.sed.$$
```



## Reprise ##



By focusing on phonetic signifiers, the <span class="rep">IPA</span>
representation provides opportunities for analyzing many sonorous
aspects of vocal sounds &mdash; including alliteration, vowel
coloration, rhyme, and other effects. Although we did not illustrate
it in this chapter, the <span class="rep">IPA</span> representation
can be used in conjunction witht the <span class="rep">silbe</span>
representation to characterize complex aspects of rhythm and rhyme
in vocal texts.



