---
sidebar: toc
chapternav: guide
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:16:59 EST 2000'
permalink:	/guide/ch37/index.html
---


Humdrum Toolkit User Guide, Chapter 37
=========

Electronic Music Editing
========================

The preparation of encoded musical materials for processing is an
essential part of computer-assisted musicology. Without electronic data
to process, none of the manipulations described in this book would be
possible. The encoding and editing of musical data has been an activity
that has occupied various scholars since the earliest forays into
computer-assisted musicology (e.g., Bronson, 1959).

In this chapter we identify and describe some of the tasks and issues
involved in preparing electronic musical documents in the Humdrum
format. In general, the following discussion pertains to the production
of electronic documents representing musical score information. However,
the basic procedures are applicable to any kind of data \-- from sound
recordings to historical choreographies of ballets.


The Process of Electronic Editing
---------------------------------

Electronic editing entails translating one representation into another
representation. In many cases, an electronic edition is prepared from
existing source documents \-- such as printed scores or manuscripts. In
other cases, an electronic edition may be prepared from another
electronic form \-- such as MIDI. When translating between two formats,
it is important to be familiar with both representations. Descriptions
of a number of popular electronic music formats may be found in Eleanor
Selfridge-Field\'s encyclopedic [*Handbook of Musical
Codes*](guide.bibliog.html#Handbook) (1997).

The principal processes involved in electronic editing include
identifying possible sources and alternative versions, selecting and
encoding the material, proofing the material (using both automated and
manual methods), adding reference and editorial information, writing
appropriate research notes, generating possible analytic information,
and resolving issues related to copyright, distribution, and data
integrity.


Establishing the Goal
---------------------

Encoding and editing music is a time-consuming and labor-intensive
process. Before starting to work on a electronic edition, it is
appropriate to ask: what is the goal? What purpose will be served by the
edition? Is the objective to provide a performance copy? A historically
accurate document? A document suitable for analysis? If so, what sort of
analysis?

In general, it is wise to avoid trying to cater to all needs at once.
There is nothing wrong with creating a narrowly-defined document that
serves a modest goal. For example, if our intention is to pursue a study
of rhythm, there is little need to encode data that is extraneous to
this goal. Accordingly we might omit stem-direction, beaming, textual
underlay, and even pitch information.

Note that it is always possible to incorporate additional information at
a later date. Additional information can be inserted into a Humdrum
encoding by using the [**assemble**](/tool/assemble) and
[**cleave**](/tool/cleave) commands. In general, it is important
that the encoding of electronic documents not consume all of a
researcher\'s efforts and resources. The most common problem that beset
early projects in computational musicology was that researchers rarely
got past the stage of inputting data. Early researchers typically ran
out of time, money or enthusiasm before they could turn to *using* the
materials they had input.


Documenting Encoded Data
------------------------

More important than generating a complete and accurate database is
generating complete and accurate documentation so that future users of
the information understand the limitations of the materials. Whether or
not the electronic edition is "complete," the materials are almost
useless without proper documentation about what information is present,
what information has been omitted, what sources were used, and what
interpretations have been made. As long as the electronic materials are
well documented, users can make effective use of whatever you create.

An ethnomusicologist may have inaccurately transcribed pitches, but even
approximate pitch information can be used for a study of pitch contour.
Of course, it is better to have clean data than messay data, but even
messy data can be highly useful if the nature of the mess is well
understood by researchers. In fact, most historical information is a
mess.

Concretely, Humdrum provides several reference records that allow
electronic editors to identify what information has been encoded and
what information has been omitted or interpreted.


Sources
-------

In light of the editorial goal, you can procede to select source
materials for encoding. In many cases, this will involve selecting
printed musical scores. Begin by spending time with the materials. What
special problems or challenges are raised? What sort of Humdrum
representation would be suitable for the proposed edition? Are there
special notational symbols that suggest a new representation should be
designed? Can special representational problems be accommodated within
an existing Humdrum representation? How would users be made aware of
extensions or modifications to the representation?

In the case of musical scores, there is rarely a single source or
*Urtext*. In most cases, multiple sources are available. How do you want
to approach the problem of variant sources? One approach is to select a
single source and remain true to it. A second approach is to identify
the principal variant sources and encode each independently. A third
approach is to encode several variants within a single document and
provide Humdrum "versions" that allow users to select particular
"readings" from a single file. A fourth approach is to create your own
"critical" edition \-- based on a close re-examination of the original
materials.

An important consideration will be the copyright status of the materials
you examine. Some materials are old enough that their copyrights have
expired. Encoding older materials raises two difficulties. First, older
sources are typically not the best quality editions available. Second,
access to printed versions of older sources may be difficult for other
scholars using your data. Some publishers (such as Dover Publications)
specialize in reprinting musical scores whose copyrights have lapsed.
Although these sources may not be the best available, they are often
convenient because other scholars can easily purchase the modern Dover
reprints that correspond to your electronic edition.

The best materials are usually under copyright. If you encode this
material without permission, you will never be able to distribute the
encodings \-- even on a non-profit basis. Most modern publishers profess
an interest in electronic publishing, but (at the time of this writing)
few publishers have any pertinent expertise, and fewer yet are willing
to encourage or allow the preparation of electronic documents from their
publication catalogue by third parties. It is likely to take decades
before the financial and legal issues are satisfactorily addressed.

In some cases, you will be translating from one electronic format to
another \-- such as from MIDI to
[`**kern`](/rep/kern). Once again, be conscious of
any copyright issues that are raised. Few experiences are more
discouraging than discovering that your work cannot be distributed
because you failed to consider seriously the copyright issues involved.


Selecting a Sample from Some Repertory
--------------------------------------

Quite often, there are insufficient resources to encode an entire
corpus. Many repertories are simply too large to consider creating an
exhaustive electronic edition. Nevertheless, you might choose to encode
a subset or selection of works from the given corpus.

A common expectation is that studying a sample subset of works will
inform us about the corpus as a whole. That is, it is commonly expected
that studying a number of works by, say, Offenbach, the scholar may be
able to identify general characteristics of Offenbach\'s writing. In
order for this assumption to be valid, statisticians tell us that the
sample of works must be a *representative* sample \-- free of all sorts
of possible selection biases.

From a research perspective, the best sample is a *random sample.*
Suppose, for example, that there are 2,000 items in a particular
repertory, but you are able to encode just 100 items. You might be
tempted to select the first 100 items, or to select a subset of items
that share some common feature that makes the collection seem
"coherent."

However, picking and choosing what to encode will prevent researchers
from being able to draw general conclusions about the repertory as a
whole. For example, selecting the first 100 items will typically bias
the sample to early works in a composer\'s career. Selecting 100 random
items provides a very good statistical sample of a population of 2,000
items.

Unfortunately, since random sampling has little precedence in
traditional humanities research, many scholars are resistent to the
idea. The value of random sampling has been established beyond a doubt
by statisticians. This is not the place to rehearse the detailed
arguments. Simply take my word for it: if you can\'t encode a complete
corpus, the very best solution is to select a random sample.

In making such a random sample, it is essential to resist the temptation
to select a "random" sample "by eye." Establish a truly random
procedure (such as flipping coins or using a random number table) and
methodically follow the procedure.

Incidentally, it is common to run out of resources before completely
encoding the selected materials. As a result, you may end up encoding
only half or two-thirds of the projected materials. If you began
encoding the materials in (say) chronological order, then the resulting
database will be biased toward the early works of the repertory. In
order to avoid introducing an unwanted bias, it is also prudent to
encode the selected materials in a random order.


Encoding
--------

Once you have established your materials and have decided on the type of
encoding, you can go ahead and begin encoding the documents in random
order. Use whatever resources are available to you. These might include
scanning software, MIDI performance capture, or the Humdrum
[**encode**](/tool/encode) command. Begin by encoding a sample
section or sections. Spend some time determining ways to increase your
productivity.

As you encode the selected materials, editorial problems or questions
will inevitably arise. As you gain experience, you may realize that
earlier encoding practices were not the best. You may want to return to
these problems and encode them in a different manner. Be sure to keep
notes \-- either pencil marks on a page, or local comments in a file \--
so that you can easily revisit these problem sites later. Again, it is
valuable to encode works in random order in order to avoid possible
confounds arising from editorial experience. That is, you don\'t want a
scholar\'s conclusions about differences between early works and late
works to be merely an artifact of the electronic editor\'s increasing
experience.

Typically, it is more efficient to encode individual parts and then
assemble all parts into a single full score.


Transposing Instruments
-----------------------

In the case of the `**kern` representation, all parts are represented at
concert pitch. It is typically easier to encode the parts as written and
then transpose the result using the Humdrum
[**trans**](/tool/trans) command. For example, material for
B-flat trumpet or B-flat clarinet can be transposed using the following
command:

```bash
trans -d -1 -c -2
```

In the case of clarinet in A, a suitable transposition would be:

```bash
trans -d -2 -c -3
```

The **trans** command adds a transposition interpretation to the output
in order to identify that the material has been shifted. In the `**kern`
representation, transposed instruments must be explicitly identified
using a special "transposing-instrument interpretation" (see *Humdrum
Reference Manual* \-- Section 3 for details). A suitable interpretation
can be created by adding the upper-case letter \`I\' prior to the \`T\'
in the appropriate tandem interpretation. In the case of a horn in F for
example, the transpostion interpretation would be modified from

```bash
*Trd-4c-7
```

to:

```bash
*ITrd-4c-7
```


Instrument Identification
-------------------------

Humdrum provides standardized instrumentation indicators. Three
different types of indication are appropriate: (1) the instrument name
as indicated in the source, (2) standardized instrument name, and (3)
instrument class. Standardized instrument names can be found in
[**Appendix II**](guide.append2.html). For example, the standard
indicator for "harpsichord" is
[`*Icemba`](guide.append2.html#String_Instruments).

Standardized instrument class designators include `*ICklav` for keyboard
instruments and `*ICidio` for percussion instruments, etc., and
instrument grouping designators \-- such as `*IGripn` for *ripieno*
instruments and `*IGacmp` for accompaniment instruments. These
instrument class designators can also be found in Appendix II.

In addition, the original instrument name (as found in the score) should
also be encoded as a Humdrum local comment.


Leading Barlines
----------------

Humdrum tools prefer to have explicit information indicating the
beginning of the first measure. If a file does not begin with an
anacrusis ("pickup") then it is appropriate to encode an "invisible"
first barline. For a hypothetical file containing five spines, we would
need to insert the following line just before the first note(s) in the
work:

```humdrum
=1-	=1-	=1-	=1-	=1-
-------	-----	-----	-----	-----
Recall that the common system for representing barlines makes a
distinction between the logical *function* of a barline and it\'s visual
or *orthographic* appearance. For example, the common system for
barlines distinguishes between double barlines whose function is to
indicate the end of a work or movement, and double barlines that simply
delineate sections within the course of a work or movement. It is
possible for a barline at the end of the work to be "functionally" a
double barline, yet appear visually as a single barline.

*Functional double barlines* are encoded with a double equals sign (==)
whether or not they are visually rendered as double barlines.
*Functional single barlines* are encoded with a single equals sign (=)
whether or not they are visually rendered as single barlines.

The specific visual appearance may be encoded following the equals
sign(s). The vertical line (\|) represents a \`thin\' line and the
exclamation mark (!) represents a \`thick\' line. A typical final double
bar would be encoded:

```bash
==|!
```

Most mid-movement double bars are encoded with two thin lines and so
would be encoded:

```bash
=||
```

A common encoding error is to render mid-movement double barlines as
*functional* rather than *orthographic* double-bars.


Ornamentation
-------------

The `**kern` representation makes a distinction between whole-tone and
semitone trills and mordents. Typically, each ornament must be examined
manually and the correct code selected.

In some cases, the size of the trill or mordent will be ambiguous and so
some sort of editorial decision will be necessary. One possibility is to
add the kern \`x\' signifier immediately following the \`T\' or \`t\'.
This indicates that the trill size is an "editorial interpretation."

The `**kern` representation treats appoggiaturas in a special way. In
general, `**kern` is oriented to representing things in a manner closer
to how they sound. Consequently, appoggiaturas are encoded as they would
be logically performed. For example, a quarter-note preceded by an
appoggiatura (small note) would be performed as two eighth-notes.
Similarly, a dotted quarter-note preceded by an appoggiatura would be
performed as a quarter-note followed by an eighth-note.

All appoggiaturas must be re-encoded in a way that reflects their likely
performance. At the same time, the two notes forming the appoggiatura
must be marked in the kern representation: the initial note of the
appoggiatura is marked by the upper-case letter \``P`\' and the final
(second) note of the appoggiatura is marked by a lower-case letter
\``p`\'.


Editing Sections
----------------

It is helpful to break-up large works/movements into smaller sections
that can be labelled. In a binary work, for example, it may be useful to
label the \`A\' and \`B\' sections. In a sonata-allegro work, it may be
useful to label the introduction, exposition, development,
recapitulation, etc. Some works include explicitly notated labels. These
labels may be traditional, e.g. "Coda," or they may reflect
programatic descriptions, such as the section entitled *Il canto
degl\'uccelli* \[The song of the birds\] in Vivaldi\'s *The Four
Seasons.*

Where appropriate, suitable section labels should be created and encoded
using the Humdrum Section Label designator. Remember that section labels
can include the space character:

```bash
*>1st Theme
```

If you include section labels, you must also include a Humdrum
"Expansion List" to indicate how the sections are connected. The
Humdrum [**thru**](/tool/thru) command causes a through-composed
version of a file to be generated according to the expansion list. For
example, an expansion list for a simple binary work may be encoded as:

```bash
*>[A,B]
```

Remember that expansion lists ought to be encoded prior to the first
section label.

Whenever a work/movement includes repeats or Da Capos, section labels
and expansion lists must be encoded. In some cases, there is more than
one way of interpreting how to realize the repeats. The most
"conventional" realization should be encoded with the *unnamed
expansion list.* This will specify the default expansion using the
Humdrum **thru** command. Suppose for example, that you are encoding a
typical minuet and trio. The conventional performance practice involves
repeating all sections of both the minuet and trio, but then avoiding
the repeats in the minuet following the Da Capo. A suitable expansion
list might be:

```bash
*>[Minuet,Minuet,Trio,Trio,,Minuet]
```

An alternative expansion list might be encoded as follows (notice the
expansion-list-label *ossia*):

```bash
*>ossia[Minuet,Minuet,Trio,Trio,,Minuet,Minuet]
```


Editorialisms in the *\*\*kern* Representation
----------------------------------------------

Humdrum provides several ways of encoding editorialisms. These include
editorial footnotes, local comments, global comments, interpretation
data, *sic* and *ossia* designations, version labels, sectional labels,
and expansion lists.

The [`**kern`](/rep/kern) representation provides
several special-purpose signifiers to help make explicit various classes
of editorial amendments, interpretations, or commentaries. Five types of
editorial signifiers are available: (1) *sic* (information is encoded
literally, but is questionable) signified by the `Y` character; (2)
*invisible symbol* (Unprinted note, rest or barline, but logically
implied) signified by the `y` character; (3) *editorial interpretation*,
(a "modest" editorial act of interpretation \-- such as the
interpretation of accidentals in *musica ficta*) signified by the `x`
character; (4) *editorial intervention* (a "significant" editorial
intervention) signified by the `X` character; (5) *footnote*
(accompanying local or global comment provides a text commentary
pertaining to specified data token) signified by `?`.

One of the most onerous impositions of the `**kern` representation is
the requirement that the music be interpreted into a coherent spine
organization. Why not avoid interpreting the voicings?

The answer to this question is that editorial interventions are often
essential clarifications that make a document useable. Without voicing
information, users would be unable to calculate melodic intervals, for
example. Without melodic intervals, it may be impossible to search for
themes, motives, and other patterns. Editorial interpretations are not
simply unwarranted obfuscations. This does not mean that interpretations
are "correct" and so it may be necessary to provide several
alternative or plausible interpretations of an artifact.

One of the advantages of computers is that it is possible for documents
to undergo continuous revision. In research, it is common for documents
to be reinterpreted, annotated, or recast in light of newly found
documents.

The kern \``x`\' signifies an "editorial interpretation" \-- that the
immediately preceding signifier is interpreted. The kern \``xx`\' also
signifies an editorial interpretation where the immediately preceding
data token is interpreted. The kern \``X`\' signifies an "editorial
intervention" \-- that the immediately preceding signifier is an
editorial addition. The kern \``XX`\' also signifies an editorial
intervention where the immediately preceding data token is an editorial
addition. The kern \``y`\' designates a invisible symbol \-- such as an
unprinted note or rest that is logically implied. The kern \``Y`\'
signifies an editorial *sic* marking \-- that the information is encoded
literally, but is questionable. The kern \``?`\' signifies an editorial
footnote where the immediately preceding signifier has an accompanying
editorial footnote (located in a comment record). The kern \``??`\'
signifies an editorial footnote where the immediately preceding data
token has an accompanying editorial footnote (located in a comment
record).


Adding Reference Information
----------------------------

Reference information must be added to each file. This information
provides "library-type" information about the composer, date of
composition, place of composition, copyright notice, etc.

As many reference records should be added as possible since these are
immensely useful to Humdrum users. Essential reference records include
the following:

```humdrum
!!!COM:	[composer's	name](guide.append1.html#Authorship_Information)
!!!CDT:	[composer's	dates](guide.append1.html#CDT)
!!!OTL:	[title	(in	original	language)](guide.append1.html#OTL)
!!!OMV:	[movement	number	(if	appropriate)](guide.append1.html#OMV)
!!!OPS:	[opus	number	(if	appropriate)](guide.append1.html#OPS)
!!!ODT:	[date	of	composition](guide.append1.html#ODT)
!!!OPC:	[place	of	composition](guide.append1.html#OPC)
!!!YEP:	[publisher	of	electronic	edition](guide.append1.html#YEP)
!!!YEC:	[date	&	owner	of	electronic	copyright](guide.append1.html#YEC)
!!!YER:	[date	electronic	edition	released](guide.append1.html#YER)
!!!YEM:	[copyright	message](guide.append1.html#YEM)
!!!YEN:	[country	of	copyright](guide.append1.html#YEN)
!!!EED:	[electronic	editor](guide.append1.html#EED)
!!!ENC:	[encoder	of	document](guide.append1.html#ENC)
!!!EEV:	[electronic	edition	version](guide.append1.html#EEV)
!!!EFL:	[file	number,	e.g.	1	or	4	(1/4)](guide.append1.html#EFL)
!!!VTS:	[checksum	validation	number	(see	below)](guide.append1.html#VTS)
!!!AMT:	[metric	classification](guide.append1.html#AMT)
!!!AIN:	[instrumentation](guide.append1.html#AIN)
-----------	------------------------------------------------------------------
Where appropriate, the following reference records should also be
included:

```humdrum
!!!CNT:	[composer's	nationality](guide.append1.html#CNT)
!!!XEN:	[title	(English	translation)](guide.append1.html#XEN)
!!!OPR:	[title	of	larger	(or	parent)	work](guide.append1.html#OPR)
!!!ODE:	[dedication](guide.append1.html#ODE)
!!!OCY:	[country	of	composition](guide.append1.html#OCY)
!!!PPR:	[first	publisher](guide.append1.html#PPR)
!!!PDT:	[date	first	published](guide.append1.html#PDT)
!!!PPP:	[place	first	published](guide.append1.html#PPP)
!!!SCT:	[scholarly	catalogue	name	&	number](guide.append1.html#SCT)
!!!SMA:	[manuscript	acknowledgement](guide.append1.html#SMA)
!!!AFR:	[form	of	work](guide.append1.html#AFR)
!!!AGN:	[genre	of	work](guide.append1.html#AGN)
!!!AST:	[style	of	period](guide.append1.html#AST)
-----------	-------------------------------------------------------------
In general, place essential reference records at the beginning of a
document. These will include the composer, title of the work, etc. Less
important reference records should be placed at the end of the file.
Minimizing the number of reference records at the beginning of a file
makes it more convenient for users looking at the contents of a Humdrum
file.

Refer to the *Humdrum Reference Manual* for further information about
the types and format for different reference records.


Proof-reading Materials
-----------------------

Once you have encoded your document, you should create a error-checking
strategy. The Humdrum [**humdrum**](/tool/humdrum) command can
be used to identify whether the final encoded output conforms to the
Humdrum syntax:

```bash
humdrum full.krn
```

Use the Humdrum **proof** **-k** command to identify any syntactical
errors in any encoded `**kern` data:

```bash
proof -k full.krn
```


One of the best ways to ensure that musical data makes sense is to
listen to it. The Humdrum [**midi**](/tool/midi) and
[**perform**](/tool/perform) commands can be used to listen to
your data. The **-c** option for **midi** causes the Humdrum data to be
displayed while the MIDI data is performed. This can further help in
locating errors.

```bash
midi -c full.krn | perform
```

The **perform** command allows you to *pause* (press the space bar), to
*move* to a particular measure (type a measure number followed by
enter), to increase (type \<) or decrease (type \>) the *tempo,* and to
*return* to the beginning of the score (type enter). There are many
other functions within the **perform** command; refer to the *Humdrum
Reference Manual* \-- section 4 for further details.


Data Integrity Using the VTS Checksum Record
--------------------------------------------

When using electronic documents, it is often useful to modify the
document for some purpose. After a while, the user will become confused
about the status of a document. Is this the original distribution file?
Did I make some modification to this file that I\'ve forgotten about?
Has someone tampered with this data?

Humdrum provides a means for ensuring that a particular file is what it
purports to be. The [**veritas**](/tool/veritas) command
provides a formal means for verifying that a given Humdrum file is
identical to the original distribution file and has not been modified in
some way.

The **veritas** command works by looking for a VTS reference record in
the file. It then calculates a "checksum" for the file (excluding the
VTS record itself) and compares this value with the encoded VTS value.
If these values differ, a warning is issued that the file has been
modified in some way.

Once you are certain that an encoded Humdrum file is completely
finished, you should calculate a "checksum" value to be encoded in a
Humdrum "VTS" reference record.

In order to calculate the checksum value for a given file, use the
following command:

Open the original file and move to the bottom of the document. Then read
in the calculated checksum value. Finally, insert the \``!!!VTS: `\'
reference record designator.

You can check that everything is fine by invoking the **veritas**
command:

The command will complain only if the VTS checksum value does not
correspond to the computed checksum for the file. Finally, be sure to
include the checksum value in an index or README file for the
distribution. This provides a public venue for users to determine
whether the VTS record itself has not been modified.


Preparing a Distribution
------------------------

Finally, you may want to prepare the material you have encoded for
public distribution. Rename the score files and collect them into a
coherent repertory. If your data is encoded in the `**kern` format, be
sure to use the `.krn` file extension. Place all resulting Humdrum files
in a single directory.

Create a `README` file similar to others in Humdrum data distributions.
The file should contain a repertory title, a brief paragraph describing
the historical background for the works, a paragraph describing the
personnel involved in the production, a copyright and license notice,
and a table of contents. Avoid tabs in this file, and ensure that no
line is greater than 80-characters in length.

It is wise to also add a `LICENSE` file that reiterates whatever
licensing agreement is entailed for the distributed data.


Electronic Citation
-------------------

Electronic editions of music might be cited in printed or other
documents by including the following information. The "author" (e.g.
**!!!COM:**), the "title" \-- either original title (**!!!OTL:**) or
translated title (**!!!XEN:**). The editor (**!!!EED:**), published
(**!!!YEP:**), date of publication and copyright owner (**!!!YED:**),
and electronic version (**EEV:**). In addition, a full citation ought to
include the validation checksum (**!!!VTS:**). The validation number
will allow others to verify that a particular electronic document is
precisely the one cited. A sample citation to an electronic document
might be:

Franz Liszt, Hungarian Rhapsody No. 8 in F-sharp minor (solo piano).
Amsterdam: Rijkaard Software Publishers, 1994; H. Vorisek (Ed.),
Electronic edition version 2.1, checksum 891678772.

------------------------------------------------------------------------


Reprise
-------

In this chapter we have reviewed the principal issues involved in
preparing electronic music documents in Humdrum.

