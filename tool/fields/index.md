---
title:		'Humdrum Toolkit Command Reference -- fields'
author:		David Huron
last-edited:	
chapternav:	tool
vim:		ft=html
permalink:	/tool/fields/index.html
---


### COMMAND

<span class="tool">fields</span> &mdash; list spine/field structure of a Humdrum file

------------------------------------------------------------------------

## SYNOPSIS ##

` fields  [-gils]  [-r regexp]  [inputfile ...]  [  > outputfile.ftf]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">fields</span> command works in conjunction with the <span class="option">t</span> option of
the <span class="tool">extract</span> command to permit highly selective extraction of data
from a Humdrum file. This command is used only rarely; it is invoked
when the more usual options of <span class="tool">extract</span> fail to provide sufficient
flexibility in isolating certain Humdrum data.

The <span class="tool">fields</span> command outputs a so-called \"field-trace file\" for a
given Humdrum input. This file can be edited by the user and then used
with the <span class="tool">extract</span> command to select data from the original input
file. For repetitive tasks, the field-trace file is more convenient than
manual editing of the input file.

When invoking the <span class="tool">fields</span> command, the user specifies the types of
records to be used as reference points in the editing task. The command
then produces a listing of record numbers as well as the corresponding
number of fields for each record of the specified type. For example, the
user may wish to use spine-path changes as reference points for editing
an input.

Each output record from the <span class="tool">fields</span> command consists of three pieces
of information, such as illustrated below:

` 13      1-10      # {(4.g#  4.b  ...`

The first field consists of a single number identifying the
corresponding line number of the input file. The second field consists
of two numbers separated by a dash. The second number indicates the
number of currently active spines. The number prior to the dash is
always 1 (see below). The third field is a comment beginning with the
octothorpe (\#) and continuing with the first ten characters of the
corresponding line from the input file. The purpose of this comment
information is to help orient the user when editing a field-trace file.

Field-trace information can be requested by record-type: <span class="option">g</span> for
global comments, <span class="option">l</span> for local comments, <span class="option">i</span> for exclusive and
tandem interpretations, and <span class="option">s</span> for spine-path indicators. More than
one record-type can be requested. For example, when the **-gl** options
are invoked, the <span class="tool">fields</span> command will produce an output line each
time a local or global comment is encountered in the input. The line
number and number of fields will be given in the output.

For global comments, the number of fields output for the current line is
equal to the number of fields for the most recent non-global comment
record. For spine-path records, the current record as well as the next
record are output so that the user knows the changes in the number of
spines.

A <span class="option">r</span> option permits the user to specify a *regular expression;*
field-trace data is output for each record matching the specified
regular expression.

Note that when an unedited field-trace file is used in conjunction with
**extract -t,** the output is identical to the input. By modifying the
field-range (second column in the output), the user can select which
specific fields will be output.

It is recommended that output files produced using the <span class="tool">fields</span>
command should be given names with the distinguishing \`.ftf\'
extension.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">fields</span> command provides the following options:

------------- -------------------------------------------------------
<span class="option">g</span>        identify lines with global comments
<span class="option">h</span>        displays a help screen summarizing the command syntax
<span class="option">i</span>        identify any interpretation record
<span class="option">l</span>        identify lines with local commens
-r *regexp*   identify all lines matching *regexp*
<span class="option">s</span>        identify lines with spine-path indicators
------------- -------------------------------------------------------

Options are specified in the command line.

------------------------------------------------------------------------

## SAMPLE OUTPUTS ##

Consider by way of illustration the following input file: ``

----------------------- ----------- ------------- ------
!! \`fields\' example                             
\*\*numbers             \*\*alpha   \*\*symbols   
\*                      \*betics    \*            
14                      abc         \%@           
!some                   !local      !comments     
3                       .           \#&           
\*-                     \*          \*            
jkl                     \$+                       
!! a global comment                               
\*\^                    \*                        
uvw                     xyz         &%            
\*                      \*+         \*            
\*                      \*          \*\*numbers   \*
mno                     pqr         87            {\^}
\*-                     \*-         \*-           \*-
----------------------- ----------- ------------- ------

With the <span class="option">g</span> option, the fields command will produce the following
output: ``

--- ----- ------------------------------------
1   1-1   \# Line 1 must appear in the file.
9   1-2   \# !! a globa \....
--- ----- ------------------------------------

With the <span class="option">l</span> option, the fields command will produce the following
output: ``

--- ----- ------------------------------------
1   1-1   \# Line 1 must appear in the file.
5   1-3   \# !some !loc \....
--- ----- ------------------------------------

With the <span class="option">s</span> option, the fields command will produce the following
output: ``

---- ----- -------------------------------------
1    1-1   \# Line 1 must appear in the file.
7    1-3   \# \*- \* \* \....
8    1-2   \# Line after path indicator record
10   1-2   \# \*\^ \* \....
11   1-3   \# Line after path indicator record
12   1-3   \# \* \*+ \* \....
13   1-4   \# Line after path indicator record
15   1-4   \# \*- \*- \*- \* \....
---- ----- -------------------------------------

With the <span class="option">i</span> option, the fields command will produce the following
output: ``

---- ----- -------------------------------------
1    1-1   \# Line 1 must appear in the file.
2    1-3   \# \*\*numbers \....
3    1-3   \# \* \*betics \....
7    1-3   \# \*- \* \* \....
8    1-2   \# Line after path indicator record
10   1-2   \# \*\^ \* \....
11   1-3   \# Line after path indicator record
12   1-3   \# \* \*+ \* \....
13   1-4   \# \* \* \*\*numb \....
15   1-4   \# \*- \*- \*- \* \....
---- ----- -------------------------------------

Using the <span class="option">r</span> option we can specify a regular expression on which
record information cues. Executing the following command:

` fields -r '[0-9]' input`

produces the following output: ``

---- ----- ------------------------------------
1    1-1   \# Line 1 must appear in the file.
4    1-3   \# 14 abc %@ \....
6    1-3   \# 3 . \#& \....
14   1-4   \# mno pqr 87 \....
---- ----- ------------------------------------

Notice that only those records containing numerical data tokens have
been listed.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

`  extract (4),  regexp (4), regexp (6)`

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
