---
title:		'Humdrum Toolkit Command Reference -- assemble'
author:		David Huron
last-edited:
chapternav:	tool
sidebar:	main_sidebar
vim:		ft=html
permalink:	/tool/assemble/index.html
---

### COMMAND

<span class="tool">assemble</span> &mdash; amalgamate two or more Humdrum files

------------------------------------------------------------------------

## SYNOPSIS ##

` assemble  inputfile1  inputfile2  [inputfile3 ...]  [ > outputfile]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">assemble</span> command allows two or more structurally similar Humdrum
files to be aligned together &mdash; such as where a full score is assembled
from files containing individual parts.

The <span class="tool">assemble</span> command is similar to the UNIX ` paste` command. If
file \`A\' contains:

``

1

2

3

and file \`B\' contains:

``

A

B

C

then the UNIX command:

` paste A B`

will produce the following output:

``

1

A

2

B

3

C

The <span class="tool">assemble</span> command is a more sophisticated version of ` paste` &mdash;
suitable for assembling several concurrent spines stored in different
Humdrum files. The <span class="tool">assemble</span> command coordinates and synchronizes
comments, interpretations, and data records from the input files.
Duplicate global comments are avoided. Corresponding local comments are
output where appropriate. Where one file contains local comments and a
second file contains none, null local comments are inserted as
appropriate. Similarly, null interpretations may also be added as
necessary.

The <span class="tool">assemble</span> command expects that the input files will normally have
the same number of data records. These data records are aligned
side-by-side. If the input files do not contain the same number of data
records, then the spines in the shorter file will be terminated with
appropriate spine-path terminators.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">assemble</span> command provides only a help option:

-------- -------------------------------------------------------
<span class="option">h</span>   displays a help screen summarizing the command syntax
-------- -------------------------------------------------------

Options are specified in the command line.

------------------------------------------------------------------------

## EXAMPLES ##

The operation of <span class="tool">assemble</span> can be illustrated by considering the
following two input files. Both files contain the same number of data
records (4).

**file1:** ``

-------------------
!! A sample file.
-------------------

--------- -- --------- -- ---------
\*\*foo      \*\*foo      \*\*foo
!1           !2           !3
X            .            X
X            .            .
\*           \*v          \*v
X            X
.            X
\*-          \*-
--------- -- --------- -- ---------

**file2:**

----------------------------------
!! A sample file.
!! An additional global comment.
----------------------------------

---------- ---------
\*\*bar    \*\*bar
!4         !5
.          .
X          X
\*v        \*v
! joined
X
.
\*-
---------- ---------

If the <span class="tool">assemble</span> command is invoked as:

``

assemble file1 file2

then the corresponding output is: ``

----------------------------------
!! A sample file.
!! An additional global comment.
----------------------------------

--------- --------- ---------- --------- ---------
\*\*foo   \*\*foo   \*\*foo    \*\*bar   \*\*bar
!1        !2        !3         !4        !5
X         .         X          .         .
X         .         .          X         X
\*        \*v       \*v        \*        \*
\*        \*        \*v        \*v
!         !         ! joined
X         X         X
.         X         .
\*-       \*-       \*-
--------- --------- ---------- --------- ---------

Notice that both input files begin with the identical global comment;
only one copy of this comment appears in the output. The second file
contains an additional global comment that is also output. The
subsequent local comments have been amalgamated on a single output line.
The spine-path changes in both input files have been properly rendered
by padding null interpretations in the appropriate spines. The last
local comment in ` file2` has also been correctly re-positioned.
Finally, each of the four data records have been aligned.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

`  census (4),  extract (4),  humdrum (4), paste (UNIX),  timebase (4)`

------------------------------------------------------------------------

## LIMITS ##

The number of specified input files may be limited on DOS systems.




