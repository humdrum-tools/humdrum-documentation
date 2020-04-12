---
title:		'Humdrum Toolkit Command Reference -- tacet'
author:		David Huron
last-edited:	
chapternav:	tool
vim:		ft=html
permalink:	/tool/tacet/index.html
---

### COMMAND

<span class="tool">tacet</span> &mdash; reset MIDI channels to ensure silence

------------------------------------------------------------------------

## SYNOPSIS ##

` tacet  [-i hex]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">tacet</span> command resets the MIDI output. It sends \"all-notes-off\"
commands on MIDI channels 1-16. The <span class="tool">tacet</span> command is useful if a
MIDI application has terminated abnormally &mdash; leaving one or more
sounding notes (\"ciphers\") on a MIDI device.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">tacet</span> command provides the following options:

---------- -------------------------------------------------------
<span class="option">h</span>     displays a help screen summarizing the command syntax
-i *hex*   assign MIDI input/output address to *hex*
---------- -------------------------------------------------------

Options are specified in the command line.

The <span class="option">i</span> option is used to specify the input/output address of the
MIDI card. The default address is \`330.\' The address is specified as a
hexadecimal number.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up.

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">midreset</span> (4), <span class="tool">perform</span> (4),
<span class="tool">smf</span> (4)

------------------------------------------------------------------------

## REFERENCES ##

Use of the Music Quest Inc. MIDI library functions is gratefully
acknowledged.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide07.html#The_tacet_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
