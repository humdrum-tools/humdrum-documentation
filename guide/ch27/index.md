---
sidebar:	toc
chapternav:	guide
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	12 Apr 2020
hnp:		"true"
vim:		ft=html
permalink:	/guide/ch27/index.html
---

<div class="chapter-heading">
<h1> Chapter 27 </h1>
<h1> Text and Lyrics </h1>
</div>

------------------------------------------------------------------------


Musical texts include lyrics, librettos, stage directions, recitativo
and other collections of words. It goes without saying that words
provide important information related to semantics, imagery, similes,
allusion, irony, parody, word painting, and emotion. In addition,
words can add to the sonorous dimension of music, including rhyme
schemes, word-rhythms, and phonetic and syllabic effects such as
alliteration, vowel-coloration.

Humdrum provides three pre-defined representations pertinent to
text or lyrics. The <span class="rep">text</span> representation
can be used to represent *words*; the <span class="rep">silbe</span>
representation can be used to represent *syllables*; and the <span
class="rep">IPA</span> representation can be used to represent
*phonemes* (via the International Phonetic Alphabet).  Discussion
of the <span class="rep">IPA</span> representation will be delayed
until [Chapter 34.](/guide/ch34) In this chapter we will look at
various representational and processing issues related to the
manipulation of words and syllables.



## The *\*\*text* and *\*\*silbe* Representations ##



Syllable- and word-oriented representations are illustrated in the
following excerpt from a motet by Byrd (Example 27.1). The encoded
Humdrum data includes three spines: <span class="rep">text</span>,
<span class="rep">silbe</span> and <span class="rep">kern</span>.
Normally, only the <span class="rep">silbe</span> and <span
class="rep">kern</span> data would be encoded &mdash; since the
<span class="rep">text</span> spine can be generated from the <span
class="rep">silbe</span> representation.

**Example 27.1.** From William Byrd, *Why Do I use my paper ink and pen.*

