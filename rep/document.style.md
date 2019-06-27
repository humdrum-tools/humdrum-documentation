---
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
description: |
    Describes documentation style for the Humdrum computer music
    representaton..
keywords: |
    music research,software,theory,analysis,systematic musicology,computer
    representation,documentation style
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
robots: all
title: Humdrum Toolkit Representation Reference
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

\

Humdrum Representation Reference
================================

Documentation Style
-------------------

This section of the *Reference Manual* describes various pre-defined
representations conforming to the Humdrum syntax. Each representation
defines a scheme by which the numbers, letters, and other characters of
the ASCII character-set are mapped to musically pertinent signs or
\"signifieds.\" Each representation is designated by a different Humdrum
*exclusive interpretation.* Exclusive interpretations are denoted by two
leading asterisk characters (beginning in the first column of a line or
record) followed immediately by an interpretation *keyword.* For any
given spine (column of data), only one exclusive interpretation can be
active at a given moment, and an interpretation must precede the first
data record.

Each documented representation includes a description of the scope of
the representation, a complete tabulation of all pre-defined signifiers,
and examples of syntactically-correct representations. For many
representations, a number of *tandem interpretations* are also
pre-defined. Tandem interpretations provide additional contextual
information concerning the represented data. In addition, each entry
lists all of the existing Humdrum commands that are able to process the
representation. Descriptions of the various [**Humdrum
commands**](../commands.toc.html) are also available on-line.

All Humdrum representations can be processed by the general-purpose
tools list in the following table.

>   ------------------------------------------- --------------------------------------------------------------------
>   [**assemble**](../commands/assemble.html)   paste together Humdrum files
>   [**census**](../commands/census.html)       determine general properties of a Humdrum file
>   [**cleave**](../commands/cleave.html)       join tokens from two or more spines into a single spine
>   [**context**](../commands/context.html)     congeal data records to form a contextual frame
>   [**correl**](../commands/correl.html)       measure the numerical similarity between two spines
>   [**ditto**](../commands/ditto.html)         replace null tokens with previous non-null data token
>   [**encode**](../commands/encode.html)       interactive Humdrum encoding from MIDI input
>   [**extract**](../commands/extract.html)     select input spines for output
>   [**fields**](../commands/fields.html)       trace changes in spine structure
>   [**humdrum**](../commands/humdrum.html)     test conformance to Humdrum syntax
>   [**humsed**](../commands/humsed.html)       stream editor for Humdrum files
>   [**infot**](../commands/infot.html)         calculate information flow
>   [**num**](../commands/num.html)             number selected records according to user-defined criteria
>   [**patt**](../commands/patt.html)           locate and output user-defined patterns in a Humdrum input
>   [**pattern**](../commands/pattern.html)     exhaustively locate user-defined patterns in a Humdrum input
>   [**recode**](../commands/recode.html)       recode numeric tokens in selected Humdrum spines
>   [**rend**](../commands/rend.html)           split tokens in a single spine into two or more spines
>   [**rid**](../commands/rid.html)             eliminate specified record types from the input
>   [**scramble**](../commands/scramble.html)   randomize order of either Humdrum data records or data tokens
>   [**simil**](../commands/simil.html)         measure the similarity between two Humdrum spines
>   [**strophe**](../commands/strophe.html)     selectively extract strophic data
>   [**thru**](../commands/thru.html)           expand repeats to through-composed form
>   [**xdelta**](../commands/xdelta.html)       calculate numeric differences for successive tokens within a spine
>   [**yank**](../commands/yank.html)           extract passages from a Humdrum input
>   [**ydelta**](../commands/ydelta.html)       calculate numeric differences for concurrent spines
>   ------------------------------------------- --------------------------------------------------------------------
>
Each reference entry contains information identifying the name and
purpose of the representation, a summary description of mappings between
signifiers and signifieds, the designated file-type, and a list of
Humdrum commands that accept or produce the given representation as
input or output. The standard order of documentation sections is as
follows: (1) representation, (2) description, (3) file type designation,
(4) signifiers used, (5) examples, (6) pertinent commands, (7) tandem
interpretations, (8) see also, (9) warnings, (10) limits, (11) note,
(12) reference, (13) proposed modifications, and (14) author(s).

------------------------------------------------------------------------

\

-   [**Humdrum Main Page**](../index.html)
-   [**Index to Humdrum Representations**](../representations.toc.html)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
