---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Sequential Order
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
> >      <span class="tool">num</span>   number selected Humdrum data records
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

