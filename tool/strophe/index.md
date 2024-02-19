---
title:         'Humdrum Toolkit Command Reference -- strophe'
author:        David Huron
last-edited:   14 Feb 2024
chapternav:    tool
verovio:       "true"
vim:            ft=html
permalink:      /tool/strophe/index.html
---

### COMMAND

<span class="tool">strophe</span> -- selectively extract strophic
data for Humdrum inputs

------------------------------------------------------------------------

## SYNOPSIS ##

`strophe  [-s strophe_list | -x strophe_label]  [inputfile ...]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">strophe</span> command is used to isolate
or extract selective strophic data. Strophic data encode alternative
concurrent information for a given passage. Examples of alternative
concurrent information might include the texts for different verses
of a song, alternative renditions of the same passage (such as
*ossia* passages), or differing editorial interpretations of a given
note or sequence of notes.

The <span class="tool">strophe</span> command permits the user to
extract selected information paths (called *strophes*) present in
a Humdrum input.

Structurally, strophic data must begin from a single common spine,
split apart into two or more alternative spines, and then rejoin
to form a single spine. Since the strophes split from a common
spine, all strophic data necessarily begin by sharing the same data
type. Different exclusive interpretations may be introduced in the
strophic passage &mdash; provided all strophic spines end up sharing
the same data type just prior to being rejoined.

The beginning of a strophic passage is signalled by the presence
of a *strophic passage initiator* &mdash; a single asterisk followed
by the keyword "strophe" (`*strophe`). The end of a strophic passage
is signalled by the *strophic passage terminator* &mdash; a single
asterisk followed by the upper-case letter 'S' followed by a minus
sign (`*S-`). Each spine within the strophic passage begins with a
*strophe label* and ends with a *strophe end indicator* (`*S/fin`).

Strophe labels may consist of either alphanumeric names, or numbers.
Numerical labels should be used when the strophic data imply some
sort of order, such as verses in a song. Alphanumeric labels are
convenient for distinguishing different editions or *ossia* passages.
The following example encodes a melodic phrase containing four
numbered verses from "Das Wandern" from *Die schöne Müllerin* by
Schubert.

**Example 1:** Franz Schubert, 'Das Wandern' from "Die schöne Müllerin"

{% include verovio.html
	humdrum-height="100%"
	humdrum-position="top"
	pageWidth="1800"
	scale="40"
	source="tool-strophe-example-01"
	spacingLinear="0.6"
	tab-size="12"
	filter='shed -x text -e "s/\\s+([,!])+/$1/g; s/^[%|]$/./" | autobeam | autobeam -l'
%}
<script type="application/x-humdrum" id="tool-strophe-example-01">
{% include_relative tool-strophe-example-01.txt %}
</script>

Notice that this file contains a single section labelled 'V' (verse)
and that an expansion list occurs near the beginning of the file
that indicates the section is to be repeated 4 times in total.

The strophic passage in the above example pertains only to the spine
marked <span class="rep">text</span>. Following the strophic passage
indicator (`*strophe`), the spine is split apart until the required
number of verses are generated. Then each spine is labelled with
its own strophe label. Since the verses have an order, it is
appropriate to label them with numbers:`*S/1`, `*S/2`, and so on. The
individual verses are terminated with strophe end indicators
(`*S/fin`), the spines rejoin, and then a strophic passage terminator
(`*S-`) marks the end of the strophic passage.

Executing the command:

```bash
strophe -s 4
```

produces the following output:


**Example 2:** Extracting the 4th verse.

{% include verovio.html
	humdrum-height="100%"
	humdrum-position="top"
	pageWidth="1600"
	scale="40"
	spacingLinear="0.5"
	source="tool-strophe-example-02"
	tab-size="15"
	filter='shed -x text -e "s/\\s+([,!])+/$1/g; s/^[%|]$/./" | autobeam | autobeam -l'
%}
<script type="application/x-humdrum" id="tool-strophe-example-02">
{% include_relative tool-strophe-example-02.txt %}
</script>

Strophic encodings are nearly always encoded in *abbreviated* rather
than *through-composed* file formats. Abbreviated encodings employ
*section labels* and *expansion-lists* in order to identify how
various passages are repeated and ordered.

When extracting a single strophe, either the abbreviated or
through-composed versions can be used as input. However, when using
the <span class="tool">strophe</span> command to select more than
one strophe for output, it is essential that the input first be
expanded to a through-composed version, via the <span
class="tool">thru</span> command. For example, in order to select
the first and third verses in the above passage by Schubert, the
user would need to execute the following command pipeline:

```bash
thru wandern.krn | strophe -s 1,3
```

The list following the <span class="option">s</span> option can
contain individual strophes separated by commas. For example, the
following command extracts verses 1, 3 and 4 in succession:

```bash
thru wandern.krn | strophe -s 1,3,4
```

Strophes may also be output in non-numeric order as in the following
command invocation:

```
thru wandern.krn | strophe -s 4,3,2,1
```

If the <span class="option">x</span> option is invoked, <span
class="tool">strophe</span> outputs only a single strophe whose
string *label* is specified as an option. Strophe names need not
be numerical. E.g.

```bash
strophe -x ossia
```

If the <span class="tool">strophe</span> command is invoked without
any option, then all strophes are expanded in the output in numerical
order beginning with strophe 1. Missing numerical strophes (such
as a missing strophe `S/3` in a four-strophe encoding) will cause
an error to be generated and terminate the <span
class="tool">strophe</span> command.

Note that the <span class="tool">strophe</span> command allows
strophe numbers containing a single decimal point, such as strophe
`*S/4.2`. Having extracted the verse `*S/1`, the <span
class="tool">strophe</span> command will output verse `*S/1.1` in
preference to `*S/2` &mdash; if the decimal strophe is present.
This feature allows more than one strophic passage to be encoded
within a single abbreviated format file. This feature might prove
useful, for example, in a musical work that contains a brief refrain
in the middle of each verse.

The various strophe-related tandem interpretations are summarized below:

**Table 1:** *Types of Strophe Interpretations*

{% include_relative tool-strophe-table-01.txt %}

Note that for each strophic passage, all strophe labels must appear on
the same record. See [EXAMPLES](#EXAMPLES) below.

------------------------------------------------------------------------

## OPTIONS ##

The *strophe* command provides the following options:

--------------------- -------------------------------------------------------
<span class="option">h</span>                displays a help screen summarizing the command syntax

{% include_relative tool-strophe-options.txt %}

Options are specified on the command line.

------------------------------------------------------------------------

<a name="EXAMPLES"></a>

## EXAMPLES ##

The following example is concocted to illustrate the operation of
the <span class="tool">strophe</span> command. Consider the following
Humdrum input:

{% include verovio.html
	notation-visibile="false"
	source="tool-strophe-example-03"
	tab-size="16"
%}
<script type="application/x-humdrum" id="tool-strophe-example-03">
{% include_relative tool-strophe-example-03.txt %}
</script>

Since this file is in abbreviated format, we must first expand it
to through-composed form using the <span class="tool">thru</span>
command. The resulting output is:

{% include verovio.html
	notation-visible="false"
	source="tool-strophe-example-04"
	tab-size="16"
%}
<script type="application/x-humdrum" id="tool-strophe-example-04">
{% include_relative tool-strophe-example-04.txt %}
</script>

The command:

```bash
strophe file
```

will produce the following output:

{% include verovio.html
	humdrum-min-height="475px"
	notation-visible="false"
	source="tool-strophe-example-05"
	tab-size="16"
%}
<script type="application/x-humdrum" id="tool-strophe-example-05">
{% include_relative tool-strophe-example-05.txt %}
</script>


------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985). (The **strophe** command was
lost, but a partial emulation was added to Humdrum Extras.)

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">extract</span> (4), <span class="tool">thru</span> (4), strophe (2),  <span class="tool">yank</span> (4)



