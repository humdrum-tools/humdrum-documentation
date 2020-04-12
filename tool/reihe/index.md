---
title:		'Humdrum Toolkit Command Reference -- reihe'
author:		David Huron
last-edited:	
chapternav:	tool
vim:		ft=html
permalink:	/tool/reihe/index.html
---


### COMMAND

<span class="tool">reihe</span> &mdash; output specified row variant for a given Humdrum prime row
input

------------------------------------------------------------------------

## SYNOPSIS ##

` reihe  -[I|i]  n  [-a]  [-m  n]  primefile  reihe  -[P|p]  n  [-a]  [-m  n]  primefile  reihe  -[R|r]  n  [-a]  [-m  n]  primefile  reihe  -[R|r]  primefile  reihe  -[RI|ri]  n  [-a]  [-m  n]  primefile  reihe  -[S|s]  n  primefile`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">reihe</span> command outputs a specified row variant for a given prime
row input. Normally, <span class="tool">reihe</span> is used to generate tone-row variants for
12-tone rows. However, the \"tone-rows\" can consist of any number of
pitch-classes and need not be based on modulo-12 class-equivalence. In
certain circumstances the \"prime row\" may consist of non-numeric or
non-pitch-related data &mdash; such as articulation marks or dynamic marks.
In addition to the traditional set-theoretic transformations, <span class="tool">reihe</span>
also permits cyclic rotation (shifting) of set elements.

The input to the <span class="tool">reihe</span> command is interpreted as a *prime* or basic
set of elements from which a transformed set is to be derived and
output. Four traditional types of set-transformations can be generated
by specifying the appropriate option: <span class="option">P</span> (prime), <span class="option">I</span>
(inversion), <span class="option">R</span> (retrograde), and **-RI** (retrograde-inversion).
Either upper- or lower-case characters can be used when specifying these
options.

Following each option is a numerical parameter. For prime and inversion
forms, the numerical parameter indicates the pitch-class value for the
first \"note\" of the output form. For example, **-P 0** specifies the
prime form beginning on pitch-class 0; **-P 1** specifies the prime
transposed so that it begins on pitch-class 1. For retrograde and
retrograde-inversion forms, the numerical parameter specifies the *last*
value of the output row.

Positive integers greater than 11 are permitted in the input &mdash; but are
treated as modulo-12 equivalent (unless the <span class="option">m</span> option specifies a
different modulus). In the case of <span class="rep">pc</span> inputs, the upper-case letters
A and B are accepted as aliases for pitch-classes 10 and 11
respectively. Following the Fortean practice, pitch-classes 10 and 11
may alternatively be represented in the input by the upper-case letters
T (ten) and E (eleven) &mdash; although this latter convention is
discouraged.

In addition to the traditional set-transformations of transposition,
inversion, retrograde, and retrograde-inversion, <span class="tool">reihe</span> also provides
for rotation &mdash; where the set elements are cyclically *shifted* by a
specified number of positions. For example, **-s 3** causes each set
element to be shifted forward by 3 positions. The shift transformation
can be combined with each of the other traditional transformations only
by invoking the <span class="tool">reihe</span> command twice in succession.

Normally, <span class="tool">reihe</span> is used to transform numerical data (typically
pitch-class values). However, the retrograde (<span class="option">r</span>) and shift (<span class="option">s</span>)
operations can be performed on any data (including non-numeric data &mdash;
such as articulation marks). For non-numeric data, the retrograde option
must be invoked without a numerical parameter. Attempting to transpose
non-numeric data will result in an error.

The prime-form input file must contain a single spine. For untransposed
retrogrades and rotational shift transformations, any single-spine
Humdrum input will be accepted. If the <span class="option">m</span> option is invoked, any
input interpretation will be accepted provided all data tokens contain
numbers only. In the case of tranposed prime, inversion, and retrograde
transformations, the input must conform to the Humdrum pitch-class
(<span class="rep">pc</span>) representation. In all cases, comments, null tokens, and tandem
interpretations in the input spine are ignored and are not echoed in the
output. In the case of <span class="rep">pc</span> inputs, barlines and rests are also
ignored. Output interpretations always echo the input interpretation.

