---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Melodic Intervals
============================================

### REPRESENTATION

> **\*\*mint** \-- melodic interval representation

### DESCRIPTION

> The **\*\*mint** representation provides a means for characterizing
> sequential (melodic) pitch distances. The **\*\*mint** representation
> permits the encoding of four types of data tokens: interval tokens,
> pitch offsets, rests, and barlines.
>
> Interval tokens consist of up to three component parts: (1) interval
> direction, (2) diatonic interval size, and (3) interval quality. The
> interval direction is signified by a leading plus sign (+) for
> ascending motion, or a leading minus sign (-) for descending motion.
> No special signifier is provided to denote unison motion. Note that
> interval direction information is optional, and so is not a mandatory
> aspect of the **\*\*mint** representation.
>
> The diatonic interval size is signified by integer values \-- 1 for
> unison, 2 for second, 3 for third, 11 for eleventh, and so on.
>
> Interval qualities are signified as follows: the upper-case letter
> \`M\' for major intervals, lower-case \`m\' for minor intervals,
> upper-case \`P\' for perfect, lower-case \'d\' for diminished,
> upper-case \`A\' for augmented. Doubly-diminished and doubly-augmented
> intervals are represented by \`dd\' and \`AA\' respectively. Triply-
> and quadruply- diminished or augmented intervals are similarly
> represented by character repetition, e.g. \`AAA\'. Note that interval
> quality information is optional, and so is not a mandatory aspect of
> the **\*\*mint** representation.
>
> The normal or canonical order for data elements in a **\*\*mint**
> interval token is as follows: (1) direction of interval motion, (2)
> diatonic interval size, (3) interval quality. Note that more than one
> interval token may appear within Humdrum multiple-stops.
>
> Pitch offsets indicate initial or starting absolute pitches from which
> successive pitch intervals arise. Pitch offsets are optional and need
> not appear in a **\*\*mint** representation. Pitch offsets are
> distinguished by square brackets. Within the square brackets appears a
> pitch designation using any one of the following pitch-related
> representations: [**\*\*kern**](kern.rep.html),
> [**\*\*pitch**](pitch.rep.html), [**\*\*solfg**](solfg.rep.html) or
> [**\*\*Tonh**](Tonh.rep.html). For example, the following **\*\*mint**
> pitch offsets are considered equivalent: \`b\' (**\*\*kern**), \`B5\'
> (**\*\*pitch**), \`si5\' (**\*\*solfg**), \`H5\' (**\*\*Tonh**). Where
> necessary, several pitch offsets may appear as a Humdrum
> multiple-stop.
>
> Rests are denoted by the lower-case letter \`r\'.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**mint` data
> should be given names with the distinguishing \`.mnt\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*mint** mappings of signifiers
> and signifieds.
>
> >   ----- -------------------------------------------
> >   0-9   interval size signifiers; measure numbers
> >   A     augmented interval quality
> >   d     diminished interval quality
> >   M     major interval quality
> >   m     minor interval quality
> >   P     perfect interval quality
> >   r     rest
> >   =     barline; == double barline
> >   \-    descending interval
> >   \+    ascending interval
> >   ;     measure pause
> >   ----- -------------------------------------------
> >
> > *Summary of **\*\*mint** Signifiers*

### EXAMPLES

> The following example shows a `**pitch` spine on the left and a
> corresponding `**mint` spine on the right.
>
> > ``
> >
> >   ---------------------------- ----- -- ----------------------------
> >   **INPUT**                             **OUTPUT**
> >   !! Wagner, Tristan Prelude            !! Wagner, Tristan Prelude
> >   \*\*pitch                             \*\*mint
> >   \*M6/8                                \*M6/8
> >   A3                                    \[A3\]
> >   =1                                    =1
> >   F4                                    +m6
> >   .                                     .
> >   E4                                    -m2
> >   =2                                    =2
> >   F3 B3 D\#4 G\#4                       -M7 -P4 -m2 +M3
> >   \*-                          \*-      
> >   ---------------------------- ----- -- ----------------------------
> >
### PERTINENT COMMANDS

> The following Humdrum command produces **\*\*mint** data as outputs:
>
> >   -- ----------------------------------- -----------------------------------------------------------------------------------------------------
> >      <span class="tool">mint</span>   produces **\*\*mint** output from **\*\*pitch**, **\*\*kern**, **\*\*solfg**, or **\*\*Tonh** input
> >   -- ----------------------------------- -----------------------------------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*mint**:
>
> >   ------------------ ------------
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*mint***

### SEE ALSO

> ` barlines, **hint, hint, kern, mint, **solfg, **Tonh, xdelta, ydelta`

