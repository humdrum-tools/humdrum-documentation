---
title:		'Humdrum Toolkit Command Reference -- pcset'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/pcset/index.html
---

### COMMAND

<span class="tool">pcset</span> -- convert Humdrum pitch and pitch-class information to
set-theoretic representations

------------------------------------------------------------------------

## SYNOPSIS ##

` pcset  [-c]  [-n|p|v]  [inputfile ...]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">pcset</span> command is used to generate and convert between various
set-theoretic representations.

By default, the output is the Fortean pitch-class set type (<span class="rep">pcset</span>).
Alternatively, the user may choose to output the corresponding *normal
form* (<span class="rep">nf</span>) or the more succinct *prime form* (<span class="rep">pf</span>) or the
associated *interval-class vector* (<span class="rep">iv</span>). See
[REFERENCES](#REFERENCES) below.

In addition to accepting <span class="rep">semits</span> or <span class="rep">pc</span> inputs, <span class="tool">pcset</span> can also
process <span class="rep">nf</span>, <span class="rep">iv</span>, <span class="rep">pf</span> or <span class="rep">pcset</span> inputs. This permits the
user to determine the normal form, prime form or interval-class vector
for a given pc-set, or the interval-class vector for a given pc-set,
prime form, or normal form, etc.

For all of the above translations, <span class="tool">pcset</span> also provides a
*complementation* operator, where output values corresponding to the
pitch-class set complement. For example, when the complementation option
is invoked, an input consisting of the pitch-classes (0,4,7,10) would
produce an output pertinent to the complementary set (1,2,3,5,6,8,9,11).
Complementation can be applied to any accepted input type, including
normal form, prime form, interval-class vector, and pc-set. Note that if
the input consists of all twelve pitch-classes, <span class="tool">pcset</span> produces a
null token as the set complement.

When provided with <span class="rep">semits</span> or <span class="rep">pc</span> inputs, <span class="tool">pcset</span> treats each
input record as a set of pitches. Unisons and other pitch-class
duplications have no effect on the output. Rests within a set of pitches
are ignored; where an input record consists solely of one or more rests,
a null-token is output.

The <span class="tool">pcset</span> command is able to translate any of the representations
listed below. For descriptions of the various input representations
(including <span class="rep">pcset</span>) refer to Section 2 *(Representation Reference)* of
this reference manual.

It is recommended that output files produced using the <span class="tool">pcset</span> command
should be given names with the distinguishing extensions \`.pcs\',
\`.nf\' \`.pf\' or \`.iv\' &mdash; depending on the selected option.

------------ --------------------------------------------------------------------
<span class="rep">iv</span>       interval-class vector representation
<span class="rep">nf</span>       normal form for pitch-class sets
<span class="rep">pc</span>       pitch-class representation
<span class="rep">pcset</span>    Fortean pitch-class set name
<span class="rep">pf</span>       prime form representation
<span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0 (e.g. 12 = C5)
------------ --------------------------------------------------------------------

*Input representations processed by <span class="tool">pcset</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">pcset</span> command provides the following options:

-------- -------------------------------------------------------
<span class="option">c</span>   generate output for set complement
<span class="option">h</span>   displays a help screen summarizing the command syntax
<span class="option">n</span>   output normal form (<span class="rep">nf</span>) spine
<span class="option">p</span>   output prime form (<span class="rep">pf</span>) spine
<span class="option">v</span>   output interval-class vector (<span class="rep">iv</span>) spine
-------- -------------------------------------------------------

Options are specified in the command line.

By default, the <span class="tool">pcset</span> command outputs a <span class="rep">pcset</span> representation.

The <span class="option">n</span> option causes <span class="tool">pcset</span> to output normal form (<span class="rep">nf</span>) data
instead of <span class="rep">pcset</span> data. \"Normal form\" is a standard way of
representing the interval structure of any arbitrary set of
pitch-classes.

The <span class="option">p</span> option causes <span class="tool">pcset</span> to output the prime form (<span class="rep">pf</span>) for
the input. Prime form is analogous to rearranging notes in a chord so
that the spelling is in root position, close position, transposed so
that the root of the chord is C. By way of example, any major chord
(having any root, in any inversion, with any spelling) will have the
normal form: 0,4,7 &mdash; namely, a given (basic) pitch, plus a pitch 4
semitones above than the basic pitch, plus a pitch 7 semitones above the
basic pitch. (See [REFERENCES](#REFERENCES).)

The <span class="option">v</span> option causes interval-class vector information (<span class="rep">iv</span>) to
be output rather than <span class="rep">pcset</span> data. All pitch-class sets can be
characterized according to the possible interval-classes that can be
constructed. The six-element interval-class vector specifies the
abundance of various interval-classes from 1 semitone to 6 semitones.
(See [REFERENCES](#REFERENCES).)

Note that the <span class="tool">iv</span> command, the <span class="tool">nf</span> command, and the <span class="tool">pf</span> command
are aliases for `pcset -v`, `pcset -n` and `pcset -p` respectively.

------------------------------------------------------------------------

## EXAMPLES ##

The following command outputs the interval-class vectors for the sets
formed by successive sonorities in the input file `webern`:

` pcset -v webern > webern.iv`

The following command outputs the Fortean set type for the complement of
the sonorities given in the input file `berg`:

` pcset -c berg > berg.pcs`

The following command outputs the normal form representation for sets
formed from successive sonorities in the input file `boulez`:

` pcset -n boulez.nf`

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

[context](context.html) <span class="tool">context</span> (4), **\*\*iv** (2),
<span class="tool">iv</span> (4), **\*\*nf** (2), <span class="tool">nf</span> (4), **\*\*pc**
(2), <span class="tool">pc</span> (4), **\*\*pcset** (2), **\*\*pf** (2),
<span class="tool">pf</span> (4), **\*\*semits** (2), <span class="tool">semits</span> (4)

------------------------------------------------------------------------

[]{#REFERENCES}

## REFERENCES ##

Allen Forte, *The Structure of Atonal Music.* New Haven: Yale University
Press, 1973.

John Rahn, *Basic Atonal Theory.* New York: Longman Inc., 1980.

Straus, J. *Introduction to Post-Tonal Theory.* Englewood Cliffs, N.J.:
Prentice Hall, 1990.



