---
title:		'Humdrum Toolkit Command Reference -- key'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/key/index.html
---


### COMMAND

<span class="tool">key</span> &mdash; estimate the key for a Humdrum passage

------------------------------------------------------------------------

### SYNOPSIS

` key  [-af]  [inputfile ...]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">key</span> command estimates the key of a given musical passage using
Krumhansl's tonal hiearchy method. The command is restricted to
identifying only those keys within the common major/minor tonal system.
Modes outside the major/minor system are not recognized.

The input may be either ` **semits` or ` **kern` representations. The
program adapts to input having varying numbers spines each with a
different interpretation.

Output consists of three items of information:

-   the *estimated key* for the passage,
-   a *coefficient of correlation* (Pearson's \"r\") that measures how
    well the pitch organization of the musical passage conforms to an
    idealized major or minor key template, and
-   a *confidence score* that indicates how distinctive the key-match is
    compared with other competing keys. A confidence score of 100%
    indicates a very strong confidence in the key estimate; low
    confidence scores indicate that there is at least one other key that
    is a good alternative candidate.

The algorithm is based on Krumhansl's perceptually-based key-finding
method (see [references](#REFERENCES)). This method compares a given
pitch-class frequency profile with two perceptually-determined
prototypes (one each for major and minor modes). The coefficients used
for these prototypes are those determined by [Krumhansl & Kessler
(1982).](#Krumhansl%20and%20Kessler) In order for the algorithm to work
properly, durational information ought to be provided. When using
` **semits` format input, best results are achieved when the input has a
*time-base* format. (See the **timebase (4)** command.)

The <span class="tool">key</span> command is poor at distinguishing less common enharmonic
keys. For example, it is unable to distinguish the following enharmonic
spellings for tonic pitches: C-flat, B-sharp, E-sharp, F-flat. Also,
<span class="tool">key</span> is unable to distinguish enharmonic spellings involving double-
or triple- sharps or flats. That is, G double-sharp major is identified
as A major. KEY is able to distinguish the more common enharmonic
spellings (such as E-flat versus D-sharp).

There is no special output file-type designation.

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">key</span> command provides the following options:

>   -------- -------------------------------------------------------
>   <span class="option">a</span>   output correlation values for all keys
>   <span class="option">f</span>   output frequencies for all pitch-classes
>   <span class="option">h</span>   displays a help screen summarizing the command syntax
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

The <span class="option">a</span> option will show all of the correlation coefficients for all
24 of the (enharmonic) major and minor keys.

The <span class="option">f</span> option will output the relative frequencies for each of the
twelve chromatic pitch classes (in quarter-note durations).

------------------------------------------------------------------------

### SAMPLE OUTPUT

Without any options, typical outputs are of the following form:

` Estimated key: B minor    (r=0.8442)     confidence: 51.3%`

With both the <span class="option">f</span> and <span class="option">a</span> options invoked, a typical output is
given below. The <span class="option">f</span> option causes 12 pitch-class tallies to be
outputted. These values are given in acculumated whole-note durations.
For example, the output: \"PC\[5\]: 4.25\" means that the enharmonic
pitch-class \"F\" appears in the passage for the equivalent of 4
whole-notes plus a quarter-note duration. If inputs do not include
durational information (such as in ` **semits` input), each note is
assigned the nominal duration of a quarter-note.

> ``
>
> PC\[0\]: 5.50617

PC\[1\]: 0.375

PC\[2\]: 6.1875

PC\[3\]: 0

PC\[4\]: 5.625

PC\[5\]: 4.25

PC\[6\]: 1.25

PC\[7\]: 5.6875

PC\[8\]: 0.5

PC\[9\]: 4.625

PC\[10\]: 0.625

PC\[11\]: 4.40625

Tonic\[0\] major 0.791744 minor 0.0962456

Tonic\[1\] major -0.747033 minor -0.337397

Tonic\[2\] major 0.506935 minor 0.535771

Tonic\[3\] major -0.404982 minor -0.720203

Tonic\[4\] major 0.0308014 minor 0.64007

Tonic\[5\] major 0.475928 minor -0.13113

Tonic\[6\] major -0.735928 minor -0.157988

Tonic\[7\] major 0.772586 minor 0.205276

Tonic\[8\] major -0.574103 minor -0.487743

Tonic\[9\] major 0.232566 minor 0.66303

Tonic\[10\] major -0.014411 minor -0.625767

Tonic\[11\] major -0.334105 minor 0.319835

Estimated key: C major (r=0.7917) confidence: 5.7%

The <span class="option">a</span> option causes the tonic major and minor correlations to be
printed for each pitch-class. Good key matches have a high positive
correlation; the maximum value is 1.0.

In the above sample output, notice that the confidence score for the
predicted key of C major (Tonic\[0\]) is quite low. The reason for this
is that the correlation coefficient for A minor (Tonic\[9\]) is rather
close to that for C major (0.791744 versus 0.66303) Note that confidence
scores may be used as a simple index for estimating the tonal ambiguity
or degree of chromaticism for a passage.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **kern (2),  kern (4), **semits (2),  semits (4),  timebase (4)`

------------------------------------------------------------------------

### WARNINGS

As noted, <span class="tool">key</span> is very limited. When used to find \"the key\" of a
particular work, it frequently produces incorrect results. In
particular, for much tonal music, <span class="tool">key</span> has a tendency to mistakenly
identify the dominant of the key rather than the tonic. See also the
discussion under \"proposed modifications.\"

------------------------------------------------------------------------

### BUGS

The current version does not handle multiple stops in ` **kern` spines.

------------------------------------------------------------------------

### NOTES

Currently the program is sensitive to ` **semits` and ` **kern`
interpretations. If no recognizable interpretation is given in the input
stream, <span class="tool">key</span> assumes ` **kern` compatible input. This may lead to
erroneous results.

------------------------------------------------------------------------

[]{#REFERENCES}

### REFERENCES

Krumhansl, C. *Cognitive Foundations of Musical Pitch,* Oxford: Oxford
University Press, 1990, Chapter 4.

[]{#Krumhansl and Kessler}

Krumhansl, C. L. & Kessler, E. J. \"Tracing the dynamic changes in
perceived tonal organization in a spatial representation of musical
keys,\" *Psychological Review,* Vol. 89 (1982) pp.334-368.

------------------------------------------------------------------------

### PROPOSED MODIFICATIONS

The <span class="tool">key</span> command is likely to appeal to two types of uses: (1) those
who are interested in knowing the key of a musical work without having
to examine the work manually, or (2) those who are interested in a
perceptual characterization of the tonality of a passage. These goals
are quite different. The current <span class="tool">key</span> command implements the second
approach; <span class="tool">key</span> is not very good at consistently and correctly
identifying \"The Key\" of typical tonal works. Another command (or
variant of the <span class="tool">key</span> command) might use contextual heuristics (such as
looking at the final chord of a work, or examining cadences) in order to
better identify \"the key\" of a work.

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
