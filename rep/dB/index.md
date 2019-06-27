---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Decibels
===================================

### REPRESENTATION

> **\*\*dB** \-- relative amplitude representation

### DESCRIPTION

> The **\*\*dB** representation is used to represent relative amplitude
> in decibels. The reference amplitude is deemed to be 0 dB. In a group
> of tones, normally the loudest tone is selected as the reference.
> Typically this means that other tones have negative decibel values.
>
> Relative amplitude values may be either integer or decimal values.
> Both positive and negative values are permissible.

### FILE TYPE

> It is recommended that files containing predominantly `**dB` data
> should be given names with the distinguishing \`.db\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*dB** mappings of signifiers
> and signifieds.
>
> >   ----- -----------------------------------------
> >   0-9   decimal values
> >   \+    plus sign (optional)
> >   \-    minus sign
> >   .     fractional second delimiter; null token
> >   ----- -----------------------------------------
> >
> > *Summary of **\*\*dB** Signifiers*

### EXAMPLES

> The following sample document encodes the relative amplitudes for the
> first five harmonics of a tone pitched at middle C (C4). Notice the
> use of the \*H tandem interpretations to indicate the harmonic number.
> In this example, all amplitudes have been given in decibels relative
> to the first harmonic.
>
> > ``
> >
> >   ----------- -------- -------- -------- -------- --------
> >   \*\*pitch   \*\*dB   \*\*dB   \*\*dB   \*\*dB   \*\*dB
> >   \*          \*H01    \*H02    \*H03    \*H04    \*H05
> >   C4          0.0      -5.3     -24.3    -5.3     -23.7
> >   \*-         \*-      \*-      \*-      \*-      \*-
> >   ----------- -------- -------- -------- -------- --------
> >
### PERTINENT COMMANDS

> The following Humdrum command accepts **\*\*dB** encoded data as
> input:
>
> >   -- ------------------------------------- ----------------------------------------------------
> >                                            
> >      [**spect**](../commands/spect.html)   convert notated sonority to instantaneous spectrum
> >   -- ------------------------------------- ----------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*dB:**
>
> >   ------------------ ---------
> >   MIDI channel       `*Ch1`
> >   harmonic number    `*H3`
> >   meter signatures   `*M6/8`
> >   ------------------ ---------
> >
> > *Tandem interpretations for **\*\*dB***

### SEE ALSO

> ` **dynam, **spect, spect`

