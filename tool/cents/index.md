---
title:		'Humdrum Toolkit Command Reference -- cents'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/cents/index.html
---


### COMMAND

<span class="tool">cents</span> &mdash; translate selected Humdrum pitch-related representations
to cents

------------------------------------------------------------------------

## SYNOPSIS ##

` cents  [-p n]  [-tx]  [inputfile ...]  [> outputfile.cnt]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">cents</span> command transforms various pitch-related inputs to
corresponding numerical values in hundredths of semitones. It outputs
one or more Humdrum <span class="rep">cents</span> spines containing values corresponding to
the cents distance from middle C for pitch-related input tokens. Pitches
above middle C produce positive output values, whereas pitches below
middle C produce negative output values. For example, the <span class="rep">pitch</span>
token \"C3\" is transformed to -1200 (cents).

The <span class="tool">cents</span> command is able to translate any of the pitch-related
representations listed below. In each case, a tuning standard of A4
equals 440 hertz is assumed. For descriptions of the various input
representations (including <span class="rep">cents</span>) refer to Section 2
*(Representation Reference)* of this reference manual.

It is recommended that output files produced using the **cent** command
should be given names with the distinguishing \`.cnt\' extension.

> >   ------------ -------------------------------------------------------------------------
> >   <span class="rep">cents</span>    hundredths of a semitone with respect to middle C=0
> >   <span class="rep">freq</span>     fundamental frequency (in hertz)
> >   <span class="rep">fret</span>     fretted-instrument pitch tablature
> >   <span class="rep">kern</span>     core pitch/duration representation
> >   <span class="rep">MIDI</span>     Music Instrument Digital Interface tablature
> >   <span class="rep">pitch</span>    American National Standards Institute pitch notation (e.g. \"A\#4\")
> >   <span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0 (e.g. 12 equals C5)
> >   <span class="rep">solfg</span>    French solfège system (fixed \`doh\')
> >   <span class="rep">specC</span>    spectral centroid (in hertz)
> >   <span class="rep">Tonh</span>     German pitch system
> >   ------------ -------------------------------------------------------------------------
> >
> *Input representations processed by <span class="tool">cents</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">cents</span> command provides the following options:

> >   -------- ---------------------------------------------------------------------------------
> >   <span class="option">h</span>   displays a help screen summarizing the command syntax
> >   -p *n*   output precision of *n* decimal places
> >   <span class="option">t</span>   suppresses printing of all but the first note of a group of tied `**kern notes`
> >   <span class="option">x</span>   suppresses printing of non-cents signifiers
> >   -------- ---------------------------------------------------------------------------------
> >
Options are specified in the command line.

The <span class="option">p</span> option can be used to set the precision of the output values
to *n* decimal places. The default precision is integer values only
(*n*=0). Note that <span class="tool">cents</span> is able to process <span class="rep">cents</span> as input; this
feature allows the user to round-off existing <span class="rep">cents</span> data to a
specified precision.

The <span class="option">t</span> ensures that only a single output value is given for tied
<span class="rep">kern</span> notes; the output coincides with the first note of the tie.

In the default operation, <span class="tool">cents</span> outputs non-pitch-related signifiers
in addition to the cents value. For example, the <span class="rep">pitch</span> token
\"A5zzz\" will result in the output \"2100zzz\" &mdash; that is, after
translating A5 to 2100 cents, the \"zzz\" signifiers are retained in the
output. For some applications, echoing non-pitch-related signifiers in
the output is useful. However, in other situations, the result can prove
confusing &mdash; especially, when the non-pitch-related signifiers are
numbers. Consider the case of the <span class="rep">kern</span> token \"8aa\"; after
translating \`aa\' to 2100 cents, the non-pitch-related signifier \`8\'
will also be output, hence the value 82100 &mdash; which will undoubtedly
cause confusion. The <span class="option">x</span> option is useful for eliminating
non-pitch-related signifiers from the output. For most <span class="rep">kern</span> inputs,
the <span class="option">x</span> option is recommended.

------------------------------------------------------------------------

## EXAMPLES ##

The following example illustrates the use of <span class="tool">cents</span>. The input
contains six pitch-related spines &mdash; two of which (<span class="rep">deg</span> and
<span class="rep">cocho</span>) cannot be processed by <span class="tool">cents</span>. In addition, there are two
non-pitch-related spines (<span class="rep">embell</span> and <span class="rep">metpos</span>). ``

> `` !! `cents' example.  ``
>
> <span class="rep">kern</span>
>
> <span class="rep">pitch</span>
>
> <span class="rep">MIDI</span>
>
> <span class="rep">deg</span>
>
> <span class="rep">metpos</span>
>
> <span class="rep">cocho</span>
>
> <span class="rep">Tonh</span>
>
> <span class="rep">embell</span>
>
> `*M2/4`
>
> `*M2/4`
>
> `*M2/4`
>
> `*M2/4`
>
> `*M2/4`
>
> `*M2/4`
>
> `*M2/4`
>
> `*M2/4`
>
> `*`
>
> `*`
>
> `*`
>
> `*`
>
> `*tb8`
>
> `*`
>
> `*`
>
> `*`
>
> `=1`
>
> `=1`
>
> `=1`
>
> `=1`
>
> `=1`
>
> `=1`
>
> `=1`
>
> `=1`
>
> `8ee-`
>
> `G#4foo`
>
> `/60/bar`
>
> `1foo`
>
> `1`
>
> `r`
>
> `Gis2`
>
> `ct`
>
> `.`
>
> `.`
>
> `/-60/`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `8ff`
>
> `A3`
>
> `/62/`
>
> `2`
>
> `3`
>
> `9.89`
>
> `H2`
>
> `upt`
>
> `.`
>
> `.`
>
> `/-62/`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `8dd-`
>
> `Ab3`
>
> `/70/`
>
> `1`
>
> `2`
>
> `7.07`
>
> `B2`
>
> `ct`
>
> `.`
>
> `.`
>
> `/-70/`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `8d-`
>
> `C#4`
>
> `/61/`
>
> `6`
>
> `3`
>
> `7.135`
>
> `Cis4`
>
> `sus`
>
> `.`
>
> `.`
>
> `/-61/`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `=2`
>
> `=2`
>
> `=2`
>
> `=2`
>
> `=2`
>
> `=2`
>
> `=2`
>
> `=2`
>
> `[4a-`
>
> `r`
>
> `.`
>
> `5`
>
> `1`
>
> `r`
>
> `r`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `7`
>
> `3`
>
> `5.5`
>
> `Heses2`
>
> `ct`
>
> `4a-]`
>
> `D4`
>
> `/48/ /52/`
>
> `1`
>
> `2`
>
> `8.11`
>
> `C3`
>
> `ct`
>
> `.`
>
> `.`
>
> `/-48/`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `.`
>
> `D4 F4`
>
> `/-52/`
>
> `2`
>
> `3`
>
> `7.33 6.4`
>
> `C3 Es3`
>
> `ct`
>
> `=3`
>
> `=3`
>
> `=3`
>
> `=3`
>
> `=3`
>
> `=3`
>
> `=3`
>
> `=3`
>
> `r`
>
> `G4`
>
> `.`
>
> `r`
>
> `1`
>
> `r`
>
> `H2 D3`
>
> `.`
>
> `===`
>
> `===`
>
> `===`
>
> `===`
>
> `===`
>
> `===`
>
> `===`
>
> `===`
>
> `*-`
>
> `*-`
>
> `*-`
>
> `*-`
>
> `*-`
>
> `*-`
>
> `*-`
>
> `*- ` Executing the command
>
> ` cents -tx input > output.cnt`
>
> produces the following result: ``
>
> > `` !! `cents' example.  ``
> >
> > <span class="rep">cents</span>
> >
> > <span class="rep">cents</span>
> >
> > <span class="rep">cents</span>
> >
> > <span class="rep">deg</span>
> >
> > <span class="rep">metpos</span>
> >
> > <span class="rep">cocho</span>
> >
> > <span class="rep">cents</span>
> >
> > <span class="rep">embell</span>
> >
> > `*M2/4`
> >
> > `*M2/4`
> >
> > `*M2/4`
> >
> > `*M2/4`
> >
> > `*M2/4`
> >
> > `*M2/4`
> >
> > `*M2/4`
> >
> > `*M2/4`
> >
> > `*`
> >
> > `*`
> >
> > `*`
> >
> > `*`
> >
> > `*tb8`
> >
> > `*`
> >
> > `*`
> >
> > `*`
> >
> > `=1`
> >
> > `=1`
> >
> > `=1`
> >
> > `=1`
> >
> > `=1`
> >
> > `=1`
> >
> > `=1`
> >
> > `=1`
> >
> > `1500`
> >
> > `800`
> >
> > `0`
> >
> > `1foo`
> >
> > `1`
> >
> > `r`
> >
> > `-1600`
> >
> > `ct`
> >
> > `.`
> >
> > `.`
> >
> > `.`
> >
> > `.`
> >
> > `.`
> >
> > .

`.`

`.`

`1700`

`-300`

`200`

`2`

`3`

`9.89`

`-1300`

`upt`

`.`

`.`

`.`

`.`

`.`

.

`.`

`.`

`1300`

`-400`

`1000`

`1`

`2`

`7.07`

`-1400`

`ct`

`.`

`.`

`.`

`.`

`.`

.

`.`

`.`

`100`

`100`

`100`

`6`

`3`

`7.135`

`100`

`sus`

`.`

`.`

`.`

`.`

`.`

.

`.`

`.`

`=2`

`=2`

`=2`

`=2`

`=2`

`=2`

`=2`

`=2`

`800`

`r`

`.`

`5`

`1`

`r`

`r`

`.`

`.`

`.`

`.`

`7`

`3`

`5.5`

`-1500`

`ct`

`.`

`200`

`-1200 -800`

`1`

`2`

`8.11`

`-1200`

`ct`

`.`

`.`

`.`

`.`

`.`

`.`

`.`

`.`

`.`

`200 500`

`.`

`2`

`3`

`7.33 6.4`

`-1200 -900`

`ct`

`=3`

`=3`

`=3`

`=3`

`=3`

`=3`

`=3`

`=3`

`r`

`700`

`.`

`r`

`1`

`r`

`-1300 -1000`

`.`

`===`

`===`

`===`

`===`

`===`

`===`

`===`

`===`

`*-`

`*-`

`*-`

`*-`

`*-`

`*-`

`*-`

`*- ` Both processed and unprocessed spines are output. Notice that the
tied note at the beginning of measure 2 in the <span class="rep">kern</span> spine has been
rendered as a single note rather than as two notes (due to the <span class="option">t</span>
option). Also notice that the non-pitch-related signifiers (e.g. foo) in
the first notes of the `**pitch, **MIDI`, and <span class="rep">cocho</span> spines have been
stripped away (due to the <span class="option">x</span> option).

------------------------------------------------------------------------

## FILES ##

The file `x_option.awk` is used by this program when the <span class="option">x</span> option
is invoked.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

` **cents (2), **freq (2),  freq (4), **fret (2), **kern (2),  kern (4), **MIDI (2),  midi (4), **pitch (2),  pitch (4), **semits (2),  semits (4), **solfg (2),  solfg (4), **specC (2),  specC (4), **Tonh (2),  tonh (4)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide04.html#Cents)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