<script>
displayHumdrum(
{
	source: "example-27-1",
	scale: 55,
	spacingNonLinear: 0.55
});
</script>
<script type="text/x-humdrum" id="example-27-1">
!!!COM: Byrd, William
!!!OTL: Why do I use my paper ink and pen.
**kern	**text
*clefG2	*
*M2/2	*
=11	=11
2r	.
2g	Why
=12	=12
2b-	do
2a	I
=13	=13
4g	use
4g	my
[2dd	pa-
=14	=14
2dd]	.
2cc	-per
=15	=15
2.ff	ink
(4ee	and_
=16	=16
4dd	.
4cc	.
4b-	.
4cc	.
=17	=17
1dd	pen,
=18	=18
1dd	and
=19	=19
1dd	pen,
=20	=20
2r	.
2ff	and
=21	=21
2.ee	call
4dd	my
=22	=22
1cc#	wits
=23	=23
2ee	to
[2aa	coun-
=24	=24
4aa]	-sel
4ff	what
(8ee	to_
8dd	.
=25	=25
4cc	.
4dd	.
4.ee	.
8dd	.
=26	=26
4ee	.
4ee	.
2dd)	.
=27	=27
1cc#	say,
=28	=28
*-	*-
</script>


```humdrum
!!!COM: Byrd, William
!!!OTL: Why do I use my paper ink and pen.
**text	**silbe	**kern
*lang:EN	*lang:EN	*
=11	=11	=11
.	.	2r
Why	Why	2g
=12	=12	=12
do	do	2b-
I	I	2a
=13	=13	=13
use	use	4g
my	my	4g
paper	pa-	[2dd
=14	=14	=14
.	|	2dd]
.	-per	2cc
=15	=15	=15
ink	ink	2.ff
and	and	(4ee
=16	=16	=16
.	|	4dd
.	|	4cc
.	|	4b-
.	|	4cc
=17	=17	=17
pen,	pen,	1dd
=18	=18	=18
and	and	1dd
=19	=19	=19
pen,	pen,	1dd
=20	=20	=20
.	.	2r
and	and	2ff
=21	=21	=21
call	call	2.ee
my	my	4dd
=22	=22	=22
wits	wits	1cc#
=23	=23	=23
to	to	2ee
counsel	coun-	[2aa
=24	=24	=24
.	-sel	4aa]
what	what	4ff
to	to	(8ee
.	|	8dd
=25	=25	=25
.	|	4cc
.	|	4dd
.	|	4.ee
.	|	8dd
=26	=26	=26
.	|	4ee
.	|	4ee
.	|	2dd)
=27	=27	=27
say,	say,	1cc#
=28	=28	=28
*-	*-	*-
```


Note that all three representations in Example 27.1 make use of the
common system for representing barlines. In the <span
class="rep">text</span> representation tokens represent individual
words. In some scores, several words will be associated with a
single moment (or pitch), as in the case of *recitativo* passages.
Multi-word tokens are encoded as Humdrum multiple-stops with a space
separating each word on a record.

In the <span class="rep">silbe</span> representation tokens represent
individual syllables. In <span class="rep">silbe</span> the hyphen
(-) is used explicitly to signify syllable boundaries and the tilde
(\~) is used to signify boundaries between hyphenated words
(necessarily also a syllable boundary). In other words, four types
of syllables are distinguished by <span class="rep">silbe</span>:
(1) a single-syllable word, (2) a word-initiating syllable, (3) a
word-completing syllable, and (4) a mid-word syllable. The following
table illustrates how these signifiers are used:

**Table 26.1.**

| <nobr>template</nobr>      | meaning			|
| ============= | ============================= |
| text		| a single-syllable word	|
| text-		| a word-initiating syllable	|
| -text		| a word-completing syllable	|
| -text-	| a mid-word syllable	|
| text~		| a single-syllable word beginning a hyphenated multi-word	|
| ~text		| a single-syllable word completing a hyphenated multi-word	|
| ~text~	| a single-syllabe word continuing a hyphenated multi-word	|
| ~text-	| a word-initating syllable continuing a hyphenated multi-word	|
| -text~	| a word-completing syllable &mdash; part of a hyphenated multi-word	|

Both the <span class="rep">text</span> and <span class="rep">silbe</span>
representations are able to distinguish different tones of voice
such as spoken voice, whispered voice, laughing voice, emotional
voice, *Sprechstimme* and humming. In addition, there are signifiers
for indicating untexted laughter and untexted sobs or crys. Some
sample signifiers are shown in Table 26.2

**Table 26.2.**

*Signifiers common to <span class="rep">text</span> and <span class="rep">silbe</span>

| <nobr>template</nobr>      | meaning		|
| ============= | ============================= |
| `A-Z`	| upper-case letters A to Z	|
| `a-z`	| lower-case letters a-z	|
| `(`	| open parenthesis	|
| `)`	| closed parenthesis	|
| `{`	| beginning of phrase	|
| `}`	| end of phrase	|
| `%`	| silence (rest) token (character by itself)	|
| `M`	| humming voice (character by itself)	|
| `[`	| beginning of spoken voice	|
| `[[`	| beginning of whisper	|
| `]`	| end of spoken voice	|
| `]]`	| end of whisper	|
| `<`	| beginning of *Sprechstimme*	|
| `>`	| end of *Sprechstimme*	|
| `#`	| beginning of laughing voice	|
| `##`	| end of laughing voice	|
| `@`	| laughter (no text)	|
| `&`	| sob or cry (no text)	|
| `$`	| beginning of emotional voice	|
| `$$`	| end of emotional voice	|
| `*`	| follows stressed word (<span class="rep">text</span>) or stressed syllable (<span class="rep">silbe</span>)	|



## The *text* Command ##



In most notated music, lyrics are written using a syllabic
representation rather than a word-oriented representation. The <span
class="rep">silbe</span> representation is typically a better
representation of the score than <span class="rep">text</span>.
However, for many analytic applications, words often prove to be
more convenient. The Humdrum <span class="tool">text</span> command
can be used to translate <span class="rep">silbe</span> data to
<span class="rep">text</span> data. In general, syllabic information
is useful for addressing questions related to rhythm and rhyme,
whereas text information is more useful for addressing questions
related to semantics, metaphor, word-painting, etc.

Invoking the <span class="tool">text</span> command is straightforward:

```bash
text inputfile > outputfile
```

A simple text-related task might be looking for occurrences of a
particular word, such as the German "Liebe" (love). If the lyrics
are encoded in the <span class="rep">text</span> representation,
then a simple <span class="unix">grep</span> will suffice:

```bash
grep -n 'Liebe' schubert
```

Recall that the <span class="option">n</span> option gives the line
number of any occurrences found. If the input is encoded in the
<span class="rep">silbe</span> representation, then the output of
<span class="tool">text</span> can be piped to <span
class="unix">grep</span>:

```bash
extract -i '**silbe' schubert | text | grep -n 'Liebe'
```

Given a <span class="rep">silbe</span> input, a inventory of words
can be generated using <span class="unix">sort</span> and <span
class="unix">uniq</span> in the usual way:

```bash
extract -i '**silbe' song | text | rid -GLId | sort | uniq
```

Frequently, it is useful to search for a group of words rather than
individual words. Suppose we are looking for the phrase "white
Pangur." The <span class="tool">context</span> command can be used
to amalgamate words as multiple stops. If we are looking for a
phrase consisting of just two words, we might use the **-n 2**
option for <span class="tool">context</span>:

```bash
text barber | context -n 2 | grep -i 'white Pangur'
```

Alternatively, we might amalgamate words so they form sentences,
or at least phrases. Puntuation marks provide a convenient marker
for ending the amalgamation process carried out by <span
class="tool">context</span>. In the following command, we have
defined a regular expression with a character-class containing all
of the puntuation marks. The output from this command will display
all punctuated phrases (one per line) that contain the phrase "white
Pangur."

```bash
text | context -e '[.,;?!]' | grep -i 'white Pangur'
```



## The *fmt* Command ##



Another common task is simply to provide a readable text of the
text or lyrics of a work. Given a <span class="rep">text</span>
representation, we can use the <span class="tool">rid</span> command
to eliminate all records except non-null data records. This will
result in a list of words &mdash; one word per line. UNIX provides
a simple text formatter called <span class="unix">fmt</span> that
will assemble words or lines into a block text where all output
lines are roughly the same width. <a name ="Gregorian_Chant"></a>
[Consider the Gregorian chant *A Solis Ortus* from the *Liber
Usualis* (shown in Example 27.2.)

**Example 27.2.** Beginning of chant *A Solis Ortus*.]{#Liber_Usualis}

![](guide.figures/guide27.2.gif)

The Latin text for this chant can be formatted as follows:

```bash
extract -i '**silbe' chant12 | text | rid -GLId | fmt -50
```

The **-50** option tells <span class="unix">fmt</span> to place no more than 50 characters per
line. The default line-length is 72 characters. The above pipeline
produces the following output:


```bash
A solis ortus cardine ad usque terrae limitem,  Christum canamus principem, natum Maria Virgine.  Beatus auctor saeculi servile corpus induit: ut  carne carnem liberans, ne perderet quos condidit.  Castae parentis viscera cae lestis intratgratia:  venter puellae bajulat secreta, quae non noverat.  Domus pudici pectoris tem plum repente fit Dei:  intacta nesciens virum, concepit alvo filium.
```

Another useful output would have the text arranged with one sentence or
phrase on each line. As before we can use the
<span class="tool">context</span> command with the <span class="option">e</span> option to
amalgamate words, where each amalgamated line ends with a punctuation
mark:

```bash
extract -i '**silbe' chant12 | text | context -e '[.,;:?!]' \
```
\| rid -GLId

The corresponding output is:


```bash
A solis ortus cardine ad usque terrae limitem,  Christum canamus principem,  natum Maria Virgine.  Beatus auctor saeculi servile corpus induit:  ut carne carnem liberans,  ne perderet quos condidit.  Castae parentis viscera cae lestis intratgratia:  venter puellae bajulat secreta,  quae non noverat.  Domus pudici pectoris tem plum repente fit Dei:  intacta nesciens virum,  concepit alvo filium.
```

Yet another way of arranging the text output would be to parse the text
according to explicit phrase marks in the
<span class="rep">kern</span> data. This will require a
little more work, but it's worth going through the steps since the same
process can be applied to any representation. First, we will need to
transfer the end-of-phrase signifier (\``}`\') from the <span class="rep">kern</span> spine
to the <span class="rep">silbe</span> spine. This transfer entails four steps. (1) Extract
the monophonic <span class="rep">kern</span> spine and eliminate all data signifiers except
closing curly braces (\``}`\'). Store the result in a temporary file:

```bash
extract -i '**kern' chant12 | humsed 's/[^}]*//; s/^$/./' \
```
\> temp1

Notice that <span class="tool">humsed</span> has been given two
substitution commands. The first eliminates all data signifiers except
the close curly brace. The second substitution transforms empty output
lines to null data records by adding a single period.

\(2) Extract the <span class="rep">silbe</span> spine, translate it to <span class="rep">text</span> and store the
result in another temporary file:

```bash
extract -i '**silbe' chant12 | text > temp2
```

\(3) Assemble the two temporary files together and use the
<span class="tool">cleave</span> command to join the end-of-phrase
marker to the syllable representation.

```bash
assemble temp1 temp2 | cleave -i '**kern,**text' \
```
-o \'\*\*text\' \> temp3

With this cleaved data we can now use the <span class="tool">context</span> command to
amalgamate phrase-related text. Finally, <span class="tool">rid</span> is used to eliminate
everything but non-null data records.

```bash
context -o = -e } temp3 | rid -GLId
```

The result is as follows:

```bash
A solis ortus cardine }  ad usque terrae limitem, }  Christum canamus principem, }  natum Maria Virgine. }  Beatus auctor saeculi }  servile corpus induit: }  ut carne carnem liberans, }  ne perderet quos condidit. }  Castae parentis viscera }  cae lestis intratgratia: }  venter puellae bajulat }  secreta, quae non noverat. }  Domus pudici pectoris }  tem plum repente fit Dei: }  intacta nesciens virum, }  concepit alvo filium. }
```

We could clean up the output by using the <span class="unix">sed</span> command to remove the
trailing closed curly brace. We simple add the following to the
pipeline:

```bash
 . . . | sed 's/}//'
