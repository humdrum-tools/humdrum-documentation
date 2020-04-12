---
title:		'Humdrum Toolkit Command Reference -- vox'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/vox/index.html
---

### COMMAND

<span class="tool">vox</span> -- determine number of simultaneously active pitches in a
Humdrum input

------------------------------------------------------------------------

## SYNOPSIS ##

` vox  [inputfile ...]  [ > outputfile.vox]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">vox</span> command calculates the number of tones sounding together at
successive moments in time. It outputs a single Humdrum spine (`**vox#`)
where successive integers indicate the total number of concurrently
sounding pitches for each data record. Multiple-stops are properly
supported.

The <span class="tool">vox</span> command accepts as input any pitch-encoded Humdrum
representations listed below. For descriptions of the various input
representations refer to Section 2 *(Representation Reference)* of this
reference manual.

It is recommended that output files produced using the <span class="tool">vox</span> command
should be given names with the distinguishing \`.vox\' extension.

>   ------------ ---------------------------------------------------------------------------
>   <span class="rep">cbr</span>      critical band rate (in equivalent rectangular bandwidths)
>   <span class="rep">cents</span>    hundredths of a semitone with respect to middle C=0 (e.g. 1200 equals C5)
>   <span class="rep">cocho</span>    cochlear coordinates (in millimeters)
>   <span class="rep">deg</span>      key-related relative scale degree
>   <span class="rep">degree</span>   key-related absolute scale degree
>   <span class="rep">freq</span>     fundamental frequency (in hertz)
>   <span class="rep">kern</span>     core pitch/duration representation
>   <span class="rep">pc</span>       pitch class representation
>   <span class="rep">pitch</span>    American National Standards Institute pitch notation (e.g. \"A\#4\")
>   <span class="rep">semits</span>   equal-tempered semitones with respect to middle C=0
>   <span class="rep">solfa</span>    tonic solfa syllables
>   <span class="rep">solfg</span>    French solfège system (fixed \`doh\')
>   <span class="rep">specC</span>    spectral centroid (in hertz)
>   <span class="rep">Tonh</span>     German pitch system
>   ------------ ---------------------------------------------------------------------------
>
*Input representations processed by <span class="tool">vox</span>.*

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">vox</span> command provides only a help option:

>   -------- -------------------------------------------------------
>   <span class="option">h</span>   displays a help screen summarizing the command syntax
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

` vox# (2)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide.append2.html#vox)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
