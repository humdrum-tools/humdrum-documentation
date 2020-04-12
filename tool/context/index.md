---
title:		'Humdrum Toolkit Command Reference -- context'
author:		David Huron
vim:		ft=html
permalink:	/tool/context/index.html
---

### COMMAND

<span class="tool">context</span> &mdash; congeal Humdrum data records to form a contextual frame

------------------------------------------------------------------------

### SYNOPSIS

`context [-b regexp] [-d string] [-e regexp] [-i regexp] [-n n] [-o regexp] [-p n] [inputfile ...]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">context</span> command amalgamates one or more successive input data
records into single records according to user-defined criteria. Only
single-spine Humdrum inputs are permitted. The <span class="tool">context</span> command
provides a useful means for amalgamating on a single line those data
tokens that are somehow deemed to be contextually related. For example,
<span class="tool">context</span> might be used to link together all pitches in a measure, or
pair the first and last notes of each phrase. The command is useful in
such tasks as partitioning possible pitch-class sets or grouping
arpeggio tones into chords.

In its simplest mode of operation <span class="tool">context</span> will join a specified
number of successive data records together to form a single output
record. By way of example, consider a file (named `input`) consisting of
a single spine whose data records contain the numbers 1 through 6 on
separate lines: ``


```humdrum
**numbers
1
2
3
4
5
6
*-
```

The command

```bash
context -n 3 input
```

will produce the following output: ``

```humdrum
**numbers
1 2 3
2 3 4
3 4 5
4 5 6
.
.
*-
```

Notice that the output file has been padded with null tokens so that the
number of output records matches the number of input records. By
invoking the <span class="option">p</span> option, the padded null tokens can be placed either
at the beginning or the end of the file, or split between beginning and
end. For example, the command

```bash
context -n 3 -p 3 input
```

will place the trailing null tokens in the above example at the
beginning of the output. The <span class="option">p</span> option defaults to the value 0.

If null tokens are present in the input, they remain in place, yet do
not affect the congealed data records. For example, if a null token was
present between the numbers 1 and 2 in the above input, the command

```bash
context -n 4 -p 1 input
```

would produce an output beginning with a single padded null token: ``

> `**numbers`
>
> `.`
>
> `1 2 3 4`
>
> `.`
>
> `2 3 4 5`
>
> `3 4 5 6`
>
> `.`
>
> `.`
>
> `*- ` Rather than specifying a fixed number of congealed data records,
> input records can alternatively be amalgamated according to the
> signifiers present in the input data itself. The <span class="option">e</span> option allows
> the user to specify an \"end\" signifier. When this signifier is
> encountered in the input, the input record is appended to the current
> congealed record &mdash; which is then output &mdash; and a new congealed
> output record begins. End signifiers are defined as string patterns
> using the *regular expression* syntax (see **regexp (5)**). For
> example, given an input of six successive numbers, the command
>
> ` context -e [0246] input`
>
> would produce the following output: ``
>
> > `**numbers`
> >
> > `1 2`
> >
> > `.`
> >
> > `3 4`
> >
> > `.`
> >
> > `5 6`
> >
> > `.`
> >
> > `*- `
> >
> > ------------------------------------------------------------------------
> >
> > ### OPTIONS
> >
> > The <span class="tool">context</span> command supports the following options:
> >
> > > >   ------------- ------------------------------------------------------------------------------------
> > > >   -b *regexp*   begin a new output record starting with token matching *regexp*
> > > >   -d *string*   use *string* as output delimiter for input records rather than the space character
> > > >   -e *regexp*   begin a new output record starting after token matching *regexp*
> > > >   <span class="option">h</span>        displays a help screen summarizing the command syntax
> > > >   -i *regexp*   ignore any records matching *regexp* when counting
> > > >   -n *n*        amalgamate *n* input data records for each output record
> > > >   -o *regexp*   omit any records matching *regexp* from amalgamated output; do
> > > >                 not count
> > > >   -p *n*        pad *n* (normally trailing) null tokens at the beginning of the
> > > >                 output spine
> > > >   ------------- ------------------------------------------------------------------------------------
> > > >
> > Options are specified in the command line. Note that the <span class="option">b</span> and
> > <span class="option">e</span> options are mutually exclusive with the <span class="option">n</span>, <span class="option">p</span>, and
> > <span class="option">i</span> options.
> >
> > In the default operation, <span class="tool">context</span> separates amalgamated tokens
> > by inserting a space character. (Thus the input tokens are treated
> > as subtokens in a Humdrum multiple-stop.) The <span class="option">d</span> option allows
> > the user to define an alternative string as the subtoken delimiter.
> >
> > The <span class="option">n</span> option allows the user to specify the maximum number of
> > data records assembled into a single output record.
> >
> > The <span class="option">b</span> option allows the user to specify a \"begin\" marker.
> > When this marker (*regexp*) is matched in the input, any current
> > congealed record is output, and a new congealed record begins. Begin
> > signifiers are defined as string patterns using the *regular
> > expression* syntax.
> >
> > With the <span class="option">e</span> option, if <span class="tool">context</span> encounters a data record
> > matching *regexp* then it appends the current input record to the
> > current assembled output record and begins assembling a new record
> > with the following input record.
> >
> > The <span class="option">i</span> option is used only with **-n;** it causes any data
> > records matching *regexp* to be ignored in the counting of
> > amalgamated tokens. Such \"uncounted\" records are nevertheless
> > output.
> >
> > The <span class="option">o</span> option causes data records matching *regexp* to be
> > omitted from the output.
> >
> > The <span class="option">p</span> option may be used in conjunction with <span class="option">n</span>. Normally,
> > the output from **context -n** is padded with trailing null tokens
> > &mdash; one fewer in number than the value specified with <span class="option">n</span>. The
> > <span class="option">p</span> *n* option causes *n* null tokens to be padded at the
> > *beginning* of the output spine, rather than trailing at the end.
> >
> > Note that tandem interpretations and comments are processed like
> > null tokens; they are merely echoed in the output in their
> > appropriate position. Note also that <span class="tool">context</span> automatically
> > breaks a congealed output record whenever it encounters a spine-path
> > terminator or exclusive interpretation in the input.
> >
> > ------------------------------------------------------------------------
> >
> > ### EXAMPLES
> >
> > The following excerpt from Edgar Varèse's *Density 21.5 (1936)*
> > illustrates the use of **context.** Consider the initial input: ``
> >
> > > `!! Edgar Varèse, Density 21.5 (1936)`
> > >
> > > `!! excerpt: mm.41-45`
> > >
> > > `**kern`
> > >
> > > `*MM72`
> > >
> > > `=41`
> > >
> > > `(16f#`
> > >
> > > `16e#`
> > >
> > > `[8gn`
> > >
> > > `2.g_`
> > >
> > > `=42`
> > >
> > > `4g])`
> > >
> > > `4r`
> > >
> > > `4r`
> > >
> > > `8r`
> > >
> > > `(16f#`
> > >
> > > `16e#`
> > >
> > > `=43`
> > >
> > > `6gn)`
> > >
> > > `(6e#`
> > >
> > > `6f#`
> > >
> > > `8g)`
> > >
> > > `(8f#`
> > >
> > > `12e#`
> > >
> > > `12g`
> > >
> > > `12dn`
> > >
> > > `=44`
> > >
> > > `2a-)`
> > >
> > > `(4an`
> > >
> > > `8een`
> > >
> > > `[8bb-`
> > >
> > > `=45`
> > >
> > > `4bb-]`
> > >
> > > `2.ccc#)`
> > >
> > > `=45`
> > >
> > > `8r`
> > >
> > > `*- ` A simple transformation would be to amalgamate successive
> > > data records in overlapping groups of 3. The following command:
> > >
> > > > ` context -n 3 density`
> > >
> > > would produce the following output: ``
> > >
> > > > `!! Edgar Varèse, Density 21.5 (1936)`
> > > >
> > > > `!! excerpt: mm.41-45`
> > > >
> > > > `**kern`
> > > >
> > > > `*MM72`
> > > >
> > > > `=41 (16f# 16e#`
> > > >
> > > > `(16f# 16e# [8gn`
> > > >
> > > > `16e# [8gn 2.g_`
> > > >
> > > > `[8gn 2.g_ =42`
> > > >
> > > > `2.g_ =42 4g])`
> > > >
> > > > `=42 4g]) 4r`
> > > >
> > > > `4g]) 4r 4r`
> > > >
> > > > `4r 4r 8r`
> > > >
> > > > `4r 8r (16f#`
> > > >
> > > > `8r (16f# 16e#`
> > > >
> > > > `(16f# 16e# =43`
> > > >
> > > > `16e# =43 6gn)`
> > > >
> > > > `=43 6gn) (6e#`
> > > >
> > > > `6gn) (6e# 6f#`
> > > >
> > > > `(6e# 6f# 8g)`
> > > >
> > > > `6f# 8g) (8f#`
> > > >
> > > > `8g) (8f# 12e#`
> > > >
> > > > `(8f# 12e# 12g`
> > > >
> > > > `12e# 12g 12dn`
> > > >
> > > > `12g 12dn =44`
> > > >
> > > > `12dn =44 2a-)`
> > > >
> > > > `=44 2a-) (4an`
> > > >
> > > > `2a-) (4an 8een`
> > > >
> > > > `(4an 8een [8bb-`
> > > >
> > > > `8een [8bb- =45`
> > > >
> > > > `[8bb- =45 4bb-]`
> > > >
> > > > `=45 4bb-] 2.ccc#)`
> > > >
> > > > `4bb-] 2.ccc#) =45`
> > > >
> > > > `2.ccc#) =45 8r`
> > > >
> > > > `.`
> > > >
> > > > `.`
> > > >
> > > > `*- ` Notice once again that the input and output have the same
> > > > number of records. Preserving the structure in this way allows
> > > > the user to coordinate the contextual output with the original
> > > > input using the <span class="tool">assemble</span> command.
> > > >
> > > > A more useful transformation might amalgamate successive data
> > > > records in overlapping groups of 3 *notes;* that is where rests
> > > > and barlines are not counted. The following command causes input
> > > > records containing either an equals-sign or the letter \`r\' to
> > > > be ignored when counting the number of amalgamated data records:
> > > >
> > > > ` context -n 3 -i [=r] density`
> > > >
> > > > The input and corresponding output are given in the left and
> > > > right spines below: ``
> > > >
> > > > > `!! Edgar Varèse, Density 21.5 (1936)`
> > > > >
> > > > > `!! excerpt: mm.41-45 `
> > > > >
> > > > > `**kern`
> > > > >
> > > > > `**kern`
> > > > >
> > > > > `*MM72`
> > > > >
> > > > > `*MM72`
> > > > >
> > > > > `=41`
> > > > >
> > > > > `=41 (16f# 16e# [8gn`
> > > > >
> > > > > `(16f#`
> > > > >
> > > > > `(16f# 16e# [8gn`
> > > > >
> > > > > `16e#`
> > > > >
> > > > > `16e# [8gn 2.g_`
> > > > >
> > > > > `[8gn`
> > > > >
> > > > > `[8gn 2.g_ =42 4g])`
> > > > >
> > > > > `2.g_`
> > > > >
> > > > > `2.g_ =42 4g]) 4r 4r 8r (16f#`
> > > > >
> > > > > `=42`
> > > > >
> > > > > `=42 4g]) 4r 4r 8r (16f# 16e#`
> > > > >
> > > > > `4g])`
> > > > >
> > > > > `4g]) 4r 4r 8r (16f# 16e#`
> > > > >
> > > > > `4r`
> > > > >
> > > > > `4r 4r 8r (16f# 16e# =43 6gn)`
> > > > >
> > > > > `4r`
> > > > >
> > > > > `4r 8r (16f# 16e# =43 6gn)`
> > > > >
> > > > > `8r`
> > > > >
> > > > > `8r (16f# 16e# =43 6gn)`
> > > > >
> > > > > `(16f#`
> > > > >
> > > > > `(16f# 16e# =43 6gn)`
> > > > >
> > > > > `16e#`
> > > > >
> > > > > `16e# =43 6gn) (6e#`
> > > > >
> > > > > `=43`
> > > > >
> > > > > `=43 6gn) (6e# 6f#`
> > > > >
> > > > > `6gn)`
> > > > >
> > > > > `6gn) (6e# 6f#`
> > > > >
> > > > > `(6e#`
> > > > >
> > > > > `(6e# 6f# 8g)`
> > > > >
> > > > > `6f#`
> > > > >
> > > > > `6f# 8g) (8f#`
> > > > >
> > > > > `8g)`
> > > > >
> > > > > `8g) (8f# 12e#`
> > > > >
> > > > > `(8f#`
> > > > >
> > > > > `(8f# 12e# 12g`
> > > > >
> > > > > `12e#`
> > > > >
> > > > > `12e# 12g 12dn`
> > > > >
> > > > > `12g`
> > > > >
> > > > > `12g 12dn =44 2a-)`
> > > > >
> > > > > `12dn`
> > > > >
> > > > > `12dn =44 2a-) (4an`
> > > > >
> > > > > `=44`
> > > > >
> > > > > `=44 2a-) (4an 8een`
> > > > >
> > > > > `2a-)`
> > > > >
> > > > > `2a-) (4an 8een`
> > > > >
> > > > > `(4an`
> > > > >
> > > > > `(4an 8een [8bb-`
> > > > >
> > > > > `8een`
> > > > >
> > > > > `8een [8bb- =45 4bb-]`
> > > > >
> > > > > `[8bb-`
> > > > >
> > > > > `[8bb- =45 4bb-] 2.ccc#)`
> > > > >
> > > > > `=45`
> > > > >
> > > > > .

`4bb-]`

.

`2.ccc#)`

.

`=45`

.

`8r`

.

`*-`

`*- ` Notice that as the end of the file is approached, <span class="tool">context</span> will
continue amalgamating data records until it is no longer able to satisfy
the amalgamating criteria. If unable to complete an output record,
<span class="tool">context</span> will output a null token.

If the above command had used the <span class="option">o</span> rather than the <span class="option">i</span> option,
all of the rests and barlines would have been omitted from the output.
Otherwise, the output would be the same as given above.

A more musically useful partitioning of Varèse's work might be based on
slur markings. The following command uses open- and closed-slur markings
to demarcate the contextual outputs; (note the need to escape the
parentheses since they are regular expression metacharacters).

> ` context -b '\(' -e '\)' -o '[=r]' density`

Notice that the ensuing output (shown below) pads the output with null
tokens in order to maintain the same number of data records as the
original input. (An output such as the following might be used as input
to a command sequence such as **pc -x \| pcset**). ``

> `!! Edgar Varèse, Density 21.5 (1936)`
>
> `!! excerpt: mm.41-45`
>
> `**kern`
>
> `*MM72`
>
> `.`
>
> `(16f# 16e# [8gn 2.g_ 4g])`
>
> `.`
>
> .

.

.

.

.

.

.

`(16f# 16e# 6gn)`

.

.

.

`(6e# 6f# 8g)`

.

.

`(8f# 12e# 12g 12dn 2a-)`

.

.

.

.

.

`(4an 8een [8bb- 4bb-] 2.ccc#)`

.

.

.

.

.

.

.

`*- ` If there were any notes not embraced within a slur, the above
command would have caused them to be output on their own line.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

<span class"tool">context</span> (4), **grep** (UNIX), <span class"tool">nf</span> (4),
<span class"tool">patt</span> (4), <span class"tool">pattern</span> (4),
<span class"tool">pcset</span> (4)

------------------------------------------------------------------------

### WARNINGS

The <span class="option">b</span> and <span class="option">e</span> options are mutually exclusive with the <span class="option">n</span>,
<span class="option">p</span>, and <span class="option">i</span> options.

------------------------------------------------------------------------


-   [**Pertinent description in the Humdrum User Guide**](../guide19.html#The_context_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)


