---
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
description: |
    Chapter 40 (Conclusion) of the User Guide for the Humdrum Toolkit music
    research software.
keywords: |
    music research,software,theory,analysis,systematic
    musicology,computer,software
revision-date: 'Thu Feb 3 10:17:15 EST 2000'
robots: all
title: 'Humdrum Toolkit User\''s Guide \-- Chapter 40'
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

\
\

Chapter40
=========

[\[[*Previous Chapter*](guide39.html)\]
\[[*Contents*](guide.toc.html)\]]{.small}

------------------------------------------------------------------------

Conclusion
==========

------------------------------------------------------------------------

In [Chapter 1,](guide01.html) we noted that computers are quite limited
in what they are able to do. We noted in particular that computers are
not good at *interpreting* data. Because so much music scholarship
hinges on interpretations, this would seem to preclude computers from
being of much use. However, as we have seen, there are some things that
computers do well, and when a skilled user intervenes to make a few
crucial interpretations, the resulting computer/human interaction can
lead to pretty sophisticated results.

The lucid use of Humdrum depends on understanding how each of the tools
works and how it is possible to connect the tools to perform particular
tasks. The power and creativity of Humdrum truly lies in the hands of
the user.

As we\'ve seen, there are two parts to Humdrum: the *Humdrum syntax* and
the *Humdrum toolkit.* The Humdrum syntax simply provides a formal
framework for representing any kind of sequential symbolic data. A
number of representation schemes are pre-defined in Humdrum, but you are
free to construct your own representations as demanded by the tasks. In
several of the tutorial examples in the previous chapters we saw various
*ad hoc* representations that were concocted as temporary or
intermediate representations. You should now feel comfortable with the
possibilities of devising your own representations to assist you in
whatever task you are interested.

The *Humdrum Toolkit* is a set of inter-related software tools. These
tools manipulate text data conforming to the Humdrum syntax. If the data
represents music-related information, then we can say that the Humdrum
tools manipulate music-related information. Each Humdrum tool carries
out a fairly modest process.

By way of review, we can group the various Humdrum (and UNIX) tools
according to the type of operation. There are roughly a dozen or so
classes of tasks:

-   ***Displaying things.*** The **ms** command can be used to print or
    display musical notation.
-   ***Auditing.*** MIDI sound output can be generated using the
    [**midi**](commands/midi.html) and
    [**perform**](commands/perform.html) commands.
-   ***Searching for things.*** When searching for things within
    specified files, appropriate commands include: **grep**, **egrep**,
    [**yank -m**,](commands/yank.html) [**patt**,](commands/patt.html)
    [**pattern**,](commands/pattern.html)
    [**correl**,](commands/correl.html) [**simil**](commands/simil.html)
    and [**humdrum -v**.](commands/humdrum.html) When searching for
    files that meet certain conditions, appropriate commands include
    **grep -l**, **egrep -l** and **find**. Most of these search tools
    rely extensively on regular expressions to define patterns of
    characters.
-   ***Counting things.*** Appropriate commands include: **wc**, **wc
    -l**, **grep -c**, **egrep -c**, [**census**](commands/census.html)
    and **census -k**. Eliminating unnecessary or confounding
    information can be achieved using [**rid**,](commands/rid.html)
    [**extract**,](commands/extract.html) **grep -v**, **sed** and
    [**humsed**.](commands/humsed.html)