```

You might have noticed that each of the above phrases seems to consist
of eight syllables. We can confirm this by returning to the syllabic
rather than word-oriented output. For the above command sequence, simply
omit the <span class="tool">text</span> command and replace <span class="rep">text</span> with <span class="rep">silbe</span>. The
revised script becomes:

```bash
extract -i '**kern' chant12 | humsed 's/[^}]*//; s/^$/./' \
```
\> temp1

```bash
extract -i '**silbe' chant12 > temp2
```
```bash
assemble temp1 temp2 | cleave -i '**kern,**silbe' \
```
-o \'\*\*silbe\' \> temp3
```bash
context -o = -e } temp3 | rid -GLId | sed 's/}//'
```

The corresponding output is:

```bash
A so/- -lis or/- -tus car/- -di- -ne  ad us- -que ter/- -rae li/- -mi- -tem,  Chri/- -stum ca- -na/- -mus prin/- -ci- -pem,   na/- -tum Ma- -ri/- -a Vir/- -gi- -ne.  Be- -a/- -tus au/- -ctor sae/- -cu- -li  ser- -vi/- -le cor/- -pus in/- -du- -it:  ut car/- -ne car/- -nem li/- -be- -rans,   ne per/- -de- -ret quos con/- -di- -dit.  Ca/- -stae pa- -ren/- -tis vis/- -ce- -ra  cae/ le/- -stis in/- -trat- -gra/- -ti- -a:  ven/- -ter pu- -el/- -lae ba/- -ju- -lat   se- -cre/- -ta, quae non no/- -ve- -rat.  Do/- -mus pu- -di- -ci pe/- -cto- -ris  tem/ plum re- -pen/- -te fit De/- -i:  in- -ta/- -cta ne/- -sci- -ens vi/- -rum,   con- -ce/- -pit al/- -vo fi/- -li- -um.
```


If we are looking for vocal texts that exhibit a recurring rhythm, we
might make a simple addition to the above script. Instead of outputting
the actual syllables in each phrase, we would output a count of the
number of syllables in each phrase. The standard <span class="unix">awk</span> utility allows
us to write simple in-line programs. The following <span class="unix">awk</span> script simply
outputs the number of fields (white-space separated text) in each input
line:

```bash
awk '{print NF}'
```

If we add this to the end of our command sequence, then the output would
simply be a sequence of numbers &mdash; where each number indicates the
number of syllables in successive phrases. In the case of *O Solis
Ortus* our output would consist of a series of 8s indicating that each
phrase contains precisely eighth syllables.

By way of summary, we can generalize the above process so that
syllable/phrase schemes can be generated for any syllable-related input.
The following script counts the number of syllables in successive
phrases for a single input file.


```bash
# SYLLABLE - count the number of syllables in each phrase  #  # Usage: syllable filename <a name ="  extract -i '**kern' $1 | humsed 's/[^"></a>]*//; s/^$/./' > temp1  extract -i '**silbe' $1 > temp2  assemble temp1 temp2 | cleave -i '**kern,**silbe' -o '**silbe' \ 
```

\| context -o = -e } \| rid -GLId \| sed \'s/}//\' \| awk \'{print
NF}\'

rm temp\[12\]

Variations on this theme abound. For example, if we wish to determine
the number of syllables between successive punctuation marks, the
following pipeline could be used:

```bash
extract -i '**silbe' | context -o = -e '[.,;:?!]' \
```
\| rid -GLId \| awk \'{print NF}\'




## Rhythmic Feet in Text ##



Another question related to rhythm is to identify rhythmic patterns.
Once again, we might look at the chant *O Solis Ortus.* Below we have
recoded the syllables in each phrase, where the value `0` indicates an
unstressed syllable and `1` indicates a stressed syllable:


```bash
0 1 0 1 0 1 0 0  0 0 0 1 0 1 0 0  1 0 0 1 0 1 0 0   1 0 0 1 0 1 0 0  0 1 0 1 0 1 0 0  0 1 0 1 0 1 0 0  0 1 0 1 0 1 0 0   0 1 0 0 0 1 0 0  1 0 0 1 0 1 0 0  1 1 0 1 0 1 0 0  1 0 0 1 0 1 0 0   0 1 0 0 0 1 0 0  1 0 0 0 0 1 0 0  1 0 0 1 0 0 1 0  0 1 0 1 0 0 1 0   0 1 0 1 0 1 0 0
```

The above output was generated using the
<span class="tool">humsed</span> command. Any syllable containing a
trailing asterisk (`*`) is re-written as a \`1\', otherwise as a \`0\'.

```bash
 . . . | humsed 's/[^ ][^ ]*\*/1/g; s/[^1][^1]*$/0/g'