By way of example, consider the following input file `webern`: ``

-----------------------------------
!! Anton von Webern
!! Klavierstueck, opus posthumous
\*\*pc
=1
9
10
.
11
8
7
=2
1
2
3
6
5
4
=3
0
\*-
-----------------------------------

Executing the command:

` reihe -p 1 webern`

produces the following output: ``

--------
\*\*pc
1
2
3
0
11
5
6
7
10
9
8
4
\*-
--------

Notice that the comments, barlines, rests, and null tokens have been
eliminated from the input file. This leaves the output in a form better
suited to pattern matching using the <span class="tool">patt</span> or <span class="tool">pattern</span> commands.

Similarly, executing the command:

` reihe -r 1 webern`

produces: ``

--------
\*\*pc
1
5
6
7
4
3
2
8
9
0
11
10
\*-
--------

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">reihe</span> command provides the following options:

------------------- --------------------------------------------------------------------------
<span class="option">a</span>              for <span class="rep">pc</span> inputs, output alphanumeric representation (where A=10, B=11)
<span class="option">h</span>              displays a help screen summarizing the command syntax
-I *n*              output inversion set-form starting on pitch-class *n*
-i *n*              same as -I option
-m *n*              calculate according to modulo *n* arithmetic
-P *n*              output prime set-form starting on pitch-class *n*
-p *n*              same as -P option
<span class="option">R</span>              output retrograde of input row
-R *n*              output retrograde set-form ending on pitch-class *n*
<span class="option">r</span>              same as <span class="option">R</span> option
-r *n*              same as -R *n* option
-RI *n*             output retrograde-inversion set-form ending on pitch-class *n*
-ri *n*             same as -RI option
-S \[*\\(+-*\]*n*   output set-form shifted *n* elements forward (+) or backward (-)
-s \[*\\(+-*\]n     same as -S option
------------------- --------------------------------------------------------------------------

Options are specified in the command line.

When the <span class="option">a</span> option is invoked, pitch-class inputs (<span class="rep">pc</span>) will
produce pitch-class outputs using the alias values \`A\' for pitch-class
10, and \`B\' for pitch-class 11. (See the **\*\*pc** representation.)

By default, the <span class="tool">reihe</span> command assumes modulo 12 arithmetic for
prime, inversion, retrograde, and retrograde-inversion transformations.
In other words, transposing the numerical value \`11\' up three
pitch-classes results in an output value of \`2.\' The <span class="option">m</span> option can
be used to specify some other modulo value. If this option is invoked
with <span class="rep">pc</span> input, the alias values (A=T=10; B=E=11) are disabled and
only numerical data can be processed and output. The <span class="option">m</span> and <span class="option">a</span>
options are thus mutually exclusive.

------------------------------------------------------------------------

## EXAMPLES ##

The sample document given below shows a 5-tone row used in Igor
Stravinsky's \"Dirge-Canons\" from *In Memoriam Dylan Thomas.* ``

------------------------------
!! I. Stravinsky, 5-tone row
\*\*pc
2
3
6
5
4
\*-
------------------------------

The command: `reihe -s -1 igor` would result in the following output: ``

--------
\*\*pc
3
6
5
4
2
\*-
--------

The command: `reihe -a -i 2 igor` would result in the following output:
``

--------
\*\*pc
2
1
A
B
0
\*-
--------

The command: `reihe -ri 0 -m 7 igor` would result in the following
output: ``

--------
\*\*pc
5
4
3
6
0
\*-
--------

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

` **iv (2),  iv (4), **nf (2),  nf (4),  patt (4),  pattern (4), **pc (2),  pc (4), **pcset (2),  pcset (4), **pf (2),  pf (4),  recode (4),  semits (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide34.html#The_reihe_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
