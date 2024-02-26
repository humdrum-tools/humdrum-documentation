---
title:		'Humdrum Toolkit Command Reference -- humdrum'
author:		David Huron
last-edited:    25 Feb 2024
chapternav:	tool
vim:		ft=html:nowrap
permalink:	/tool/humdrum/index.html
---

### COMMAND

<span class="tool">humdrum</span> &mdash; general syntax checker for Humdrum files

------------------------------------------------------------------------

## SYNOPSIS ##

`humdrum  [-v]  [inputfile ...]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">humdrum</span> command identifies whether
an input conforms to the Humdrum representation syntax. Error
messages are issued where appropriate. If the input conforms to the
Humdrum syntax, then the <span class="tool">humdrum</span> command
produces no output, unless the verbose (<span class="option">v</span>)
option is invoked.

Formally, a Humdrum representation may be defined as any ASCII input
containing zero or more *comments, data records* or *interpretations*
&mdash; with the restriction that no *data records* or *local
comments* appear without a prior *exclusive interpretation,* and
that the file maintain a coherent *spine* organization.

Humdrum comments are records (lines) that begin with an exclamation
mark (!). Local comments begin each active spine with a single
exclamation mark, whereas gobal comments begin with two exclamation
marks (!!) at the beginning of the record.

Humdrum interpretations are records that begin with an asterisk
(\*).  Tandem interpretations begin each active spine with a single
asterisk, whereas exclusive interpretations begin the record with
one or more asterisks and have at least one active spine beginning
with two asterisks. Spine-path indicators are special types of
interpretations that include any one of the following tokens: `*+`
`*-`, `*v`, `*^`, or `*x`.  Spine-path indicators cannot appear on the
same line with a tandem or exclusive interpretation.

Any record that does not begin with either an exclamation mark of
asterisk is a data record.

The following table defines some of the pertinent Humdrum terminology.

*Some Humdrum Definitions*

{% include_relative tool-humdrum-terminology.txt %}

The following files may satisfy the Humdrum syntactical requirements:

-   a file containing data records preceded by at least one exclusive interpretation
-   a file containing only comments and interpretations
-   a file containing only interpretations
-   a file containing only global comments
-   a totally empty file.

Additional interpretations may be added throughout the file. Global
comments may appear anywhere in the file. Local comments and data
records can appear only after a spine has been initiated via an
exclusive interpretation.

Illegal constructions in Humdrum include the following:

-   Empty record (i.e. a record containing only a carriage return or newline).
-   Record containing only tabs.
-   Any record beginning with a tab.
-   Any record ending with a tab (except in a global comment).
-   Any record containing two successive tab characters (except in a global comment).
-   Any data record with fewer or more spines than the immediately preceding data or exclusive interpretation record.
-   Spine-path record containing only one join-spine indication.
-   Spine-path record containing only one exchange-spine indication, or containing more than two exchange-spine indicators.

------------------------------------------------------------------------

## SPINE ORGANIZATION ##

A Humdrum file must maintain a coherent spine organization. Spines
are columns of information separated by tabs. Each spine must be
labelled with an exclusive interpretation. If the number of spines
varies in a given file, spines must be added, terminated, split,
joined, or exchanged using the appropriate spine path indicators.
Spines may (1) start, (2) terminate, (3) split (into two), (4) join
(*n*-into-one), and (5) exchange.

*Spine-path Indicators*

{% include_relative tool-humdrum-table-spine.txt %}

The use of various spine-path indicators is illustrated below:

```humdrum
{% include_relative tool-humdrum-example-01.txt %}
```

More complex examples:

```humdrum
{% include_relative tool-humdrum-complex.txt %}
```

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">humdrum</span> command provides the following
options:

{% include_relative tool-humdrum-options.txt %}

The <span class="option">v</span> option invokes the verbose mode
which provides summary information and statistics concerning the
input file. A list of all of interpretations found in the file is
output. In addition, an inventory of all of the ASCII signifiers
(characters) found in the data records is output. The total number
of data records is also provided, as well as the number of null
tokens encountered.

The verbose summary also produces a number of statistics related
to the spine-organization in the Humdrum file. Both the minimum and
maximum number of spines are identified. The paths of the various
spines through the file are also summarized. Specifically, <span
class="tool">humdrum</span> indicates the number of terminated
spines, the number of new spines introduced, the number of joined
spines, the number of split spines, and the number of exchanged
spines.

------------------------------------------------------------------------

## EXAMPLES ##

The following is a sample input that conforms to the Humdrum syntax.

```humdrum

```humdrum
{% include_relative tool-humdrum-good.txt %}
```

Where the verbose `-v` flag has been selected, the corresponding
output for the above file would be:

```
{% include_relative tool-humdrum-verbose.txt %}
```

------------------------------------------------------------------------

## FILES ##

The <span class="tool">humdrum</span> command uses a kornshell
script to invoke an executable.  In order to avoid conflict, the
executable file is named `humdrum_.exe` (`humdrum_` on UNIX) rather
than `humdrum.exe`.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit.
UNIX systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">census</span> (4), <span class="tool">proof</span> (4)

------------------------------------------------------------------------

## DIAGNOSTICS ##

The following list tabulates all of the potential errors and warnings
issued by the <span class="tool">humdrum</span> command. ``

*Potential errors and warnings issued by <span class="tool">humdrum</span>.*

{% include_relative tool-humdrum-diagnostics.txt %}