```

With the above output, we can generate an inventory of phrase-related
text-rhythms.

```bash
 . . . | sort | uniq -c | sort
```

With the following results:


```bash
5    0 1 0 1 0 1 0 0  4   1 0 0 1 0 1 0 0  2   0 1 0 0 0 1 0 0  1   0 1 0 1 0 0 1 0  1   1 1 0 1 0 1 0 0  1   1 0 0 0 0 1 0 0  1   1 0 0 1 0 0 1 0  1   0 0 0 1 0 1 0 0
```

We can create a summary rhythmic pattern by adding together the values
in each column &mdash; that is, counting the number of accented syllables
that occur in each syllable position within the phrase. We can isolate
each column using the UNIX **cut** command; **cut** is analogous to the
Humdrum <span class="tool">extract</span> command. Fields are
delineated by white space (tabs or spaces). For example, **cut -f 1**
will isolate the first column of numbers. We can then pipe the results
to the **stats** utility in order to calculate the numerical total. For
example,

```bash
 . . . | cut -f 1 | stats | grep 'total'
```
```bash
 . . . | cut -f 2 | stats | grep 'total'
```
```bash
 . . . | cut -f 3 | stats | grep 'total'
```
etc

For the chant *O Solis Ortus* the results are as follows:

```bash
7 9 0 13 0 14 2 0
```

This means that there are seven stressed syllables in the first syllable
position of the phrase, nine stressed syllables in the second syllable
position, and so on. These results suggest the following rhythmic
structure: medium-strong-weak-strong-weak-strong-weak-weak. By way of
conclusion, it appears that this work has a strongly rhythmic text
structure &mdash; implying that this \`chant\' might have been sung
rhythmically.




## Concordance ##



A traditional text-related reference tool is the *concordance.*
Concordances allow users to look up a word, to see the word in the
context of several preceding and following words, and provide detailed
information about the location of the word in some repertory or corpus.

[Suppose, for example, that we wanted to create a concordance for the
lyrics in Samuel Barber's songs. We would like to create a file that
has a structure such as shown in Table 26.3 below. The first column
identifies the filename. The second column identifies the bar number in
which the keyword occurs. The third column gives a five-word context
where the middle word (in bold) identifies the keyword.]{#Samuel_Barber}

**Table 26.3.**
----------- ---- -------------------------------------------
`chant29`   4    `ut possim cantare, Alleluia: gaudebunt`
`chant29`   7    `mea, dum cantavero tibi: Alleluia,`
`chant27`   1    `Cantate Domino canticum novum Alleluia:`
`chant54`   4    `Cantate Domino canticum novum, quia`
`chant24`   10   `Cantate Domino canticum novum: quia`
`chant42`   14   `totus non capit orbis, in`
`chant47`   5    `et exaltavit caput ejus; et`
`chant12`   1    `solis ortus cardine ad usque`
`chant14`   4    `arrisit orto caritas: Maria, dives`
`chant12`   7    `induit: ut carne carnem liberans,`
`chant58`   5    `et in carne mea videbo`
`chant12`   7    `ut carne carnem liberans, ne`
`chant14`   6    `sola quae casto potes fovere`
`chant17`   3    `et discerne causam meam de`
`chant21`   2    `Dominus a cena, misit aquam`
etc.             
----------- ---- -------------------------------------------
We would also like to provide a <span class="unix">grep</span>-like search tool so users can
search for particular keywords.

The following script will generate our concordance file. For each file
specified in the input, we extract the <span class="rep">silbe</span> spine and store it. We
then process this spine no less than three times. In the first pass, we
translate from the <span class="rep">silbe</span> to the <span class="rep">text</span> representation, and
generate a context of 5 words (**-n 5**) making sure to omit barlines
(**-o =**). We also pad the amalgamated line with three null tokens
(**-p 3**) so the context is centered near the third word in the
sequence. In the second pass, we generate a new spine (<span class="rep">nums</span>) that
contains only bar numbers. The <span class="tool">ditto</span> command
is used to ensure that every data record contains a bar number. To
ensure that pick-up bars are numbered with the value 0, we've used
<span class="tool">humsed</span> to replace any leading null-tokens
with the number 0. In the third pass, we replace every data token with
the name of the file. Finally, we assemble all three of these spines,
eliminate everything but data records, and also eliminate lines that
don't contain any text. All of this processing is carried out in a
while-loop that cycles through all of the files provided when the
command is invoked.


```bash
while [ $# -ne 0 ]  do 
```

extract -i \'\*\*silbe\' \$1 \> temp1
text temp1 \| context -o = -n 5 -p 3 \> temp2
num -n = -a \'\*\*nums\' temp1 \| extract -i \'\*\*nums\' \\

\| ditto \| humsed \'s/\\./0/\' \> temp3

humsed "s/.\*/\$1/" temp1 \> temp4
assemble temp4 temp3 temp2 \| rid -GLId \| sed \'/.\* \\.\$/d\'
shift;

done
rm temp\[1-4\]

Having generated our concordance file, we can now create a simple tool
that allows us to search for keywords. Suppose we kept our concordance
information in a file called `~/home/concord/master`. In essence, we'd
like to create a command akin to <span class="unix">grep</span> &mdash; but one that searches this
file solely according to the third word in the in the context. We cannot
use <span class="unix">grep</span> directly since it will find all occurrences of a word no
matter where it occurs in the context. We need to tell <span class="unix">grep</span> to
ignore all other data. The filename, bar number, and context fields are
separated by tabs. We can ignore the first two fields by eliminating
everything up to the last tab in the line. Since words are separated by
blank space, the expression `[^ ]+` will match a word not containing
spaces. In short, the regular expression "`^.*tab[^ ]+ [^ ]+ `" will
match everything up to the first tab, followed by two additional words.
All we need to do is paste our keyword to the end of this expression.

Below is a simple one-line script for a command called **keyword.** The
user simply types the command **keyword** followed by a regular
expression that will allow him/her to search for a given word in
context. Note that since we've used the extended regular expression
character \`+\' &mdash; we must invoke <span class="unix">egrep</span> rather than <span class="unix">grep</span> in our
script:


```bash
# KEYWORD - A script for searching a master concordance file  #  # Usage:  keyword   #  egrep "^.*  [^ ]+ [^ ]+ $1" ~/home/concord/master
```

Concordances can be used for a number of applications. One might use a
concordance to help identify metaphor or image related words (such as
"light," "darkness," etc.)




## Simile ##



One of the most important poetic devices is the *simile* &mdash; where an
analogy or metaphorical link is created between two things ("My love is
like a red red rose.") In English, similes are often (though not
always) signalled by the presence of the words "like" or "as."

A simple task involves searching for \`like\' or \`as\' in the lyrics of
some input. For each occurrence of these words, suppose that we would
like to output a line that places the word in context &mdash; specifically
the preceding and following four words.

First we transform and isolate the text data using the <span class="tool">text</span> and
<span class="tool">extract</span> commands:

```bash
text inputfile | extract -i '**text' 
```

Since the input may contain multiple-stops, we might consider the
precaution of ensuring no more than one word per data record. For this
we can use <span class="tool">humsed</span>. Specifically, we can replace any spaces by a
carriage return. Since the carriage return is interpreted by the shell
as the instruction to begin executing a command, we need to escape it.
Depending on the shell, the carriage return can be escaped in various
ways. One way is to precede the carriage return by control-V (meaning
"verbatim"). Another way is to type control-M rather than a carriage
return. In the following command we have used the backslash to escape a
control-M character:

```bash
text inputfile | extract -i '**text' | humsed 's/  */\^M/g' \
```
\| egrep -4 \'\^\|(like)\|(as)\$\'

Having ensured that there is no more than one word per line we can now
search for a line contain *just* "like" or "as." The **-4** option
for <span class="unix">egrep</span> causes any matched lines to be output with four preceding
and four following lines of context. In addition, an extra line is added
consisting of two dashes (`--`) to segregate each pattern output. That
is, for each match, ten lines of output are typically given. In order to
generate our final output, we need to transform the linear list of words
into a horizontal list where each line represents a single match for
"like" or "as."

The <span class="tool">context</span> command would enable us to do
this. Unfortunately, however, the output from <span class="unix">egrep</span> fails to conform
to the Humdrum syntax. In particular, adding `^\*` to the regular
expression will fail to ensure a proper Humdrum output since preceding
and following contextual lines will also be output.

The **hum** command is a special command that takes non-Humdrum input
and adds sufficient interpretation records so as to make the input
conform to the Humdrum syntax. Typically, this means simply adding a
generic initial exclusive interpretation (<span class="rep">A</span>) and a spine-path
terminator (`*-`). If the input contains tabs, then appropriate spines
will be added. If the input contains empty lines, then they will be
changed to null data records.

```bash
text inputfile | extract -i '**text' | humsed 's/  */\^M/g' \
```
\| egrep -4 \'\^\|(like)\|(as)\$\' \| hum

Now we can make use of the <span class="tool">context</span> command. Each context ends with
the double-dash delimiters generated by <span class="unix">egrep</span>. The
<span class="tool">rid</span> command can be used to eliminate the
interpretations added by **hum**.

```bash
text inputfile | extract -i '**text' | humsed 's/  */\^M/g' \
```
\| egrep -4 \'\^\|(like)\|(as)\$\' \| hum \| context -e \'&mdash;\' \\
\| rid -Id




## Word Painting ##



Word painting has a long history in music. There are innumerable
examples where the music has somehow reflected the meaning of the vocal
text. Suppose we wanted to determine whether words designating height
(e.g., English "high," German "hoch," French "haute/haut") tend to
coincide with high pitches.

A simple approach would be to extract those sonorities that coincide
with any of the words high/hoch/haut and determine the average pitch. We
can then contrast this average pitch with the average pitch for the
repertory as a whole. Any significant difference might alert us to
possible word painting.

First we translate any pitch data to
<span class="rep">semits</span> and any <span class="rep">silbe</span> data to
<span class="rep">text</span>. We will also filter the outputs to ensure that only <span class="rep">semits</span>
and <span class="rep">text</span> are present.

```bash
semits * | text | extract -i '**semits,**text'
```

Since a word may be sustained through more than one pitch, and a pitch
may be intoned for more than one word, we should use the
<span class="tool">ditto</span> command to ensure that null tokens are
filled-in.

```bash
semits * | text | extract -i '**semits,**text' | ditto -s =
```

Next, we can use <span class="unix">egrep</span> to search for the words of interest:

```bash
semits * | text | extract -i '**semits,**text' | ditto -s = \
```
\| egrep -i \'\^\\\*\|high\|hoch\|haut\'

Notice the addition of the expression `^\*` in the search pattern. This
expression will match any Humdrum interpretation records and so ensures
that the output conforms to the Humdrum syntax. We can now isolate the
<span class="rep">semits</span> data and pass the output to **stats** in order to determine
the average pitch for the words coinciding with the words
high/hoch/haut:

```bash
semits * | text | extract -i '**semits,**text' | ditto -s = \
```
\| egrep -i \'\^\\\*\|high\|hoch\|haut\' \| extract -i
\'\*\*semits\' \| stats

The average pitch for the entire work can be determined as follows:

```bash
semits * | extract -i '**semits' | ditto -s = | rid -GLI \
```
\| stats




## Emotionality ##



Musical texts often convey or portray a wide range of emotions. Some
texts celebrate the ecstacy of love or lament the sorrow of loss. Yet
other texts exhibit little emotional content. Suppose that we wanted to
create a tool that would allow us to estimate the degree of emotional
"charge" in the lyrics of any given vocal work. A simple approach
might be to look for words that are commonly associated with high
emotional content.

Table 26.4 shows a sample of six words from a study where 10 people were
asked to rate the degree of emotionality associated with 100 English
words. Participants rated each word on a scale from -10 to +10 where -10
indicates a maximum negative emotional rating and +10 indicates a
maximum positive emotional rating. The values shown identify the average
rating for all 10 participants.

**Table 26.4. Average Emotionality Ratings for English Words.**

```humdrum
begin	+3.8
river	+4.2
friend	+5.2
love	+8.6
hate	-9.7
detest	-9.8
```

Clearly, such a rating system might allow us to create a tool that would
automatically search a large database and identify those vocal works
whose lyrics are most emotionally charged. One way to generate a crude
index of emotionality is to measure the average ratings for the ten most
emotion-laden words in a given input.

The <span class="tool">humsed</span> command provides an appropriate
place to start. In effect, we would take a table (such as Table 26.4)
and use it to create a series of substitutions. Emotionally-charged
words would be replaced by a numerical rating. Our <span class="tool">humsed</span> script
would have the following form. Notice that the first substitution is
used to eliminate punctuation marks.


```humdrum

  s/\[.,;:\'\`"!?\]//g
  s/begin/+3.8/
  s/river/+4.2/
  s/friend/+5.2/
  s/love/+8.6/
  s/hate/-9.7/
  s/detest/-9.8/
  /\[\^0-9+-\]/s/.\*/./
  -----------------------
Also notice that the final command transforms any data records that
contains anything other than a number to a null data token. In other
words, words that are not present in the emotionality list are not
rated.

In order to process our input, any syllabic text would first be
translated to the <span class="rep">text</span> representation, and all other spines
discarded using **extract -i**.

`text` *inputfile*` | extract -i '**text' ...`

Then we would translate the words using our "emotionality" script,
eliminate everything other than data records, and calculate the
numerical statistics:

`text` *inputfile*` | extract -i '**text' | humsed -f emotion \`
\| rid -GLId \| stats

In general, works whose lyrics express predominantly positive emotions
ought to exhibit positive emotionality estimates. Similarly, works
expressing predominantly negative emotions ought to exhibit negative
emotionality estimates. Of course the process of averaging may be
deceptive. Two sorts of problems may arise. First, a large number of
fairly neutral words will tend to dilute an otherwise large positive or
negative score. It may be preferable to observe the maximum positive and
negative values. Alternatively, it may be appropriate to limit the
average to (say) the ten most emotionally charged words. We can do this
by sorting the numerical values and using the <span class="unix">head</span> and <span class="unix">tail</span>
commands to select the highest or lowest values. In our revised
processing, we use **sort -n** to sort the values in numerical order &mdash;
placing the output in a temporary file. The UNIX <span class="unix">head</span> command allows
us to access a specified number of lines at the beginning of a file: the
option **-5** specifies the first five lines. Similarly, the UNIX
<span class="unix">tail</span> command allows us to access a specified number of lines at the
end of a file. The ten highest and lowest values are then concatenated
together and piped to the **stats** command:

`text` *inputfile*` | extract -i '**text' | humsed -f emotion \`
\| rid -GLId \| sort -n \> temp
head -5 temp \> lowest
tail -5 temp \> highest
cat highest lowest \| stats

A second problem with averaging together emotion rating values is that
an emotionally-charged work might include a rough balance of passionate
words expressing both positive and negative emotions. This might result
in an average near zero and be mistaken for lyrics that exhibit little
emotionality. The **stats** command outputs a variance measure that can
be used to gauge the spread of the data. However, another way to address
this problem is by ignoring the plus and minus signs in the input. That
is, a rough index of emotionality &mdash; independent of whether the emotion
is predominantly negative or positive would simply focus on the most
emotionally charged words.

The plus and minus signs can be eliminated using a simple <span class="tool">humsed</span>
substitution prior to numerical sorting:

```bash
humsed 's/[+-]//g'
```

Once again, we could use the <span class="unix">head</span> command to isolate the 10 or 20
most emotionally charged words.

Another variant of this approach might be to identify those words in a
text which are most emotionally charged. Suppose we wanted to determine
the location of the most emotionally charged word. A combination of
<span class="unix">sort</span> and <span class="unix">grep</span> can be applied to this task. First we generate a
spine containing the emotional-charge values taking care to eliminate
the signs:

`text` *inputfile*` | extract -i '**text' | humsed -f emotion \`
\| humsed \'s/\[+-\]//g\' \> charges

Next we assemble this new spine with the original input:

`assemble charges` *inputfile*

We can isolate data records using <span class="tool">rid</span> and then use **sort -n** to
sort according to the numbers present in the first column. The most
emotional charged word will be at the end of the file (largest number)
so we can use **tail -1** to identify the word:

`assemble charges` *inputfile*` | rid -GLId | sort -n | tail -1`

Having established what word has been estimated as having the highest
emotional-charge, we can then use **grep -n** to establish the
location(s) of this word in the original input file.




## Other Types of Language Use ##



Apart from emotionality, language tends to be used differently in
different musical genres. The contrast between *aria* and *recitative*
provides a classic example. The aria is intended to be a poetic
reflection of a certain emotional state or reaction whereas the
recitative moves the action along by focusing on concrete circumstances.
Any number of variants on our "emotionality" processing can be
conceived. For example, we might create another language index related
to the degree of abstraction/concreteness for words. Words such as
Verona, knife and Montague are comparatively concrete, whereas words
such as feud, love and tragedy are more conceptual or abstract. We might
expect to be able to observe such differences in recitative versus aria
texts.

Similarly, differences in language use can be found in folk and popular
music. In the case of the folk *ballad*, a detailed story unfolds.
Differences in language use may be correlated with the `!!!AGN`
reference record used to identify genres.




## Reprise ##



In this chapter we have introduced two text-related representations:
<span class="rep">text</span> and
<span class="rep">silbe</span>. We have examined the
<span class="tool">text</span> command (which translates from <span class="rep">silbe</span> to <span class="rep">text</span>). We have
also been exposed to the UNIX <span class="unix">fmt</span> command (a simple text formatter),
the **cut** command (similar to **extract -f**), and the <span class="unix">head</span> and
<span class="unix">tail</span> commands.

In [Chapter 34](/guide/ch34) we will examine further representations
and processes related to phonetic data.

