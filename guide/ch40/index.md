---
sidebar: toc
chapternav: guide
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:17:15 EST 2000'
vim: ft=html
permalink:	/guide/ch40/index.html
---

<div class="chapter-heading">
<h1> Chapter 40 </h1>
<h1> Conclusion </h1>
</div>

------------------------------------------------------------------------


In [Chapter 1,](/guide/ch01) we noted that computers are quite limited
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

As we've seen, there are two parts to Humdrum: the *Humdrum syntax* and
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

-   ***Displaying things.*** The <span class="tool">ms</span> command can be used to print or
    display musical notation.
-   ***Auditing.*** MIDI sound output can be generated using the
    <span class="tool">midi</span> and
    <span class="tool">perform</span> commands.
-   ***Searching for things.*** When searching for things within
    specified files, appropriate commands include: <span class="unix">grep</span>, <span class="unix">egrep</span>,
    [**yank -m**,](/tool/yank) <span class="tool">patt</span>,
    <span class="tool">pattern</span>,
    <span class="tool">correl</span>, <span class="tool">simil</span>
    and [**humdrum -v**.](/tool/humdrum) When searching for
    files that meet certain conditions, appropriate commands include
    **grep -l**, **egrep -l** and <span class="unix">find</span>. Most of these search tools
    rely extensively on regular expressions to define patterns of
    characters.
-   ***Counting things.*** Appropriate commands include: <span class="unix">wc</span>, **wc
    -l**, **grep -c**, **egrep -c**, <span class="tool">census</span>
    and **census -k**. Eliminating unnecessary or confounding
    information can be achieved using <span class="tool">rid</span>,
    <span class="tool">extract</span>, **grep -v**, <span class="unix">sed</span> and
    <span class="tool">humsed</span>.
-   ***Editing things.*** Manual editing may be done using any text
    editor, such as <span class="unix">emacs</span> or <span class="unix">vi</span>. Automated (or "stream")
    editing may be done using <span class="unix">sed</span> and
    <span class="tool">humsed</span>.
-   ***Editorializing.*** E.g., add an editorial footnote to a specified
    note or passage; indicate that a passage differs from the
    composer's autograph.
-   ***Transforming or translating between representations.***
    Appropriate commands include: <span class="tool">cents</span>,
    <span class="tool">deg</span>, <span class="tool">degree</span>,
    <span class="tool">dur</span>, <span class="tool">freq</span>,
    <span class="tool">hint</span>, <span class="tool">humsed</span>,
    <span class="tool">iv</span>, <span class="tool">kern</span>,
    <span class="tool">mint</span>, <span class="tool">pc</span>,
    <span class="tool">pf</span>, <span class="tool">pitch</span>,
    <span class="tool">reihe</span>,
    <span class="tool">semits</span>,
    <span class="tool">solfa</span>, [**solfg**,](/tool/solfg)
    <span class="tool">text</span>, [**tonh**,](/tool/tonh)
    <span class="tool">trans</span> and <span class="tool">vox</span>.
-   ***Arithmetic transformations of representations.*** Manipulating
    numerical values can be done using
    <span class="tool">xdelta</span>,
    <span class="tool">ydelta</span>,
    <span class="tool">recode</span> and <span class="unix">awk</span>.
-   ***Extracting or selecting information.*** Appropriate commands
    include: <span class="tool">extract</span>,
    <span class="tool">yank</span>, <span class="unix">grep</span>, <span class="unix">egrep</span>, [**yank
    -m**,](/tool/yank) <span class="tool">thru</span>,
    <span class="tool">strophe</span>, <span class="tool">rend</span>
    and **csplit**.
-   ***Linking or joining information.*** Appropriate commands include:
    <span class="tool">assemble</span>, <span class="unix">cat</span>,
    <span class="tool">cleave</span>,
    <span class="tool">timebase</span>,
    <span class="tool">context</span>,
    <span class="tool">ditto</span> and **join**.
