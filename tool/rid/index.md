---
title:		'Humdrum Toolkit Command Reference -- rid'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/rid/index.html
---

### COMMAND

<span class="tool">rid</span> -- eliminate specified Humdrum record types

------------------------------------------------------------------------

## SYNOPSIS ##

` rid   [-dgiltuDGILTU]   [inputfile ...] `

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">rid</span> command allows the user to eliminate specified types of
Humdrum records (lines) from the input stream. Depending on the options
selected, <span class="tool">rid</span> will eliminate global comments, local comments,
interpretations, duplicate exclusive interpretations, tandem
interpretations, data records, data records consisting of just null
tokens (null data records), empty global or local comments, empty
interpretations, or any combination of these record types.

Humdrum comments are records that begin with an exclamation mark (!).
Local comments begin each active spine with a single exclamation mark,
whereas gobal comments begin with two exclamation marks (!!) at the
beginning of the record. A global comment consisting of only two
exclamation marks is a null global comment. If a local comment record
contains only single exclamation marks in each spine, it is dubbed a
null local comment.

Humdrum interpretations are records that begin with an asterisk (\*).
Tandem interpretations begin each active spine with a single asterisk,
whereas exclusive interpretations begin with an asterisk and have at
least one active spine beginning with two asterisks. If each active
spine contains only a single asterisk, the record is dubbed a null
interpretation.

Records that are not comments or interpretations are deemed to be data
records. Null tokens are data tokens consisting of just the period
character (.). A data record containing only null tokens (separated by
tabs) is a null data record.

A duplicate exclusive interpretation is an exclusive interpretation that
repeats the name of an interpretation that is already active for a given
spine. If a spine has not been terminated, there is frequently little
need to indicate (again) the active interpretation for a given spine.
(An exception occurs when the user wants the data to be processed as
discontinuous &mdash; such as avoiding calculating pitch intervals between
the last note of one piece and the first note of a subsequent piece.)

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">rid</span> command provides the following options:

-------- ----------------------------------------------------------
<span class="option">h</span>   displays a help screen summarizing the command syntax
<span class="option">D</span>   remove all data records
<span class="option">d</span>   remove null data records
<span class="option">G</span>   remove all global comments
<span class="option">g</span>   remove null global comments
<span class="option">I</span>   remove all interpretation records
<span class="option">i</span>   remove null interpretation records
<span class="option">L</span>   remove all local comments
<span class="option">l</span>   remove null local comments
<span class="option">T</span>   remove all tandem interpretations
<span class="option">U</span>   remove unnecessary (duplicate) exclusive interpretations
<span class="option">u</span>   same as <span class="option">U</span>
-------- ----------------------------------------------------------

Options are specified in the command line.

In general, upper-case options eliminate *all* records of a given type,
whereas the corresponding lower-case options eliminate only null records
(devoid of signifiers) for a given record type.

------------------------------------------------------------------------

## EXAMPLES ##

The following examples illustrate the use of <span class="tool">rid</span>. Consider the
following input file: ``

-------------------- -----------
!! \`rid\' example   
!!                   
\*\*abc              \*\*xyz
\*tand               \*em
12                   .
.                    .
!local               !comments
\*                   \*
\*x                  \*x
\*\*xyz              \*\*abc
!                    !
.                    34
\*-                  \*-
-------------------- -----------

The following command:

` rid -dlu input`

will eliminate all null data records, all null local comments, and any
unnecessary (duplicate) exclusive interpretations: ``

-------------------- -----------
!! \`rid\' example   
!!                   
\*\*abc              \*\*xyz
\*tand               \*em
12                   .
!local               !comments
\*                   \*
\*x                  \*x
.                    34
\*-                  \*-
-------------------- -----------

Alternatively, the command:

` rid -DGLiT input`

will eliminate all data records, all global and local comments, all null
interpretations, and all tandem interpretations: ``

--------- ---------
\*\*abc   \*\*xyz
\*x       \*x
\*\*xyz   \*\*abc
\*-       \*-
--------- ---------

------------------------------------------------------------------------

## WARNINGS ##

Removing Humdrum interpretation records will render the file
inconsistent with the Humdrum representation syntax. Further processing
of such a file with the Humdrum tools will be impossible.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

`  humsed (4),  recode (4), sed (UNIX)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide13.html#The_rid_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
