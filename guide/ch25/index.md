---
sidebar:	toc
chapternav:	guide
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:
vim:		ft=html
permalink:	/guide/ch25/index.html
---

<div class="chapter-heading">
<h1> Chapter 25 </h1>
<h1> Similarity </h1>
</div>

------------------------------------------------------------------------


There is no precise way to measure similarity. However, there are
several useful techniques that can be used to estimate the degree
of similarity between different types of information. In this chapter
we discuss two general tools for characterizing similarity:
<span class="tool">correl</span> and <span class="tool">simil</span>.  The
<span class="tool">correl</span> command can be used to measure numerical similarity
between two sets of numbers. The <span class="tool">simil</span> command can be used to
measure similarity between non-numeric data.

In addition, we will discuss the [**accent**](/tool/accent) command
&ndash; a tool which estimates how salient or noticeable a given
note is. The **accent** command can be used to pre-process musical
passages so only those notes of greatest importance are considered
when measuring musical similarity.




## The *correl* Command ##



One way of measuring similarity is to compare the rise and fall of two
sets of numbers. Suppose, for example, that we wanted to determine
whether high pitches have a general tendency to be longer in duration
than low pitches. For each note we would establish two numerical values:
one characterizing the pitch height and one characterizing the duration
(say in seconds). Our data might look as follows:

```
**semits	**dur
7	1.00
16	1.50
14	0.50
12	2.00
7	1.00
4	0.50
5	0.50
7	1.00
*-	*-
```

This data does seem to exhibit an association between higher pitches
and longer notes. The longest notes are fairly high (12 and 16
semits), whereas most of the shortest notes (4 and 5 semits) are
lower. There are some exceptions, however, such as the 0.5 sec.
duration for a pitch of 14 semits.

The Humdrum <span class="tool">correl</span> command allows us to
characterize more precisely the degree of similarity between two
sets of numbers. The <span class="tool">correl</span> command expects precisely two input
spines; it is easily invoked:

```bash
correl inputfile
```

For the above semitone/duration data, <span class="tool">correl</span> will output the value
+0.515.

Technically, the <span class="tool">correl</span> command calculates Pearson's coefficient of
correlation between two spines containing numerical data. Correlation
coefficients range between +1 and -1. A value of +1 indicates that both
sets of numbers rise and fall in precise synchrony &mdash; although the
magnitude of the numbers may differ. For example, the following input
exhibits a correlation of +1.0 &mdash; even though the two sets of numbers
differ in overall magnitude.

```
**foo	**bar
1	100
3	300
2	200
1	100
*-	*-
```

If we multiply these numbers by a constant, or if we substract or
add a constant value to each number in one of the spines, they would
still exhibit a correlation of +1.0. In summary, correlations are
insensitive to the absolute magnitude and offsets for different
sets of numbers.

A correlation coefficient of -1 means that the rise and fall of
numerical values are exactly reversed. When one set of numbers is
rising, the other set is falling &mdash; and vice versa. By contrast,
a correlation coefficient of zero means that the two sets of numbers
are statistically independent of each other. For example, comparing
two large sets of random numbers will result in a correlation
coefficient near zero.

The <span class="tool">correl</span> command attends only to numerical input data.
Non-numerical data is simply ignored. If a data token contains a
mix of numeric and non-numeric characters, then only the first
complete numerical subtoken is considered. The following examples
illustrate how <span class="tool">correl</span> interprets mixed data tokens:

**Table 25.1** Numerical interpretations of data tokens by <span class="tool">correl</span>.

| token	    | interpretation
|-----------|--------------
|4gg#	    |	4
|4.gg\#	    |	4
|-32aa      |	-32
|-aa33      |	33
|x7.2yz     |	7.2
|a7..2bc    |	7
|\[+5\]12   |	5
|\$17\@2    |	17
|=28b       |	28
|a1b2 c.3.d    |	1 0.3


Notice in the last example that multiple-stops are treated as
potentially independent numbers. For example, if the data token encodes
a double-stop, then <span class="tool">correl</span>

will determine whether both subtokens can be interpreted numerically.

In normal operation, the <span class="tool">correl</span> command expects numerical data to be
precisely matched in both input spines. That is, if a particular data
record contains no numbers in the left spine, it should also contain no
numbers in the right spine. Similarly, if the left spine contains three
numbers (in a triple stop) then the right spine must also contain three
numbers in the same record. If there is any breach of the criterion of
number pairing, <span class="tool">correl</span> will issue an error message and stop.

