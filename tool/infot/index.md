---
title:		'Humdrum Toolkit Command Reference -- infot'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/infot/index.html
---

### COMMAND

<span class="tool">infot</span> &mdash; calculate information theory measures for Humdrum inputs

------------------------------------------------------------------------

## SYNOPSIS ##

` infot  -b  [-H]  [-x regexp]  [inputfile ...]  infot  -n  [-H]  [-x regexp]  [inputfile ...]  infot  -p  [-H]  [-x regexp]  [inputfile ...]  infot  -s  [-x regexp]  [inputfile ...]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">infot</span> command provides a general-purpose tool for measuring the
probability relationships between user-selected data tokens. Given a
specified input stream, <span class="tool">infot</span> can calculate one of several pertinent
information-theoretic values. The values may be calculated with
reference to an independent repertoire, or may be calculated as
so-called \"self-information.\"

In conjunction with other Humdrum tools (notably the
<span class="tool">context</span> and <span class="tool">humsed</span> commands),
<span class="tool">infot</span> permits sophisticated information-theoretic analyses to be
carried out, including calculations of information flow, short-term
conditional probabilities, and longer-term *m-dependency* analyses.
Alternatively, a simple set of summary statistics can be requested. In
most cases, users will want to use <span class="tool">infot</span> to generate outputs that
are suitable for further processing.

Input to <span class="tool">infot</span> is restricted to a single spine. However, the input
data tokens may contain multiple-stops representing complex contextual
information (such as produced by the <span class="tool">context</span>
command).

For the entire input, <span class="tool">infot</span> tabulates the total number of
occurrences of each unique data record (hereafter referred to as
\`states\'). For the **-n, -p** and <span class="option">b</span> options, <span class="tool">infot</span> outputs a
two-column list where the left column indentifies each unique state and
the right column provides one of several corresponding calculated
measures. With the <span class="option">n</span> option, this measure is merely an integer
count of the number of occurrences of each corresponding state. With the
<span class="option">p</span> option, this measure is a probability of occurrence for each
state. With the <span class="option">b</span> option, this measure identifies the information
content for the corresponding state in bits.

Information content (*H*) in bits is calculated according to the classic
equation devised by Shannon and Weaver (see [REFERENCES](#REFERENCES)):

.EQ delim \$\$ .EN .EQ H\~ =\~ sum from i=1 to N \~p sub i \~log sub 2
\~1 over { p sub i } .EN

where \$H\$ is the average information (in bits), \$N\$ is the number of
possible unique states in the repertoire, and \$p sub i\$ is the
probability of occurrence of state \$i\$ from the repertoire. .EQ delim
off .EN

Note that the outputs produced by <span class="tool">infot</span> do not conform to the
Humdrum syntax.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">infot</span> command provides the following options:

>   ------------- ---------------------------------------------------------
>   <span class="option">b</span>        output information (in bits) for each unique data token
>   <span class="option">h</span>        displays a help screen summarizing the command syntax
>   <span class="option">H</span>        format output as <span class="tool">humsed</span> commands
>   <span class="option">n</span>        output frequency count for each unique data token
>   <span class="option">p</span>        output probability value for each unique data token
>   <span class="option">s</span>        output information-related summary statistics
>   -x *regexp*   exclude tokens matching *regexp* from calculations
>   ------------- ---------------------------------------------------------
>
Options are specified in the command line.

With the <span class="option">n</span> option, <span class="tool">infot</span> outputs a two-column list where the
left column indentifies each unique state present in the input, and the
right column provides an integer *count* indicating the number of
occurrences for the corresponding state.

With the <span class="option">p</span> option, <span class="tool">infot</span> outputs a two-column list where
*probabilities* of occurrence are output in the right-hand column,
rather than counts.

With the <span class="option">b</span> option, <span class="tool">infot</span> outputs the information (in bits) as
calculated according to the [Shannon-Weaver
equation.](#Shannon%20and%20Weaver)

------------------------------------------------------------------------

## EXAMPLES ##

The use of <span class="tool">infot</span> is illustrated in the following examples. Consider
the following input: ``

>   ---------
>   \*\*foo
>   A
>   B2
>   C-c
>   A
>   B2
>   A
>   A
>   B2
>   C-c
>   A
>   A
>   X Y
>   \*-
>   ---------
>
A simple command invocation would use the <span class="option">n</span> option to count the
number of occurrences of each unique data token (or state):

> ` infot -n input`

The corresponding output is: ``

>   ----- ---
>   A     6
>   B2    3
>   C-c   2
>   X Y   1
>   ----- ---
>
The tallies indicate that state \`A\' occurs 6 times, and that the least
common state (\`X Y\') occurs just once. If we had invoked the <span class="option">p</span>
option, the counts would be replaced by probabilities. The command:

> ` infot -p input`

produces the following output: ``

>   ----- -------
>   A     0.500
>   B2    0.250
>   C-c   0.167
>   X Y   0.083
>   ----- -------
>
Alternatively, the <span class="option">b</span> option:

> ` infot -b input`

would output information measures for each state, in bits: ``

>   ----- -------
>   A     1.000
>   B2    2.000
>   C-c   2.585
>   X Y   3.585
>   ----- -------
>
In the case of the <span class="option">s</span> option, summary statistics would be output,
rather than a two-column list. For the above input, the following
summary statistics would be generated: ``

>   ------------------------------------------- ---------
>   Total number of unique states in message:   4
>   Total information of message (in bits):     20.7549
>   Total possible information for message:     24
>   Info per state for equi-prob distrib:       2
>   Average information conveyed per state:     1.72957
>   Percent redundancy evident in message:      13.5213
>   ------------------------------------------- ---------
>
The first line of output merely indicates the number of unique states
found in the input (in this case just 4). The fifth output line
indicates the average information conveyed per state (in bits). The
fourth output line indicates the theoretical maximum average information
per state that could be communicated by a system having four states. The
third line indicates the maximum possible information that could be
communicated in a message of the same length as the input &mdash; given the
theoretical maximum average information. (Since there are 12 data
records, this value is simply 12 x 2 bits, or 24 bits.) The second
output line gives the actual total information for the given input
message. (This is always less-than, or equal-to the maximum theoretical
value.) The final line indicates the amount of redundancy &mdash; as a
percentage. That is, this value contrasts the actual information
conveyed with the theoretical maximum.

In general, note that as the probabilities of the input states approach
equivalence, the redundancy approaches zero and the average information
content approaches the theoretical maximum.

Consider now an example where a large number of messages from a
repertoire (dubbed `repertoire`) is passed to <span class="tool">infot</span>:

> ` infot -b repertoire`

Suppose that the following output is produced: ``

>   ------- --------
>   ABC     3.124
>   BAC     1.306
>   C C D   1.950
>   X       5.075
>   XYZ     19.334
>   ------- --------
>
This result indicates that, although there might have been hundreds of
data tokens processed in the repertoire, only five different unique
states were present. The greatest information content (lowest
probability) is associated with the state `XYZ` (19.334 bits), whereas
the lowest information content (highest probability) is associated with
the state `BAC` (1.306 bits). Notice that the multiple-stop `C C D` is
treated as a single state.

Now imagine we had another message presumed to belong to the same
repertoire as our input. We would like to trace how the information
increases and decreases over the course of this new \`message\'. This
goal involves a two-part operation. First, we re-invoke <span class="tool">infot</span> adding
the <span class="option">H</span> option, and redirect the output to a file `replace`:

> ` infot -bH repertoire > replace`

This causes <span class="tool">infot</span> to produce as output a set of
<span class="tool">humsed</span> commands. Given the identical `repertoire`
input, the following output is sent to the file `replace`:

> ` s/^ABC$/3.124/g; s/^ABC /3.124/g; s/    ABC$/3.124/g; s/    ABC /3.124/g s/^BAC$/1.306/g; s/^BAC /1.306/g; s/    BAC$/1.306/g; s/    BAC /1.306/g s/^C C D$/1.95/g; s/^C C D  /1.95/g; s/ C C D$/1.95/g; s/   C C D   /1.95/g s/^X$/5.075/g; s/^X /5.075/g; s/    X$/5.075/g; s/  X   /5.075/g s/^XYZ$/19.334/g; s/^XYZ    /19.334/g; s/   XYZ$/19.334/g; s/   XYZ /19.334/g`

Although these commands may appear somewhat cryptic, they merely
instruct the Humdrum stream editor [(<span class="tool">humsed</span>)](humsed.html) to
replace all occurrences of the five data tokens (in any input file) by
the corresponding numerical values &mdash; in this case, values that
represent the number of bits of information.

The following file (called `input`) contains the message of interest: ``

>   ---------
>   \*\*bar
>   BAC
>   BAC
>   C C D
>   .
>   =
>   \*
>   C C D
>   XYZ
>   X
>   ABC
>   BAC
>   \*-
>   ---------
>
This file can be transformed so that the data tokens are replaced by
corresponding information values as determined from the original
repertoire. This is done by invoking the <span class="tool">humsed</span>
command, and providing it with the substitution commands held in the
file `replace`:

> ` humsed -f replace input > output`

The resulting output file would be as follows: ``

>   ---------
>   \*\*bar
>   1.306
>   1.306
>   1.950
>   .
>   =
>   \*
>   1.950
>   19.334
>   5.075
>   3.124
>   1.306
>   \*-
>   ---------
>
Notice that input data tokens which do not appear in the probability
list (such as the equals-signs) remain unmodified.

Several interpretations may be made about this message. For example, the
above passage appears to show a pattern of initially low information
that increases and then decreases toward the end of the passage. This
suggests that the beginning and ending of this passage are more highly
constrained or stereotypic than the middle part of the passage.

Summing together the individual information values for this passage, the
total message conveys 35.35 bits. For five states, the maximum average
information is 2.322 bits per state, and so the expected maximum for a
message consisting of 8 items would be 8 x 2.322 or 18.58 bits. This
suggests that this message is considerably less banal, (less redundant
or more unique) than a typical message from the original repertoire. In
particular, the occurrence of the state \`XYZ\' has a low probability of
occurrence &mdash; and is likely to be a distinctive feature of this
passage.

In the above examples, only simple (zeroth-order) probabilities have
been examined. Higher-order and *m*-dependency probabilities may be
measured by reformulating the input using the <span class="tool">context</span> command.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">context</span> (4), <span class="tool">humsed</span> (4),
<span class="tool">patt</span> (4), <span class="tool">pattern</span> (4),
<span class="tool">simil</span> (4)

------------------------------------------------------------------------

[]{#REFERENCES}

## REFERENCES ##

Knopoff, L. & Hutchinson, W. \"Entropy as a measure of style: The
influence of sample length.\" *Journal of Music Theory,* Vol. 27 (1983)
pp. 75-97.

Moles, A. *Information Theory and Esthetic Perception,* Urbana:
University of Illinois Press, 1968.

Pinkerton, R.C. \"Information theory and melody.\" *Scientific
American,* Vol. 194 (1956) pp. 77-86.

Shannon, C. E., & Weaver, W. *The Mathematical Theory of Communication.*
Urbana: University of Illinois Press, 1949.

Snyder, J.L. \"Entropy as a measure of musical style: The influence of a
priori assumptions.\" *Music Theory Spectrum,* Vol. 12, No. 1 (1990) pp.
121-160.

Wong, A. K. C., & Ghahraman, D. A statistical analysis of
interdependence in character sequences. *Information Sciences,* Vol. 8
(1975) pp. 173-188.

Youngblood, J.E. \"Style as information.\" *Journal of Music Theory,*
Vol. 7 (1962) pp. 137-162.

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
