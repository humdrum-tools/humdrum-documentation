---
title:		'Humdrum Toolkit Command Reference -- ditto'
author:		David Huron
last-edited:
chapternav:	tool
vim:		ft=html
permalink:	/tool/ditto/index.html
---

### COMMAND

<span class="tool">ditto</span> -- replace Humdrum null tokens with previous data token

------------------------------------------------------------------------

## SYNOPSIS ##

` ditto  [-c chars]   [-p]  [-s regexp]  [inputfile ...]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">ditto</span> replaces Humdrum null tokens with the previous non-null
data token in the same spine. Various options modify this basic
behavior.

Humdrum null-tokens are place-holders that do not themselves encode
data. Null-tokens consist of a single period character (\".\") &mdash;
separated from other tokens by tabs, or appearing on a line by itself.
The <span class="tool">ditto</span> command replaces occurrences of null-tokens with the most
recent non-null data occurring in the same spine. When the <span class="option">p</span> option
is invoked, the replacement data tokens are enclosed in parentheses ( ).
If the initial data tokens in a spine are null-tokens, then null-tokens
are output.

In repeating previous data tokens, if the <span class="option">s</span> option is invoked,
<span class="tool">ditto</span> skips over any data records matching *regexp.* For example, if
*regexp* is the equals-sign (the \"common system\" barline), then
barline data tokens will not be repeated in subsequent data records
containing null tokens. Thus, if a data token \`X\' is followed by a
token that matches the regular expression /=/, then subsequent
null-tokens will be replaced by the token \`X\' rather than by the
equals sign.

The <span class="tool">ditto</span> command correctly handles spine path changes. In the case
where two or more spines join together, <span class="tool">ditto</span> outputs a
multiple-stop where necessary.

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">ditto</span> command provides the following options:

------------- -------------------------------------------------------
<span class="option">h</span>        displays a help screen summarizing the command syntax
-c *chars*    repeats only characters listed in *chars*
<span class="option">p</span>        place repeated data tokens in parentheses
-s *regexp*   skip data records matching *regexp*
------------- -------------------------------------------------------

Options are specified in the command line.

------------------------------------------------------------------------

## EXAMPLES ##

The following inputs and outputs illustrate the operation of the
<span class="tool">ditto</span> command. Consider the following input: ``

-------------- ----------
!! Example 1
\*\*kern       \*\*kern
16e-           8r
16d            .
16e-           8gg
16f            .
16g            8cc
16f            .
16g            8gg
16e-           .
16a            \[2aa
16g            .
16a            .
16b-           .
16cc           .
16b-           .
16cc           .
16a            .
=78            =78
.              .
\*-            \*-
-------------- ----------

Invoking the command:

` ditto input > output`

produces the following output: ``

-------------- ----------
!! Example 1
\*\*kern       \*\*kern
16e-           8r
16d            8r
16e-           8gg
16f            8gg
16g            8cc
16f            8cc
16g            8gg
16e-           8gg
16a            \[2aa
16g            \[2aa
16a            \[2aa
16b-           \[2aa
16cc           \[2aa
16b-           \[2aa
16cc           \[2aa
16a            \[2aa
=78            =78
=78            =78
\*-            \*-
-------------- ----------

Notice that all of the null tokens have been replaced by the preceding
data token in the same spine. Notice also that the barline for measure
78 has been repeated. For many applications repeating of barlines will
be inappropriate.

The following, more complex example, illustrates the use of the <span class="option">p</span>
and <span class="option">s</span> options. The input is shown on the left and the corresponding
output is shown on the right. The output was produced by invoking the
following command:

` ditto -p -s ^= input > output`

``

--------------- --------- --------- -- --------------- -- --------- --------- ---------
**INPUT``**                            **OUTPUT``**
!! Example 2                           !! Example 2
\*\*foo         \*\*foo   \*\*bar                         \*\*foo   \*\*foo   \*\*bar
a               xyz       .                               a         xyz       .
.               23        (%&)                            (a)       23        (%&)
=2              =2        =2                              =2        =2        =2
.               .         .                               (a)       (23)      ((%&))
!! A comment.                          !! A comment.
.               .         49                              (a)       (23)      49
\*x             \*        \*x                             \*x       \*        \*x
.               .         .                               (49)      (23)      (a)
\*              \*v       \*v                             \*        \*v       \*v
.               .                                         (49)      (23 a)
abc             XYZ                                       abc       XYZ
\*              \*\^                                      \*        \*\^
.               .         .                               (abc)     (XYZ)     (XYZ)
.               1a        2b                              (abc)     1a        2b
=3              =3        =3                              =3        =3        =3
\*-             \*        \*                              \*-       \*        \*
.               .                                         (1a)      (2b)
====            ====                                      ====      ====
\*+             \*                                        \*+       \*
\*\*foo         \*\*foo   \*\*bar                         \*\*foo   \*\*foo   \*\*bar
.               .         .                               (1a)      .         (2b)
\*-             \*-       \*-                             \*-       \*-       \*-
--------------- --------- --------- -- --------------- -- --------- --------- ---------

In order to avoid repeating the barlines, the skip option has been
invoked with the regular expression \"\^=\" &mdash; meaning any equals sign
at the beginning of a line. (See <span class="tool">regexp</span> in Section 6 of this manual
for details concerning regular expression syntax.) In addition, the
<span class="option">p</span> option has been invoked so that all repeated tokens are placed in
parentheses. Notice that <span class="tool">ditto</span> adapts to changing spine-paths. Note
especially the join-spine (\*v) interpretations leading to the
double-stop:`(23 a)`.

A final example illustrates the use of the <span class="option">c</span> option. Once again,
the input is shown on the left and the corresponding output is shown on
the right. The output was produced by invoking the following command:

` ditto -c '[a-gA-G#-]' input > output`

``

----------- ---------- -- -- -- -- ------------ ---------- ----------
**INPUT**                          **OUTPUT**
\*\*kern    \*\*kern                            \*\*kern   \*\*kern
(4g         8b                                  (4g        8b
.           8cc                                 g          8cc
8f\#        4dd                                 8f\#       4dd
4.g)        .                                   4g)        dd
.           8cc                                 g          8cc
.           8b                                  g          8b
4d          4a                                  4d         4a
.           .                                   d          a
\*-         \*-                                 \*-        \*-
----------- ---------- -- -- -- -- ------------ ---------- ----------

The effect of this command has been to propagate the <span class="rep">kern</span> pitch
signifiers, without propagating non-pitch information.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">patt</span> (4), <span class="tool">pattern</span> (4),
<span class="tool">regexp</span> (4), <span class="tool">regexp</span> (6), <span class="tool">simil</span>
(4)