-   ***Generating inventories of things.*** Appropriate commands
    include: <span class="unix">sort</span> and <span class="unix">uniq</span>. Once again, unnecessary or
    confounding information can be eliminated using
    <span class="tool">rid</span>, <span class="tool">extract</span>,
    **grep -v**, [**yank -m**,](/tool/yank) <span class="unix">sed</span> or
    <span class="tool">humsed</span>.
-   ***Classifying things.*** Numerical values can be classified using
    [<span class="tool">recode</span>;](/tool/recode) non-numerical data can be
    classified using <span class="tool">humsed</span>.
-   ***Labelling things.*** Appropriate commands include: [**patt
    -t**,](/tool/patt) <span class="tool">recode</span>,
    <span class="tool">humsed</span> and
    <span class="tool">timebase</span>.
-   ***Comparing whether things are the same or similar.*** Appropriate
    commands include: <span class="unix">diff</span>, **diff3**, <span class="unix">cmp</span>,
    <span class="tool">correl</span> and
    <span class="tool">simil</span>.
-   ***Capturing data.*** MIDI data can be input via
    <span class="tool">encode</span> and
    <span class="tool">record</span>.
-   ***Trouble-shooting.*** Appropriate commands include:
    <span class="tool">humdrum</span>, [**humdrum
    -v**,](/tool/humdrum) <span class="tool">proof</span>,
    [**proof -k**,](/tool/proof)
    <span class="tool">veritas</span>, <span class="tool">midi</span>
    and <span class="tool">perform</span>.

Not all of the existing Humdrum Tools were covered in this book. Nor
were all of the available options described for all of the tools
discussed. Exploring the *Humdrum Reference Manual* is recommended for
readers interested in continuing to develop facility with Humdrum.


Pursuing a Project with Humdrum
-------------------------------

If you have made it this far in the book, you will now have a fairly
sophisticated knowledge of Humdrum. With this background, we might
review some general principles and specific tips for making effective
use of Humdrum when pursuing some musicological project. The following
seven questions provide useful guidelines:

-   *What do I want my final output to look like?*
    Do I want a count or inventory?

    > `115 instances of ...  28 instances of ...`

    Do I want to output a found pattern?

    > `pattern found in line ...  pattern not found ...`

    Do I want a comparison?

    > `file X is the same as file Y  X is similar to Y  X and Y are different`

-   *What materials are available for processing?*

    > Use <span class="unix">find</span> and <span class="unix">grep</span> to locate useful materials.

-   *What materials do I need to create?*

    > Use <span class="tool">encode</span> to create new data. Use
    > <span class="tool">humdrum</span> and
    > <span class="tool">proof</span> to check the data. If necessary,
    > define your own Humdrum representation for a given purpose.

-   *How do I transform my data so it is easier to process?*

    > Use <span class="tool">recode</span> and
    > <span class="tool">humsed</span> to classify data into various
    > classes &mdash; such as *up*, *down*, *leap*, *long*, *short*,
    > *difficult*, *easy*, *clarion register*, *dominant*, etc.
    > Use translating/transforming commands such as
    > <span class="tool">mint</span>,
    > <span class="tool">ydelta</span>,
    > <span class="tool">pcset</span>, etc to translate the data to a
    > different representation.

-   *What data should I eliminate?*

    > Use <span class="tool">rid</span>,
    > <span class="tool">extract</span>,
    > <span class="tool">yank</span>, <span class="unix">sed</span>,
    > <span class="tool">humsed</span>, <span class="unix">uniq</span>, **uniq -d** and
    > **grep -v** to eliminate selective materials.

-   *What data do I need to coordinate?*

    > Use <span class="tool">context</span> to generate contextual
    > information. Use <span class="tool">assemble</span>,
    > <span class="tool">rend</span> and
    > <span class="tool">cleave</span> to link information together.

-   *How do I know my results are worthwhile?*

    > Use comparative tests whenever you can. Use
    > <span class="tool">scramble</span> -r, **scramble -t**,
    > <span class="unix">tac</span> and <span class="tool">reihe</span> -s to generate
    > control groups.