Suppose we had a passage of two-part, first species counterpoint and we
were interested in whether the two voices tend toward contrary and
oblique motion rather than parallel and similar motion. In first species
counterpoint, each pitch in the upper voice is matched with a pitch in
the lower voice. We could measure the pitch-related correlation between
the two parts as follows:

```bash
semits species1.krn | correl -s ^=
```

The output will consist of a single numerical value. If the value
is positive, then it indicates that the parts tend to move up and
down together in pitch. That is, a positive correlation indicates
a preponderance of parallel and similar contrapuntal motion.
Conversely, a negative correlation would indicate a preponderance
of contrary and oblique motion.

Notice the use of the <span class="option">s</span> option in the above command. Since
common system barlines often contain measure numbers (e.g. `=28`),
they are interpretable as numeric data. For most inputs, the user
will not want to have measure numbers participate in the similarity
calculation. The <span class="option">s</span> option allows the user to specify a regular
expression indicating data records to skip.

Now suppose that we wanted to measure a similar pitch-related
correlation for a passage of second species counterpoint. In second
species counterpoint, there are two pitches in the upper voice for
each pitch in the lower voice. Translating our pitch data to semitones
will result in a failure of the matched-pairs criterion. There are
two ways of overcoming this problem. One method is to use
<span class="tool">ditto</span> to repeat the sustained semitone value for
the slower-moving part:

```bash
semits species2.krn | ditto -s ^= | correl -s ^=
```

Another approach would be to omit from consideration those notes
that are not concurrent with a note in the other voice. The <span class="option">m</span>
option for <span class="tool">correl</span> disables the matched-pairs criterion. That
is, if numerical data is missing from either one of the input spines,
<span class="tool">correl</span> will simply discard the entire data
record from the correlation calculation. Using this approach, we
would omit the <span class="tool">ditto</span> command:

```bash
semits species2.krn | correl -m -s ^=
```

Note that in formal statistical tests, the <span class="option">m</span> option should never be
used.




## Using a Template with *correl* ##



In the above examples, <span class="tool">correl</span> generates a single output value
indicating the degree of numerical similarity between two spines.
A more valuable use of <span class="tool">correl</span> involves scanning a spine for
portions that are similar to a brief excerpt or template. In this
mode of operation, the input consists of a single input spine plus
a separate template that represents a pattern being sought.

The <span class="option">f</span> option for <span class="tool">correl</span> allows the user
to specify a file that acts as a template which is then scanned
across some input. By way of example, suppose we are looking for
motivic instances similar to the first four notes of *Frère Jacques*.
Our template file might look as follows:

![](guide.figures/guide25.0.gif)

```
**semits
0
2
4
0
*-
```

We would like to scan an entire work looking for possible matches
or similar passages. The following example shows a sample input and
corresponding output &mdash; given the above template. The left-most
spine is the original input represented using the French
<span class="rep">solfg</span> scheme. The middle spine is the input
(translated to <span class="rep">semits</span>) supplied to the <span class="tool">correl</span>
command. The right-most spine was generated using the following
command:


```
**solfg	**semits	**correl
=1	=1	=1
do	0	1.000
re	2	-0.500
mi	4	-0.866
do	0	0.866
=2	=2	=2
do	0	1.000
re	2	-0.500
mi	4	0.000
do	0	0.945
=3	=3	=3
mi	4	0.982
fa	5	-0.327
so	7	-0.655
=4	=4	=4
mi	4	0.982
fa	5	.
so	7	.
*-	*-	*-
```


The similarity values generated by <span class="tool">correl</span> are output as a
<span class="rep">correl</span> spine. Each successive
value in the output spine is matched with a data token in the target
input file (<span class="rep">semits</span>). For example, the initial output value (1.000)
indicates that an exact positive correlation occurs between the template
and the input. Another exact positive correlation occurs at the
beginning of measure 2. More interesting, perhaps, are the high
correlations (+0.982) at the beginning of measures 3 and 4. Although the
semitone patterns differ (do, re, mi = +2 +2 semits; mi, fa, so = +1 +2
semits), the correlations remain high because of the approximate
numerical similarity. This property gives <span class="tool">correl</span> a certain
flexibility when searching for melodic similarity.

