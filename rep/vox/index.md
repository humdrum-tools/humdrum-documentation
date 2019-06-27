---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Humdrum Representation for Number of Active Voices
==================================================

### REPRESENTATION

> **\*\*vox\#** \-- representation of number of concurrently active
> voices

### DESCRIPTION

> The **\*\*vox\#** representation permits the representation of the
> number of notes sounding together at successive moments in time. The
> **\*\*vox\#** representation distinguishes just two types of data
> tokens: number-tokens, and barlines. Each **\*\*vox\#** number-token
> consists of a single integer value indicating the total number of
> simultaneously sounding voices.
>
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**vox#` data
> should be given names with the distinguishing \`.vox\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*vox\#** mappings of
> signifiers and signifieds.
>
> >   ----- ---------------------------------
> >   0-9   integer values; measure numbers
> >   =     barline; == double barline
> >   ;     pause (for barlines)
> >   ----- ---------------------------------
> >
> > *Summary of **\*\*vox\#** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ---------- ---------- ---------- -------------- -------------- ----------- -----
> >   \*\*kern   \*\*kern   \*\*kern   \*\*kern       \*\*kern       \*\*vox\#   
> >   =18        =18        =18        =18            =18            =18         
> >   8r         8B         4.g        8g             8dd)           4           
> >   8BBn       8B         .          8dd            8gg            5           
> >   8BB        8B         .          8dd            8gg            5           
> >   8BB        8B         8d         8g             8ff            5           
> >   =19        =19        =19        =19            =19            =19         
> >   4C         4c         4e-        4c 4g 4ee-     4ee-           7           
> >   4r         4r         4r         4r             4r             0           
> >   =20        =20        =20        =20            =20            =20         
> >   4AA-       4AA-       4a-        4a- 4f\# 4cc   4a- 4f\# 4cc   9           
> >   8.r        8.r        8.r        8.r            8.r            0           
> >   =21        =21        =21        =21            =21            =21         
> >   \*         \*         \*         \*             \*\^           \*          
> >   4GG        4GG        4G         4g 4d 4bn      4G 4d 4bn      2gg;        10
> >   4r         4r         4r         4r             4r             .           1
> >   \*-        \*-        \*-        \*-            \*-            \*-         \*-
> >   ---------- ---------- ---------- -------------- -------------- ----------- -----
> >
### PERTINENT COMMANDS

> The following Humdrum command produces **\*\*vox\#** data as output:
>
> >   -- --------------------------------- ----------------------------------------------------------------------------------------------
> >      [**vox**](../commands/vox.html)   determine number of concurrently active voices for **\*\*cbr**, **\*\*cents**,
> >                                        **\*\*cocho**, **\*\*deg**, **\*\*degree**, **\*\*freq**, **\*\*kern**, **\*\*pc**,
> >                                        **\*\*pitch**, **\*\*semits**, **\*\*solfa**, **\*\*solfg**, **\*\*specC**, and **\*\*Tonh**
> >   -- --------------------------------- ----------------------------------------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*vox\#**:
>
> >   ------------------ ---------
> >   meter signatures   `*M6/8`
> >   ------------------ ---------
> >
> > *Tandem interpretations for **\*\*vox\#***

### SEE ALSO

> ` barlines, **barks, **cbr, **cents, **cocho, **deg, **degree, **freq, **kern, **pc, **pitch, **semits, **solfa, **solfg, **specC, **Tonh, vox`

