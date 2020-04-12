---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Similarity Values
============================================

### REPRESENTATION

> <span class="rep">simil</span> \-- similarity representation

### DESCRIPTION

> The <span class="rep">simil</span> representation encodes numerical values that
> indicate the [**Damerau-Levenshtein edit
> distance**](../commands/simil.html#REFERENCES) between two other
> Humdrum representations. Data tokens for <span class="rep">simil</span> consist only of
> decimal numbers. The value 1.0 indicates identical material beginning
> at the current data record. Lower numerical values indicate
> increasingly less similarity at the current data record.

### FILE TYPE

> It is recommended that files containing predominantly <span class="rep">simil</span> data
> should be given names with the distinguishing \`.sim\' extension.

### SIGNIFIERS

> The following table summarizes the <span class="rep">simil</span> mappings of
> signifiers and signifieds.
>
> >   ----- ----------------------------------
> >   0-9   decimal values
> >   .     fractional delimiter; null token
> >   ----- ----------------------------------
> >
> > *Summary of <span class="rep">simil</span> Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   -----------
> >   \*\*simil
> >   0.78
> >   0.73
> >   0.74
> >   0.69
> >   0.71
> >   0.68
> >   0.68
> >   0.63
> >   .
> >   .
> >   \*-
> >   -----------
> >
### PERTINENT COMMANDS

> The following Humdrum command produces <span class="rep">simil</span> data as output:
>
> >   -- ------------------------------------- ---------------------------------------------------
> >      <span class="tool">simil</span>   measure the similarity between two Humdrum spines
> >   -- ------------------------------------- ---------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> <span class="rep">simil</span>:
>
> >   ------------------ ------------
> >   MIDI channel       `*Ch1`
> >   meter signatures   `*M6/8`
> >   key signatures     `*k[f#c#]`
> >   key                `*c#:`
> >   ------------------ ------------
> >
> > *Tandem interpretations for <span class="rep">simil</span>*

### SEE ALSO

> ` cmp (UNIX), **correl, correl, diff (UNIX), patt, pattern, simil, **xref`

