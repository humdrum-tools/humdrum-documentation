---
title:		'Humdrum Toolkit Command Reference -- melac'
author:		David Huron
vim:		ft=html
permalink:	/tool/melac/index.html
---


### COMMAND

<span class="tool">melac</span> &mdash; calculate melodic accent values for successive pitches in
a Humdrum input

------------------------------------------------------------------------

### SYNOPSIS

` melac  [inputfile.sem ...]  [> outputfile.tac]`

------------------------------------------------------------------------

### DESCRIPTION

The <span class="tool">melac</span> command accepts as input Humdrum ` **semits` data and
outputs a series of values representing the degree of melodic accent
associated with each note. Melodic accent values vary between 0 (no
accent) and 1 (maximum accent). Input is limited to only a single
` **semits` data spine.

The <span class="tool">melac</span> command implements a model of melodic accent developed by
Joseph Thomassen (see [REFERENCES](#REFERENCES)). Thomassen's model is
sensitive to pitch contour only &mdash; distinguishing just three types of
melodic motion: ascending, descending, and unison. The model calculates
tonal accent values according to a moving 3-pitch window.

It is recommended that output files produced using the <span class="tool">melac</span> command
should be given names with the distinguishing \`.mac\' extension.

------------------------------------------------------------------------

### OPTIONS

The <span class="tool">melac</span> command provides only a help option:

>   -------- -------------------------------------------------------
>   <span class="option">h</span>   displays a help screen summarizing the command syntax
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

------------------------------------------------------------------------

### EXAMPLES

The following example illustrates the output of the <span class="tool">melac</span> command.
The `**semits` spine is the input, and the `**melac` spine is the
corresponding output. (A `**kern` equivalent to `**semits` has been
added to increase the readability.) ``

>   ---------- ------------ -----------
>   \*\*kern   \*\*semits   \*\*melac
>   16ee       16           1
>   16cc       12           0.5
>   16b        11           0.355
>   16cc       12           0.2407
>   16g        7            0.1207
>   16cc       12           0.2407
>   16b        11           0.1207
>   16cc       12           0.0957
>   16ff       17           0.5561
>   16cc       12           0.085
>   16b        11           0.355
>   16cc       12           0.2407
>   16a        9            0.1207
>   16cc       12           0.2407
>   16b        11           0.1207
>   16cc       12           0.29
>   \*-        \*-          \*-
>   ---------- ------------ -----------
>
------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### LIMITS

This command is currently able to handle only a single (monophonic)
input stream.

------------------------------------------------------------------------

[]{#REFERENCES}

### REFERENCES

Thomassen, J. \"Melodic accent: Experiments and a tentative model,\"
*Journal of the Acoustical Society of America,* Vol. 71, No. 6 (1982)
pp.1598-1605; see also, Erratum, *Journal of the Acoustical Society of
America,* Vol. 73, No. 1 (1983) p.373.

[Huron, D. & Royal, M.](/Humdrum/Huron/publications.html) \"What is
melodic accent? Converging evidence from musical practice.\" *Music
Perception,* Vol. 13, No. 4 (1996) pp. 489-516.

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