For more sophisticated melodic similarity searches, both pitch and
rhythm might be considered. Two different correlations can be calculated
-- one for semitone contour similarity and one for durational
similarity. We can generate two <span class="rep">correl</span> spines as follows. First
generate <span class="rep">semits</span> and <span class="rep">dur</span> data so our inputs to <span class="tool">correl</span> are
numerical.

```bash
semits inputfile > temp.sem
dur inputfile > temp.dur
```

Generate independent <span class="rep">correl</span> spines for the semitone pitch and
duration data, and assemble the two spines together:

```bash
correl -s ^= -f template.sem temp.sem > correl.sem
correl -s ^= -f template.dur temp.dur > correl.dur
assemble correl.sem correl.dur
```

The resulting output consists of two <span class="rep">correl</span> spines: one tracing the
moment-by-moment pitch similarity, and the other tracing the
moment-by-moment duration similarity. The output might appear as
follows:

```
**correl 	**correl
0.438 	0.284
-0.118 	0.226
0.487 	-0.008
0.606 	0.377
0.733 	0.648
0.514 	0.400
0.555 	0.013
0.320 	-0.158
-0.145 	-0.160
*-	*-
```

There are various ways of combining the pitch and duration data to
create a composite similarity measure. For example, one might sum
together the correlations on each line: passages that exhibit high
pitch/duration similarity will tend to have a large positive summed
score. Alternatively, one might set a threshold for both each of
the pitch and duration correlation coefficients and use
<span class="tool">recode</span> to mark promising points of high
correlation. Values between +0.8 and +1.0 might be recoded as
"similar"; values between +0.5 and +0.8 might be recoded as
"maybe"; all other values might be recoded as null tokens.
Assembling the recoded <span class="rep">correl</span> spines, one could
use <span class="unix">grep</span> to search for moments in the score that are suitable
marked as "similar" for both pitch and duration.

Finally, a word of caution is in order regarding the use of the
<span class="tool">correl</span> command. Correlation coefficients indicate only the magnitude
of the association between two sets of data. High correlation values can
occur purely by chance. In particular, the noteworthiness (statistical
significance) of a correlation value depends on the number of input
values given in the template. Longer templates reduce the likelihood of
spurious positive correlations. However, longer templates can also
reduce the likelihood of discovering points of true similarity.




## The *simil* Command ##



The problem of measuring similarity entails two questions: the
*criterion* of similarity and the *metric* of similarity.

First, what is the criterion of similarity? A bassoon is similar to a
*cor anglais* in tone color, however a bassoon is more similar to a
\'cello in pitch range. Moreover, the word "bassoon" is more similar
in spelling to "baboon" than either "\'cello" or "cor anglais."
The second question is how do we characterize the "distance" between
objects? How *much* is the difference in pitch range between a \'cello
and a bassoon? How *much* is the difference in spelling between
"bassoon" and "baboon"?

In the <span class="tool">correl</span> command, the criterion of
similarity arises from the user's choice of input representations. If
the input represents duration, then the results pertain to durational
similarity. If the input represents frequency, then the results pertain
to frequency similarity. The *metric* used by <span class="tool">correl</span> is a linear
numerical correlation. Since <span class="tool">correl</span> can deal only with numerical
data, it is referred to as "parametric" method for measuring
similarity. However, we know that non-numerical data can also be
similar. An "apple" is more similar to an "orange" than it is to a
"bassoon."

The <span class="tool">simil</span> command is a "non-parametric"
tool for characterizing similarity. Like **correl,** the criterion of
similarity depends on the user's choice of input representations. If
the input represents metric position, then the results pertain to
metric-position similarity. If the input represents phonetic text, then
the results pertain to phonetic similarity, etc.

