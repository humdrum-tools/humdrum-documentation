---
title:		'Humdrum Toolkit Command Reference -- trans'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/trans/index.html
---

### COMMAND

<span class="tool">trans</span> -- transpose selected Humdrum pitch representations

------------------------------------------------------------------------

## SYNOPSIS ##

` trans  -d  [+-]n  [-c  [+-]n]  [-k keysig]  [inputfile ...]  [ > outputfile]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">trans</span> command transposes various Humdrum pitch representations.
Transposed outputs maintain proper pitch-interval spellings, except in
modal transposition; <span class="tool">trans</span> might be used to transpose a work up a
perfect fourth, or down an augmented third, or from major mode to
Phrygian. A \"transposition interpretation\" is appended to the output
to mark the score as having been transposed. By default, input key
signatures are retained in the output, however users can specify any
replacement key signature using the <span class="option">k</span> option.

The <span class="tool">trans</span> command is able to process those pitch-related
representations listed below. All other inputs are simply echoed in the
output. For descriptions of the various input representations refer to
Section 2 *(Representation Reference)* of this reference manual.

----------- ----------------------------------------------------------------------
<span class="rep">kern</span>    core absolute pitch representation
<span class="rep">pitch</span>   American National Standards Institute pitch notation (e.g. \"A\#4\")
<span class="rep">solfg</span>   French solfège system (fixed \`doh\')
<span class="rep">Tonh</span>    German pitch system
----------- ----------------------------------------------------------------------

*Input representations processed by <span class="tool">trans</span>.*

Transpositions are transformations that shift all pitch-signifier values
up or down by some amount. Transpositions are specified by defining a
*diatonic offset* and a *chromatic offset.* The diatonic offset affects
only the pitch-letter name used to spell a note. The chromatic offset
affects only the number of semitones shifted from the original pitch
height.

For typical transpositions, both diatonic and chromatic offsets will
need to be specified. For example, in transposing up a minor third (e.g.
from C to E-flat), the diatonic offset is \`up two pitch-letter names,\'
and the chromatic offset is \`up three semitones.\' The appropriate
command invocation would be:

` trans -d +2 -c +3 input > output`

The plus signs above are optional; in their absence, <span class="tool">trans</span> assumes
an upward transposition. Note that negative offsets can be mixed with
positive offsets. For example, ` trans -d -1 -c +1` will transpose the
pitch C to B double-sharp, and F flat to E sharp, etc. (i.e. down one
letter name, yet up one semitone).

Modal transpositions are invoked by simply omitting the chromatic offset
information. (See [EXAMPLES](#EXAMPLES) below.)

It is recommended that output files produced using the <span class="tool">trans</span> command
should be given names with the distinguishing \`.tr\' extension.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">trans</span> command provides the following options:

---------------- -------------------------------------------------------
-c \[*+-*\]*n*   transpose up(+) or down (-) *n* semitones
-d \[*+-*\]*n*   transpose up(+) or down (-) *n* diatonic letter names
<span class="option">h</span>           displays a help screen summarizing the command syntax
-k *keysig*      replace all input key signatures by *keysig*
---------------- -------------------------------------------------------

Options are specified in the command line.

Note that the <span class="option">d</span> \"option\" is manditory rather than optional.

By default, <span class="tool">trans</span> maintains any original input key signatures in the
transposed output. The <span class="option">k</span> option allows the user to specify a
replacement key signature. Either \"pitch-class\" (\*k\[\...\]) or
\"pitch-height\" (\*K\[\...\]) key signatures can be specified. (See the
*key signature* tandem interpretation &mdash; Section 3.)

------------------------------------------------------------------------

[]{#EXAMPLES}

## EXAMPLES ##

The following examples illustrate the use of <span class="tool">trans</span>.

Transposition up a minor third differs from transposition up an
augmented second:

` trans -d +2 -c +3 milhaud  trans -d +1 -c +3 milhaud`

Enharmonic transpositions can be accomplished by defining the chromatic
offset as zero semitones. For example, the following command transposes
up a diminished second. It might be used to transpose from the key of
C-sharp to the key of D-flat.

` trans -d +1 -c 0 moonlight`

Transposition up or down an octave requires both a diatonic offset and a
corresponding chromatic offset of plus or minus 12 semitones. e.g.

` trans -d -7 -c -12 guitar`

In addition to exact pitch transpositions, <span class="tool">trans</span> can also perform
*modal* transpositions. Modal transpositions arise when the pitch letter
names are modified without regard for the precise semitone offset. To
invoke a modal transposition, simply omit the chromatic offset
specification. The following transposition changes diatonic pitch-letter
names (down by two pitch-letters) so that the pitch C will become A,
etc.

` trans -d -2 major > aeolian`

For inputs in major keys, the corresponding outputs will be in Aeolian
mode.

For some applications, two or more successive transpositions may be
necessary. For example, the following pipeline modifies inputs in major
keys so that they are in the tonic Dorian mode.

` trans -d +1 major | trans -d -1 -c -2 > dorian`

The first <span class="tool">trans</span> carries out a modal transposition &mdash; up the
interval of a diatonic second. Thus, a work in D major would be placed
in E Dorian. The second <span class="tool">trans</span> returns the score down the precise
interval of a major second. Together, both transpositions would cause an
input in F major to be transformed to F Dorian; an input in B-flat major
would be transformed to B-flat Dorian, etc.

Whenever <span class="tool">trans</span> is invoked, it adds a tandem interpretation to the
output indicating that the output representation has been transposed and
is no longer at the original pitch. *Transposition tandem
interpretations* are similar in syntax to the <span class="tool">trans</span> command itself.
For example, the following tandem interpretation indicates that the
score has been transposed up a major second.

` *Trd1c2`

The tandem interpretation in effect echoes the operation of the original
transposition. If a score has undergone more than one transposition, the
associated tandem interpretations will be ordered beginning with the
most recent transposition. For example, a work that was transposed down
a perfect fourth, followed by up a diminished second:

` trans -d -3 -c -5  trans -d +1 -c 0`

would contain the tandem interpretation:

` *Trd1c0  *Trd-3c-5`

------------------------------------------------------------------------

## SAMPLE OUTPUT ##

The following example illustrates the operation of <span class="tool">trans</span>. Given the
following input: ``

---------- ----------- ---------- ----------- ---------
\*\*kern   \*\*pitch   \*\*Tonh   \*\*solfg   \*\*foo
\*k\[\]    \*          \*K\[\]    \*k\[b-\]   \*
=1         =1          =1         =1          .
c          C4          C4         do4         abc
c\#        C\#4        Cis4       do\~d4      .
d-         Db4         Des4       re\~b4      xyz
r          r           r          r           .
=2         =2          =2         =2          .
B-         Bb3         B3         si\~b3      .
B&mdash;       Bbb3        Heses3     si\~bb3     .
=3         =3          =3         =3          .
\*-        \*-         \*-        \*-         \*-
---------- ----------- ---------- ----------- ---------

the command

` trans -d 1 -c 2 -k '*k[f#c#]'`

would produce the following output: ``

--------------- ----------- --------------- --------------- ---------
\*\*kern        \*\*pitch   \*\*Tonh        \*\*solfg       \*\*foo
\*k\[f\#c\#\]   \*          \*k\[f\#c\#\]   \*k\[f\#c\#\]   \*
\*Trd1c2        \*Trd1c2    \*Trd1c2        \*Trd1c2        \*
=1              =1          =1              =1              .
d               D4          D4              re4             abc
d\#             D\#4        Dis4            re\~d4          .
e-              Eb4         Es4             mi\~b4          xyz
r               r           r               r               .
=2              =2          =2              =2              .
c               C4          C4              do4             .
c-              Cb4         Ces4            do\~b4          .
=3              =3          =3              =3              .
\*-             \*-         \*-             \*-             \*-
--------------- ----------- --------------- --------------- ---------

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">humsed</span> (4), **\*\*kern** (2), <span class="tool">kern</span>
(4), **key signature** (3), <span class="tool">pitch</span> (4), **\*\*pitch**
(2), <span class="tool">recode</span> (4), **\*\*solfg** (2),
[**solfg**](solfg.html) (4), **\*\*Tonh** (2), [**tonh**](tonh.html)
(4), **transposition** (3)

------------------------------------------------------------------------

## WARNINGS ##

It is important not to confused transposed scores with notations of
music for transposing instruments (such as the horn in F or the clarinet
in B-flat). The `**pitch, **kern, **Tonh`, and <span class="rep">solfg</span> representations
are intended to represent absolute or concert pitch; transposed scores
are considered deviations from this convention. The *transpose tandem
interpretation* should not be used to indicate that an encoding is for a
transposing instrument. A special tandem interpretation &mdash; beginning
` *ITr` &mdash; is reserved for such designations. The interpretation ` *Tr`
means that the encoding no longer represents absolute or concert pitch.
By contrast, the interpretation ` *ITr` means that the instrumentalist
reads from a score whose pitches are notated differently from concert
pitch; nevertheless, the ensuing data is encoded at concert pitch. For
example, a trumpet in B-flat plays a B-flat by fingering the pitch C.
The absolute pitch (B-flat) is the proper `**kern, **pitch, **solfg`, or
<span class="rep">Tonh</span> encoding. Since the instrumentalist's *notation* is transposed
up 1 diatonic letter-name and 2 chromatic semitones from the absolute or
concert pitch, the encoded score will contain the instrument's
transposition tandem interpretation

` *ITrd1c2`

(even though the encoded data is at concert pitch). Note that it is
possible subsequently to transpose such a score using the <span class="tool">trans</span>
command.

Note that by default, key and key signature tandem interpretations are
not modified by <span class="tool">trans</span> since the `**pitch, **kern, **solfg`, and
<span class="rep">Tonh</span> representations are intended to encode the original key and key
signature at absolute pitch.



