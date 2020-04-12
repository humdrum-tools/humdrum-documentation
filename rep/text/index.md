---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Vocal Text
=====================================

## REPRESENTATION ##

<span class="rep">text</span> &mdash; vocal text representation

## DESCRIPTION ##

The <span class="rep">text</span> representation permits the representation of sung or
spoken language. Only languages transcribable into the Roman alphabet
can be represented using <span class="rep">text</span>. For non-Roman alphabets and
non-language vocables, refer to the [<span class="rep">IPA</span>](IPA.rep.html)
representation.

The <span class="rep">text</span> representation distinguishes three classes of data
tokens: text-tokens, silence-tokens, and barlines.

*Text-tokens* are of three types: syllabic, melismatic, and
polysyllabic. A *syllabic* text-token means that a single syllable is
associated with a single moment (such as a single pitch). A
*melismatic* text-token means that a single syllable is associated
with several successive moments (such as more than one pitch). A
*polysyllabic* text-token means that several syllables are associated
with a single moment (such as a single pitch).

The simplest of these is the *melismatic* text-token &mdash; which consist
merely of a single vertical bar (\|). By itself, the vertical bar
means that the previous syllable is sustained through the current
moment. Syllabic and polysyllabic text-tokens are more complicated.

In the <span class="rep">text</span> representation, text-tokens are syllable-oriented,
so words must be broken-up into the component syllables. Words may be
of three basic types: single-syllable words, multi-syllable words, and
hyphenated words (e.g. the word \"half-mast\"). As a result, four
types of syllables are distinguished: (1) a single-syllable word, (2)
a word-initiating syllable, (3) a word-completing syllable, and (4) a
mid-word syllable. In <span class="rep">text</span> the hyphen (`-`) is used to signify
syllable boundaries; the tilde (`~`) is used to signify boundaries
between hyphenated words (necessarily also a syllable boundary). The
following table illustrates the how these signifiers are used:

------------ ----------------------------------------------------------------
*text*       a single-syllable word
*text*-      a word-initiating syllable
-*text*      a word-completing syllable
-*text*-     -d-word syllable
*text*\~     a single-syllable word beginning a hyphenated multi-word
\~*text*     a single-syllable word completing a hyphenated multi-word
\~*text*\~   a single-syllable word continuing a hyphenated multi-word
\~*text*-    a word-initating syllable completing a hyphenated multi-word
-*text*\~    a word-completing syllable &mdash; part of a hyphenated multi-word
------------ ----------------------------------------------------------------

A *syllabic* text-token consists of any one of the above tokens.

Occasionally, it is useful to encode several syllables or words for a
single moment (or pitch) &mdash; as in the case of *recitativo* passages.
In the <span class="rep">text</span> representation, such multi-word or polysyllabic
text-tokens are encoded via Humdrum multiple-stops. That is, several
words or syllables are encoded on the same data record, with each
successive syllable separated by a space. The following encoding shows
two syllables/words for each note:

``

----------- -------------
\*\*pitch   \*\*text
C4          I saw
A4          a li-
G4          -ly beau-
F4          -ti- -ful ,
\*-         \*-
----------- -------------

In the <span class="rep">text</span> representation, punctuation marks &mdash; such as
commas, periods, and exclamation marks &mdash; are segregated from the
syllable texts by a space. The period character is represented by the
asterisk (`*`) in order to avoid the illegal construction of a period
(null token) in a multiple stop. Five remaining punctuation marks are
represented literally in <span class="rep">text</span>: comma (`,`), exclamation mark
(`!`), question mark (`?`), colon (`:`), and the semicolon (`;`). When
used in a melismatic context, an explicitly notated (printed) dash is
represented by a double vertical bar (`||`). This signifies both the
presence of a printed dash and the fact that the previous syllable
continues to sound. In addition, double quotation marks (`"`) and
parentheses (`()`) are also permitted. Once again, all such forms of
punctuation must be segregated from the alphabetic text by the
presence of a space. It is important to remember that periods are
represented by asterisks.

The <span class="rep">text</span> representation is intended to represent canonical
language information rather than verbatim transcriptions of a printed
score. Textual abbreviations and printing conventions such as
*\"etc.,\" \"\#\"* and *\"\$\"* must be expanded as: *et ce- -te- -ra,
num- -ber,* and *dol- -lar* respectively (depending on the language).
(If the user wishes to represent *text as printed,* an explicit
<span class="rep">underlay</span> or <span class="rep">overlay</span> representation would be more
appropriate.)

Where greater subtlety is required for pronunciation, refer to the
[<span class="rep">IPA</span>](IPA.rep.html) representation.

The original ASCII character set is regrettably hostile to non-English
languages, especially with regard to accents. With the extended
(international) ASCII set, French, German, and other accents are
properly handled, but for English users, a given computer system may
prove inflexible for non-English materials. In such cases, the
<span class="rep">text</span> representation provides the following aliases to
designate common accents. Accent signifiers are assumed to modify the
immediately preceding Roman letter.

---- --------------------------
/    acute accent
\\   grave accent
\^   circumflex
0    small superscript circle
1    macron
2    Umlaut
5    cedilla
6    hacek
7    enya (tilde)
---- --------------------------

*Accent signifiers in <span class="rep">text</span>*

Musical phrasing can be explicitly represented in <span class="rep">text</span> via the
open brace (`{`) and closed brace (`}`) for phrase-beginnings and
phrase-endings respectively. Slurs can be represented via the open
bracket (`[`) and closed bracket (`]`). Stressed and unstressed
syllables can be explicitly denoted by prepending the plus sign (`+`)
or the underscore (`_`) respectively &mdash; at the beginning of the
associated text.

A handful of vocables can be represented via <span class="rep">text</span> including
humming (signified by the upper-case letter \`M\' by itself) and
laughing (signified by the upper-case letter \`L\' by itself). Tandem
interpretation also permit encoding of the depth of vibrato and the
degree of ennunciation. For example, shallow vibrato is indicated by
`*vibrato1` whereas deep vibrato is indicated by `*vibrato9`. Sloppy
ennunciation is indicated by `*ennun1` whereas highly precise
ennunciation is indicated by `*ennun9`. Intermediate values can be
used as needed.

Apart from text-tokens <span class="rep">text</span> also permits the encoding of
silence-tokens and barlines. Silence-tokens consist simply of the
percent sign (`%`) appearing in isolation. This indicates the
termination or absence of any vocal sound.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

Much vocal music is strophic in form &mdash; containing two or more
\"verses\" sung to the same musical setting. Abbreviated
representations may take advantage of the Humdrum *strophe* mechanism
to avoid duplicate encoding of melodies, etc. See
<span class="tool">strophe</span>.

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">text</span> data
should be given names with the distinguishing \`.txt\' extension.

## SIGNIFIERS ##

The complete system of signifiers used by <span class="rep">text</span> is summarized
in the following table.

------ ------------------------------------------------
A-Z    upper-case letters A to Z
a-z    lower-case letters a to z
\%     silence token (character by itself)
L      laughing voice (character by itself)
M      humming voice (character by itself)
\-     multi-syllable-word syllable boundary
\~     hyphenated-word word separator; printed dash
\|     melisma indicator (syllable sustain)
\|\|   printed hyphen indicating melisma
.      null token (**not** period)
\*     period (must be preceded by a space)
?      question mark (must be preceded by a space)
:      colon (must be preceded by a space)
;      semicolon (must be preceded by a space)
!      exclamation mark (must be preceded by a space)
(      open parenthesis
)      closed parenthesis
{      beginning of a phrase
}      end of a phrase
\[     beginning of a slur
\]     end of a slur
=      barline
==     double barline
/      acute accent
\\     grave accent
\^     circumflex
0      small circle
1      macron
2      Umlaut
5      cedilla
6      hacek
7      enya (tilde)
------ ------------------------------------------------

*Summary of <span class="rep">text</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

-----------
\*\*text
\*English
=1
Once up-
\|\|
-on a
.
time
\|
there
=2
was a
lit- -tle
girl
.
whose
=3
\*-
-----------

Notice that the first measure contains two Humdrum double-stops
(`Once up-` and `-on a`). The double vertical bar (`||`) indicates
that the word \"upon\" is explicitly divided by a notated hyphen. The
word `time` is melismatic &mdash; spanning two time-events.

## PERTINENT COMMANDS ##

Currently, no special-purpose Humdrum commands produce <span class="rep">text</span> as
output or process <span class="rep">text</span> encoded data as input.

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">text</span>:

-------------------- -------------
language indicator   `*Deutsch`
strophe indicator    `*strophe`
verse number         `*S/3`
choral text          `*ensemble`
solo text            `*solo`
meter signatures     `*M6/8`
underlay position    `*unter`
overlay position     `*ueber`
vibrato depth        `*vibrato7`
ennunciation         `*ennun5`
-------------------- -------------

*Tandem interpretations for <span class="rep">text</span>*

## SEE ALSO ##

` assemble, **IPA, strophe, thru`

