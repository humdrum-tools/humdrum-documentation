---
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
description: |
    Documentation for the \*\*ordo Humdrum representaton; software for music
    research.
keywords: |
    music research,sequential order,software,theory,analysis,systematic
    musicology,computer representation,\*\*ordo
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
robots: all
title: 'Humdrum Toolkit Representation Reference - Sequential Order'
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

\

Humdrum Representation for Sequential Order
===========================================

### REPRESENTATION

> **\*\*ordo** \-- sequential order of events representation

### DESCRIPTION

> The **\*\*ordo** representation consists of a set of numerical values
> indicating the order of events. An **\*\*ordo** spine simply encodes a
> series of ascending integers marking the succession of events:
>
> > ``
> >
> >   ----------
> >   \*\*ordo
> >   1
> >   2
> >   3
> >   4
> >   5
> >   \*-
> >   ----------
> >
> The **\*\*ordo** representation recognizes \"common system\" barlines
> \-- see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly `**ordo` data
> should be given names with the distinguishing \`.ord\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*ordo** mappings of signifiers
> and signifieds.
>
> >   ----- ----------------
> >   0-9   decimal values
> >   .     null token
> >   =     barlines
> >   ==    double barline
> >   ----- ----------------
> >
> > *Summary of **\*\*ordo** Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ----------
> >   \*\*ordo
> >   =1
> >   1
> >   2
> >   3
> >   =2
> >   4
> >   .
> >   5
> >   \*-
> >   ----------
> >
### PERTINENT COMMANDS

> The following Humdrum command produces **\*\*ordo** data as output:
>
> >   -- --------------------------------- --------------------------------------
> >      [**num**](../commands/num.html)   number selected Humdrum data records
> >   -- --------------------------------- --------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*ordo**:
>
> >   ------------------ ------------
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   tempo              `*MM96.3`
> >   timebase           `*tb32`
> >   ------------------ ------------
> >
> > *Tandem interpretations for **\*\*ordo***

### SEE ALSO

> ` barlines, **date, **dur, **metpos, **recip, scramble, **takt, **time, **Zeit`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide13.html#XXXXX)
-   [**Index to Humdrum Representations**](../representations.toc.html)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
