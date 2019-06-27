---
title: 'Humdrum Toolkit Command Reference -- thru'
permalink: /man/thru/index.html
---

### COMMAND

**thru** -- expand Humdrum abbreviated format representation to
through-composed format

------------------------------------------------------------------------

### SYNOPSIS

` thru   [-v  version]   [inputfile ...]`

------------------------------------------------------------------------

### DESCRIPTION

The **thru** command expands *abbreviated format* Humdrum
representations to *through-composed formats* in which input passages
are rearranged and output according to some specified *expansion list.*

Musical scores frequently contain notational devices such as repeat
signs and Da Capos which permit more succinct renderings of a given
document. Humdrum *section labels* and *expansion-lists* provide
parallel mechanisms for encoding *abbreviated format* files. The
**thru** command is normally used to expand various repetition devices.
However, depending on the input, one of several expansions (dubbed
*versions*) may be possible. Hence, **thru** is also useful for
selecting a particular edition, performance, or interpretation from a
composite input.

The input to **thru** must contain one or more sections identified by
section labels. A *section* is a set of contiguous records. A *section
label* is a tandem interpretation that consists of a single asterisk,
followed by a greater-than sign, followed by a keyword that labels the
section, e.g.

> ``
>
> `*>Exposition`
>
> `*>Trio`
>
> `*>Refrain`
>
> `*>2nd ending`
>
> `*>Coda `

The section label *keywords* may contain any sequence of the following
ASCII characters: the upper- or lower-case letters `A-Z`, the numbers
`0` to `9`, the underscore (`_`), dash (`-`), period (`.`), plus sign
(`+`), octothorpe (`#`), tilde (`~`), at-sign (`@`), or space. All other
characters are forbidden. A section label interpretation may occur
anywhere in a Humdrum input, however, if more than one spine is present
in a passage, identical section labels must appear concurrently in all
spines.

Sections begin with a section label and end when either another section
label is encountered, all spines are assigned new exclusive
interpretations, or all spines terminate. If there is more than one
spine present in a passage, identical section labels must appear
concurrently in all spines.

An *expansion-list* is a tandem interpretation that takes the form of a
single asterisk followed by a greater-than sign, followed by an optional
label, followed by a list of section-labels enclosed in square brackets
and separated by commas. Examples are given below. The first and second
expansion-lists identify two section-labels in their lists. The last
three expansion-lists have been labelled \`long,\' \`1955\' and
\`Czerny\_edition\' respectively.

> ``
>
> `*>[section1,2nd ending]`
>
> `*>long[Exposition,Exposition]`
>
> `*>1955[Aria]`
>
> `*>Czerny_edition[refrain] `

The **thru** command outputs each section in the order specified in the
expansion list. If more than one expansion list is present in a file,
then the desired *version* is indicated on the command line via the
**-v** option. (See [EXAMPLES](#EXAMPLES).)

------------------------------------------------------------------------

### OPTIONS

The **thru** command provides the following options:

>   -------------- -----------------------------------------------------------------
>   **-h**         displays a help screen summarizing the command syntax
>   -v *version*   expand the encoding according to expansion-list label *version*
>   -------------- -----------------------------------------------------------------
>
Options are specified in the command line.

------------------------------------------------------------------------

[]{#EXAMPLES}

### EXAMPLES

The following examples illustrate the operation of the **thru** command.
Consider the following simple file: ``

>   ----------------- -----------------
>   \*\*example       \*\*example
>   \*\>\[A,B,A,C\]   \*\>\[A,B,A,C\]
>   \*\>A             \*\>A
>   data-A            data-A
>   \*\>B             \*\>B
>   data-B            data-B
>   \*\>C             \*\>C
>   data-C            data-C
>   \*-               \*-
>   ----------------- -----------------
>
This example contains just three data records \-- each of which has been
labelled with its own section label. The file contains a single
unlabelled expansion list which indicates that \`A\' section should be
repeated between the \`B\' and \`C\' sections. The following command:

> ` thru inputfile`

would produce the following \"through-composed\" output: ``

>   ------------- -------------
>   \*\*example   \*\*example
>   \*thru        \*thru
>   \*\>A         \*\>A
>   data-A        data-A
>   \*\>B         \*\>B
>   data-B        data-B
>   \*\>A         \*\>A
>   data-A        data-A
>   \*\>C         \*\>C
>   data-C        data-C
>   \*-           \*-
>   ------------- -------------
>
Notice that the expansion-list record has been eliminated from the
output. A `*thru` tandem interpretation is added to all output spines
immediately following each instance of an exclusive interpretation in
the input. If `*thru` tandem interpretations are already present in the
input, they are discarded (thus, running a file through **thru** twice
will not change the file in any way). Also notice that there are now two
sections in the output sharing the same label (`*>A`). This duplication
of section-labels is not permitted in abbreviated-format encodings.

Consider the following more complex example. Imagine a *Da Capo* work in
which a conventional performance procedes as follows: a first section
(\`A\') is performed twice, followed by first and second endings \--
labelled \`B\' and \`C\' respectively. A subsequent section ensues
(\`D\'), followed by a return to the first section (\`A\'). This first
section is played just once, immediately followed by a final coda
section (\`E\').

Imagine also a hypothetical performance of this work in which Murray
Perahia makes three changes: Perahia repeats the \`D\' section, he
repeats the \`A\' section when returning to the Da Capo \-- re-using the
first ending before continuing to the coda following the repetition.
Finally, Perahia has improvised an introduction to the work. Both the
conventional interpretation and the hypothetical Perahia interpretation
can be represented in the same encoded file as follows. ``

>   --------------------------------------
>   \*\*example
>   \*\>Perahia\[X,A,B,A,C,D,D,A,B,A,E\]
>   \*\>Conventional\[A,B,A,C,D,A,E\]
>   \*\>X
>   data-X
>   \*\>A
>   data-A
>   \*\>B
>   !! 1st ending
>   data-B
>   \*\>C
>   !! 2nd ending
>   data-C
>   \*\>D
>   data-D
>   \*\>E
>   !! Coda
>   data-E
>   \*-
>   --------------------------------------
>
The hypothetical Perahia version can be recreated by invoking the
command:

> ` thru -v Perahia inputfile`

Alternatively, the \"conventional\" interpretation of the Da Capo
structure could be produced by the command:

> ` thru -v Conventional inputfile`

In each case, the **thru** command will expand the input file according
to the designated label for the expansion-lists. Note that there is no
limit to the number of expansion-lists that may appear in a Humdrum
file.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

`  strophe (4),  yank (4)`

------------------------------------------------------------------------

### WARNINGS

Humdrum ouput is not guaranteed with the **thru** command. In order to
assure Humdrum output, it is necessary to have the same number of active
spines at each point where sections are joined together in the expanded
output. In addition, the exclusive interpretations must match where
sections are joined.

Note that if an expansion list appears after some initial data records,
then **thru** causes the initial material to be output before expanding
the document according to the expansion list.

No two expansion lists can be identified using the same version label.

If two sections contain the same section label in the abbreviated
document, then subsequent sections having the same label are ignored
when expanded by **thru.**

Inputs that contain different section labels or expansion-lists in
concurrent spines are illegal and will produce an error.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide20.html#Using_the_thru_Command_to_Expand_Encodings)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
