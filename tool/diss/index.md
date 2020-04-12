---
title:		'Humdrum Toolkit Command Reference -- diss'
author:		David Huron
vim:		ft=html
permalink:	/tool/diss/index.html
---


### COMMAND

<span class="tool">diss</span> -- calculate the degree of sensory dissonance for successive
spectra

------------------------------------------------------------------------

### SYNOPSIS

` diss  [inputfile.spt ...] [> outputfile.dis]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">diss</span> command measures the degree of sensory dissonance for
successive acoustic moments. It outputs a single
[\*\*diss](../representations/diss.rep.html) spine containing numerical
values &mdash; where higher values indicate greater amounts of sensory
dissonance. The input must consist of one or more
[\*\*spect](../representations/spect.rep.html) spines. Each data record
in the \*\*spect input represents a concurrent set of discrete
frequencies (spectrum). Spectral data consist of sets of paired
frequency/amplitude values for each pure tone component present. Typical
musical sonorities contain dozens of spectral components.

The <span class="tool">diss</span> command implements an algorithm arising from the work of
Kameoka and Kuriyagawa (see REFERENCES.) *Sensory dissonance* is a
low-level auditory phenomenon that is considered distinct from
culturally-mediated and contextual experiences of consonance or
dissonance (Greenwood, 1961; Plomp and Levelt, 1965). It is therefore
inappropriate to equate sensory dissonance with \"musical dissonance\"
broadly construed. Sensory dissonance values are known to be influenced
by the loudness, overall pitch-height, interval-relationship, and timbre
of any participating tones.

For a description of the input \*\*spect representation, refer to
Section 2 *(Representation Reference)* of this reference manual.

The output file format is dubbed \`.dis\'

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">diss</span> command provides only a help option:

> >   -------- -------------------------------------------------------
> >   <span class="option">h</span>   displays a help screen summarizing the command syntax
> >   -------- -------------------------------------------------------
> >
Options are specified in the command line.

The <span class="option">k</span> option pertains to `**kern` inputs only. This option adds
`**kern`-related information to the output.

------------------------------------------------------------------------

### EXAMPLES

The following example illustrates an input and a corresponding output
from the <span class="tool">diss</span> command. The first and second spines (\*\*spect)
encode a simple input spectrum consisting of six pure tone components.
The first component has a frequency of 261 Hz at a sound pressure level
of 47 decibels. The six components represent the pitches C4 and E4
played with 3 harmonics each. The third spine
([\*\*diss](../representations/diss.rep.html)) displays the
corresponding sensory dissonance value as calculated by **diss.** An
output value of about 65 is typical for a single pure tone at about 60
dB SPL. An output value near zero results for silence.

>   ---------------------- ---------------------- ----------
>   \*\*spect              \*\*spect              \*\*diss
>   261;47 523;57 785;35   330;57 659;35 989;27   173
>   \*-                    \*-                    \*-
>   ---------------------- ---------------------- ----------
>
------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

` **diss, hint, **spect, spect`

------------------------------------------------------------------------

### REFERENCES

Kameoka, A. & Kuriyagawa, M. \"Consonance theory, part I: Consonance of
dyads.\" *Journal of the Acoustical Society of America*, Vol. 45, No. 6
(1969a) pp.1451-1459.

Kameoka, A. & Kuriyagawa, M. \"Consonance theory, part II: Consonance of
complex tones and its calculation method.\" *Journal of the Acoustical
Society of America*, Vol. 45, No. 6 (1969b) pp.1460-1469.

------------------------------------------------------------------------

\

-   [**Description the tonotopic theory of
    dissonance.**](/Humdrum/Music829B/tonotopic.html)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