The *metric* used by <span class="tool">simil</span> is a so-called "edit distance" metric.
The degree of similarity is characterized by how much modification would
be required to transform one representation to another. By way of
example, consider the spelling of the words "bassoon" and "baboon."
Suppose we are allowed the following operations: (1) insertion of a
character, (2) deletion of a character, and (3) substitution of a
character. We can transform "bassoon" to "baboon" by deleting a
letter \`s\' and substituting the letter \`b\' for the remaining letter
\`s\'. If each edit operation was assigned a "penalty" value of 1.0,
then we would say that the edit-distance between "bassoon" and
"baboon" is 2.0.

Before we describe <span class="tool">simil</span> in detail, let's examine some sample
inputs and outputs. Two inputs are required by <span class="tool">simil</span> &mdash; the
*source* and *template* inputs. Both inputs must contain single columns
of data; multi-column inputs are forbidden. The *source* input must
conform to the Humdrum syntax, however the *template* should contain
only data records.

Depending on the mode of operation, <span class="tool">simil</span>
outputs either one or two spines of continuous information regarding the
similarity of the two inputs. The length of <span class="tool">simil</span>\'s output matches
that of the *source* file.

The following example illustrates the operation of <span class="tool">simil</span>. Like
<span class="tool">correl</span>, <span class="tool">simil</span> provides a template mode where a relatively short
template is scanned over a source input. In the following example, the
source input is given in the left-most spine (labelled <span class="rep">foo</span>) and is
held in a file named `source`; the middle column consists of the letters
A, B and C, and is held in a file named `template`. The following
command:

```bash
simil source template
```

generates the third column (labelled
<span class="rep">simil</span>):


```humdrum
(source	(template	(simil
input	input)	output)
**foo	A	**simil
X	B	0.51
A	C	1.00
B	0.51
C	0.37
D	0.51
A	0.72
B	0.72
B	0.51
C	0.51
B	.
A	.
*-	*-
```

Each succesive value in the output spine is matched with a data token in
the source input file. For example, the second value (1.00) in the
<span class="rep">simil</span> spine arises from an exact match of the (A,B,C) pattern
beginning with the second data token in the source input. The second
highest value (0.72) occurs in both the sixth and seventh <span class="rep">simil</span> data
records, indicating that fairly similar sequences occur beginning with
the sixth and seventh data records in the source input. Specifically,
<span class="tool">simil</span> has recognized that the sequence (A,B,B,C) is only one
edit-operation (a deletion) different from the template (A,B,C). In the
ensuing record, <span class="tool">simil</span> has recognized that the sequence (B,B,C) is
also only one edit-operation (substitute A for B) different from
(A,B,C). Notice that the final value (0.51) indicates that the edit
distance for (C,B,A) is less like the template. Also notice that the
lowest value (0.37) corresponds to an input pattern (beginning D,D,A)
that bears little resemblance to the template.

A musically more pertinent example is given below. Here our template
consists of a harmonic pattern: *I-IV-V-I*.


```humdrum
(source	(template	(simil
input	input)	output)
**harm	I	**simil
I	IV	0.87
vi	V	0.87
ii7	I	0.51
V	0.38
V7	0.41
I	0.82
r	0.41
V/V	0.38
V	.
iii	.
iiib	.
*-	*-
```

It is important to understand that <span class="tool">simil</span> operates by comparing
entire data tokens, so the token `V7` differs as much from `V` as the
token `vi`. It is the user's responsibility to choose an input
representation that facilitates recognition of interchangeable or
equivalent data. For example, in the follow example, the harmonic data
given above has been reclassified (using <span class="tool">humsed</span>) so that the number
of distinct harmonic categories has been reduced. For example, the `ii7`
chord has been classified as a form of `subdom`inant function. Notice
how the <span class="rep">simil</span> values better
reflect the presumed harmonic similarity:


```humdrum
(source	(template	(simil
input	input)	output)
**Harm	tonic	**simil
tonic	subdom	0.92
subdom	dom	0.90
subdom	tonic	0.87
dom	0.44
dom	0.41
tonic	0.83
r	0.66
secondary	0.41
dom	.
mediant	.
mediant	.
*-	*-
```




## Defining Edit Penalties ##



Technically, the <span class="tool">simil</span> command implements a
Damerau-Levenshtein metric for edit distance (see Orpen & Huron, 1992).
Permissible edit operations include substitutions and deletions. Each
edit action incurs a penalty, and the cumulative edit-distance
determines the similarity.

In the default operation, <span class="tool">simil</span> assigns equivalent edit penalties
(1.0) for deletions and substitutions. However, the user can explicitly
define these penalties via an initialization file. The initialization
file must be named `simil.rc` and be located in the current directory or
the user's home directory. Arbitrary costs may be assigned to any of
eight edit operations shown in Table 25.2.

**Table 25.2**

```humdrum
Name	Tag	Edit	Operation
D1	Delete	a	non-repeated	token	in	String	1
D2	Delete	a	non-repeated	token	in	String	2
R1	Delete	a	repeated	token	in	String	1
R2	Delete	a	repeated	token	in	String	2
S0	Substitute	a	token	that	is	repeated	in	neither	String	1	nor	String	2
S1	Substitute	a	token	that	is	repeated	in	String	1	only
S2	Substitute	a	token	that	is	repeated	in	String	2	only
S3	Substitute	a	token	that	is	repeated	in	String	1	and	String	2
```

*Edit operations used by <span class="tool">simil</span>*.

In describing the edit operations, String 1 is the source string and
String 2 is the template string. Notice that there is no overt edit
operation for insertion: an insertion in String 1 is equivalent to a
deletion in String 2. However, different edit penalties may be defined
for deletions from String 1 (D1) compared with deletions from String 2
(D2). In musical applications defining such asymmetrical penalties may
be important. For example, two inputs may represent a basic melody and
an embellished variant of the melody. Using asymmetrical penalties
allows the user to specify that the deletion of tones from the
embellished version is less costly than deletion of tones from the basic
melody.

Since repetition is a common form of musical variation, <span class="tool">simil</span> allows
the user to distinguish between repeated and non-repeated tokens. A
repeated token is defined as one that is immediately preceded by an
identical token. Thus, in deleting a sequence of identical symbols in
String 1, say, all deletions except the first occurrence are R1
operations, whereas the deletion of the first occurrence is a D1
operation.

Note that the minimum theoretical edit-distance for any set of penalty
weightings can be determined empirically by providing <span class="tool">simil</span> with
source and template strings that share no symbols in common. For
example, the source input may consist entirely of numbers, whereas the
template input consists entirely of alphabetic characters. In the case
where all edit operations are assigned a penalty of +1.0, the minimum
quantitative similarity between two strings is 0.37.

Some user-defined weightings may give rise to peculiar results &mdash; such
as negative costs &mdash; but <span class="tool">simil</span> does not forbid this. **Simil**
generates warning messages if the weightings seem illogical; for
example, if the cost of R1 is more than that of D1. In addition,
<span class="tool">simil</span> will abort operation if the defined
edit penalties transgress the triangular inequality rule (see Orpen &
Huron, 1992). The default weighting for all operations is +1.0.

Below is a sample initialization file that defines the R1 substitution
as having an edit penalty of 0.7, whereas the R2 substitution is given a
penalty of 0.9. Edit penalties are defined by specifying the operation,
followed by some spaces or tabs, followed by some real number. Since no
other penalties are defined in this file, the remaining edit operations
use the default edit penalty of +1.0. The user can effectively disable a
given edit operation by defining an arbitrarily high edit penalty.

```bash
# This is a comment. 
```
R1

0.7

R2

0.9

Raw edit-distance scores are normally unreliable estimates of
similarity, unless the length of the template is considered. For
example, 3 editing operations constitutes a rather modest change for a
template consisting of 20 elements. However, 3 edit operations is
significant for a template consisting of only 5 elements. As a result,
in the default operation, <span class="tool">simil</span> scales the
edit-distance scores according to the length of the comparison template.
This ensures that all similarity values remain between 0 and 1.

Now that we better understand the operation of *simil*, let's return to
our analysis of the harmonic data illustrated above. It might be argued
that *changing* a chord function is more dissimilar than *repeating* a
chord function. In the following `simil.rc` file, an increased penalty
has been assigned for dissimilar substitution, and decreased penalties
have been assigned for repetition.


```humdrum
S0	1.6
S1	0.7
S3	0.7
```

Repeating the above command with this new `simil.rc` file produces the
following results:


```humdrum
(source	(template	(simil
input	input)	output)
**Harm	tonic	**simil
tonic	subdom	0.94
subdom	dom	0.91
subdom	tonic	0.87
dom	0.45
dom	0.41
tonic	0.84
r	0.68
secondary	0.42
dom	.
mediant	.
mediant	.
*-	*-
```

Notice that the similarity measure for the pattern (tonic, subdom,
subdom, dom, dom, tonic) has increased from 0.91 to 0.94.


The <span class="tool">simil</span> command can be used to characterize
innumerable types of similarity. Suppose, for example, that we wanted to
identify similar fingering patterns in music for guitar. Consider the
following work by Ferdinando Carulli:


```bash
!!!COM: Carulli, Ferdinando
```
```bash
!!!OTL: Larghetto, Opus 124, No. 23 
```
```bash
!! For guitar.
```
```bash
**fret
```
```bash
*ICstr
```
```bash
*Iguitr
```
```bash
*AT:E2
```
```bash
*RT:0:5:10:15:19:24
```
```bash
*MM60
```
```bash
: : : : |0M :
```
```bash
=1
```
```bash
|0P : : |1bI : |0A
```
```bash
: : : |1bI : |0A
```
```bash
|0P : : |2bI : |2bA
```
```bash
: : : |4dI : |4eA
```
```bash
: : : |2bI : |2bA
```
```bash
=2
```
```bash
|0P : : |1bI : |0A
```
```bash
: : : |1bI : |0A
```
```bash
|0 : : |2bI : |2bA
```
```bash
: : : |4dI : |4eA
```
```bash
: : : |2bI : |2bA
```
```bash
=3  We might be interested in a fret-board fingering pattern that consists of the following successive finger combinations: 
```
index finger
index finger
ring and little fingers
index finger
In order to search for similar fingering patterns, we need to
eliminate all but the relevant information from our representation. In
the <span class="rep">fret</span> scheme, fret-board
fingerings are indicated by the lower-case letters *a* to *e*
(*a*=thumb, *b*=index finger, *c*=middle finger, etc.). The lower-case
*n* is used to explicitly indicate no finger (i.e. open string(s)). We
can prepare our input using the following
<span class="tool">humsed</span> command. We delete all barlines,
and then eliminate all characters other than the letters *a* to *e*.
Any resulting empty lines we replace by the letter *n*.
```bash
grep -v ^= carulli | humsed 's/[^a-e]//g; s/^$/n/' carulli
```
The corresponding output would be as follows:

```bash
!!!COM: Carulli, Ferdinando
```
```bash
!!!OTL: Larghetto, Opus 124, No. 23
```
```bash
!! For guitar.
```
```bash
**fret
```
```bash
*ICstr
```
```bash
*Iguitr
```
```bash
*AT:E2
```
```bash
*RT:0:5:10:15:19:24
```
```bash
*MM60
```
```bash
n
```
```bash
b
```
```bash
b
```
```bash
bb
```
```bash
de
```
```bash
bb
```
```bash
b
```
```bash
b
```
```bash
bb
```
```bash
de
```
```bash
bb  The appropriate template file would contain the following finger successions: 
```
>   -----
>   `b`
>   b
>   de
>   b
>   -----


## The *accent* Command ##


Both the <span class="tool">correl</span> and
<span class="tool">simil</span> tools presume that all data tokens
are equally important. In the case of <span class="tool">correl</span>, each number is
weighted equally in calculating the coefficient of correlation. In
the case of <span class="tool">simil</span>, each data token has the same potential for
disrupting the similarity measure.
In musical circumstances, we are aware that not all notes are
equally important. Some notes are more perceptually more noticeable.
The effectiveness of both <span class="tool">correl</span> and <span class="tool">simil</span> can be increased
significantly if we first "filter" our data &mdash; selecting only the
most important &mdash; s of data for consideration.
The **accent** command implements a sophisticated model of the
perceptual salience or noticeability for various pitches. The
command accepts only monophonic
<span class="rep">kern</span> input and outputs a spine
containing numerical values estimating the noticeability of each
note. Output accent values vary between 0 (minimum accent) and 1
(maximum accent). Input is limited to only a single <span class="rep">kern</span> data
spine.
The **accent** command takes into account seven factors: (1) the
duration of notes (agogic stress), (2) the amount of melodic (or
pitch-related) accent, (3) metric position, (4) position in
scale-degree hierarchy, (5) primacy/recency contexts, (6) explicit
accent/articulation marks, and (7) inner-voice or outer-voice
position. No attempt is made to account for melodic expectancy, past
experience, or other factors known to influence the perceptual
salience of particular notes.
By way of illustration, consider the two passages shown in Example
25.1: from Wagner's *Rienzi* opera, and the Scottish folksong **My
Bonnie**. Two sample outputs from **accent** are given below. In
both examples the left-most spine shows the input, and the
right-most spine shows the corresponding output:

**Example 25.1.** Richard Wagner, *Rienzi* Theme. Anon. *My Bonnie
Lies Over the Ocean*.
> ![](guide.figures/guide25.1a.gif)
> ![](guide.figures/guide25.1b.gif)
> > `!!!COM: Wagner, Richard`
> >
> > `!!!OTL: Rienzi Overture `
> >
> > <span class="rep">kern</span>

```bash
**accent
```

```bash
*M4/4
```

```bash
*M4/4
```

```bash
*D:
```

```bash
*D:
```

```bash
=1
```

```bash
=1
```

```bash
4.d
```

`0.76 `\*``

```bash
32c#
```

```bash
0.48
```

```bash
32d
```

```bash
0.46
```

```bash
32e
```

```bash
0.47
```

```bash
32d
```

```bash
0.46
```

```bash
4.b
```

`0.63 `\*``

```bash
8a
```

```bash
0.52
```

```bash
=2
```

```bash
=2
```

```bash
4g
```

`0.68 `\*``

```bash
4e
```

`0.62 `\*``

```bash
4d
```

`0.66 `\*``

```bash
4A
```

`0.65 `\*``

```bash
*-
```

```bash
*- 
```

```bash
!!!OTL: My Bonnie Lies Over the Ocean 
```
```bash
**kern
```
```bash
**accent
```
```bash
*M3/4
```
```bash
*M3/4
```
```bash
*G:
```
```bash
*G:
```
```bash
4d
```
`0.705 `\*``
```bash
=1
```
```bash
=1
```
```bash
4.b
```
`0.729 `\*``
```bash
8a
```
```bash
0.513
```
```bash
4g
```
`0.671 `\*``
```bash
=2
```
```bash
=2
```
```bash
4a
```
`0.676 `\*``
```bash
4g
```
`0.652 `\*``
```bash
4e
```
`0.633 `\*``
```bash
=3
```
```bash
=3
```
```bash
4d
```
`0.696 `\*``
```bash
2B
```
`0.659 `\*``
```bash
*-
```
```bash
*-   The similarity between these two passages is more evident when the perceptually more salient tones are considered alone. Using the **accent
```
data, we might simplify one or both passages by extracting only those
notes whose accent value exceeds some threshold. In the above
examples, a threshold of 0.6 might be appropriate (marked with an
asterisk). We can isolate these tones by using the
<span class="tool">recode</span> and <span class="tool">yank</span>
commands. First, we create an appropriate reassignment file for
<span class="tool">recode</span>. In this case we have classified all notes as either
primary, secondary, or tertiary:
```bash
>=0.6    primary  >=0.5   secondary  else    tertiary
```
Assuming this file is named `reassign`, we can pre-process our passage
as follows:
```bash
recode -f reassign -s ^= -i '**accent' inputfile \
```
> \| yank -m primary -r 0 \| extract -i \'\*\*kern\' \> primary.krn
The file `primary.krn` contains only those notes having the highest
estimated accent values. Using this file, we can continue processing
using either a parametric (<span class="tool">correl</span>) or non-parametric (<span class="tool">simil</span>)
similarity method.



## Reprise ##



In this chapter we have introduced two types of similarity tools:
<span class="tool">correl</span> and
<span class="tool">simil</span>. For both tools, the criterion of
similarity depends on the user's choice of input representation. For
example, if the input represents fret-board finger patterns, then the
similarity measures will reflect fret-board fingering similarity.
Users need to choose carefully the type of pre-processing required to
address the specific domain of interest.
In particular, we noted that the Humdrum **accent** provides a useful
way of pre-processing passages so that only the structurally most
important notes are considered during processing.
The <span class="tool">correl</span> command provides a way for measuring *parametric*
similarity &mdash; where similarity is based on numerical resemblance. By
contrast, the <span class="tool">simil</span> command provides a way for measuring
*non-parametric* similarity: similar inputs are ones that require the
least editing in order for one input to be made equivalent to the
other. We saw that <span class="tool">simil</span> allows the user to define the edit
penalties associated with different kinds of modifications. This
allows the user to tailor the similarity measures to better suit the
type of data being considered.
The tools described in this chapter complement the pattern searching
tools (such as <span class="tool">patt</span>,
<span class="tool">pattern</span> and <span class="unix">grep</span>) described earlier.