-   ***Editing things.*** Manual editing may be done using any text
    editor, such as **emacs** or **vi**. Automated (or \"stream\")
    editing may be done using **sed** and
    [**humsed**.](commands/humsed.html)
-   ***Editorializing.*** E.g., add an editorial footnote to a specified
    note or passage; indicate that a passage differs from the
    composer\'s autograph.
-   ***Transforming or translating between representations.***
    Appropriate commands include: [**cents**,](commands/cents.html)
    [**deg**,](commands/deg.html) [**degree**,](commands/degree.html)
    **dur**, [**freq**,](commands/freq.html)
    [**hint**,](commands/hint.html) [**humsed**,](commands/humsed.html)
    [**iv**,](commands/iv.html) [**kern**,](commands/kern.html)
    [**mint**,](commands/mint.html) [**pc**,](commands/pc.html)
    [**pf**,](commands/pf.html) [**pitch**,](commands/pitch.html)
    [**reihe**,](commands/reihe.html)
    [**semits**,](commands/semits.html)
    [**solfa**,](commands/solfa.html) [**solfg**,](commands/solfg.html)
    **text**, [**tonh**,](commands/tonh.html)
    [**trans**](commands/trans.html) and [**vox**.](commands/vox.html)
-   ***Arithmetic transformations of representations.*** Manipulating
    numerical values can be done using
    [**xdelta**,](commands/xdelta.html)
    [**ydelta**,](commands/ydelta.html)
    [**recode**](commands/recode.html) and **awk**.
-   ***Extracting or selecting information.*** Appropriate commands
    include: [**extract**,](commands/extract.html)
    [**yank**,](commands/yank.html) **grep**, **egrep**, [**yank
    -m**,](commands/yank.html) [**thru**,](commands/thru.html)
    [**strophe**,](commands/strophe.html) [**rend**](commands/rend.html)
    and **csplit**.
-   ***Linking or joining information.*** Appropriate commands include:
    [**assemble**,](commands/assemble.html) **cat**,
    [**cleave**,](commands/cleave.html)
    [**timebase**,](commands/timebase.html)
    [**context**,](commands/context.html)
    [**ditto**](commands/ditto.html) and **join**.
-   ***Generating inventories of things.*** Appropriate commands
    include: **sort** and **uniq**. Once again, unnecessary or
    confounding information can be eliminated using
    [**rid**,](commands/rid.html) [**extract**,](commands/extract.html)
    **grep -v**, [**yank -m**,](commands/yank.html) **sed** or
    [**humsed**.](commands/humsed.html)
-   ***Classifying things.*** Numerical values can be classified using
    [**recode**;](commands/recode.html) non-numerical data can be
    classified using [**humsed**.](commands/humsed.html)
-   ***Labelling things.*** Appropriate commands include: [**patt
    -t**,](commands/patt.html) [**recode**,](commands/recode.html)
    [**humsed**](commands/humsed.html) and
    [**timebase**.](commands/timebase.html)
-   ***Comparing whether things are the same or similar.*** Appropriate
    commands include: **diff**, **diff3**, **cmp**,
    [**correl**](commands/correl.html) and
    [**simil**.](commands/simil.html)
-   ***Capturing data.*** MIDI data can be input via
    [**encode**](commands/encode.html) and
    [**record.**](commands/record.html)
-   ***Trouble-shooting.*** Appropriate commands include:
    [**humdrum**,](commands/humdrum.html) [**humdrum
    -v**,](commands/humdrum.html) [**proof**,](commands/proof.html)
    [**proof -k**,](commands/proof.html)
    [**veritas**,](commands/veritas.html) [**midi**](commands/midi.html)
    and [**perform**.](commands/perform.html)

Not all of the existing Humdrum Tools were covered in this book. Nor
were all of the available options described for all of the tools
discussed. Exploring the *Humdrum Reference Manual* is recommended for
readers interested in continuing to develop facility with Humdrum.

[]{#Pursuing_a_Project_with_Humdrum}

Pursuing a Project with Humdrum
-------------------------------

If you have made it this far in the book, you will now have a fairly
sophisticated knowledge of Humdrum. With this background, we might
review some general principles and specific tips for making effective
use of Humdrum when pursuing some musicological project. The following
seven questions provide useful guidelines:

-   *What do I want my final output to look like?*\
    Do I want a count or inventory?

    > `115 instances of ...  28 instances of ...`

    Do I want to output a found pattern?

    > `pattern found in line ...  pattern not found ...`

    Do I want a comparison?

    > `file X is the same as file Y  X is similar to Y  X and Y are different`

-   *What materials are available for processing?*

    > Use **find** and **grep** to locate useful materials.

-   *What materials do I need to create?*

    > Use [**encode**](commands/encode.html) to create new data. Use
    > [**humdrum**](commands/humdrum.html) and
    > [**proof**](commands/proof.html) to check the data. If necessary,
    > define your own Humdrum representation for a given purpose.

-   *How do I transform my data so it is easier to process?*

    > Use [**recode**](commands/recode.html) and
    > [**humsed**](commands/humsed.html) to classify data into various
    > classes \-- such as *up*, *down*, *leap*, *long*, *short*,
    > *difficult*, *easy*, *clarion register*, *dominant*, etc.
    >
    > Use translating/transforming commands such as
    > [**mint**,](commands/mint.html)
    > [**ydelta**,](commands/ydelta.html)
    > [**pcset**,](commands/pcset.html) etc to translate the data to a
    > different representation.

-   *What data should I eliminate?*

    > Use [**rid**,](commands/rid.html)
    > [**extract**,](commands/extract.html)
    > [**yank**,](commands/yank.html) **sed**,
    > [**humsed**,](commands/humsed.html) **uniq**, **uniq -d** and
    > **grep -v** to eliminate selective materials.

-   *What data do I need to coordinate?*

    > Use [**context**](commands/context.html) to generate contextual
    > information. Use [**assemble**,](commands/assemble.html)
    > [**rend**](commands/rend.html) and
    > [**cleave**](commands/cleave.html) to link information together.

-   *How do I know my results are worthwhile?*

    > Use comparative tests whenever you can. Use
    > [**scramble**](commands/scramble.html) -r, **scramble -t**,
    > **tac** and [**reihe**](commands/reihe.html) -s to generate
    > control groups.

------------------------------------------------------------------------

\

[**Previous Chapter**](guide39.html)

[**Table of Contents**](guide.toc.html)

[**Detailed Contents**](guide.toc.detailed.html)\
\
© Copyright 1999 David Huron
