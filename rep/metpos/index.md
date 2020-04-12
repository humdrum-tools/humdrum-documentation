---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Metric Hierarchy
===========================================

## REPRESENTATION ##

> <span class="rep">metpos</span> \-- position in metric hierarchy

## DESCRIPTION ##

> The <span class="rep">metpos</span> representation consists of simply a set of
> numerical values indicating the order of events. Normally, a
> <span class="rep">metpos</span> spine simply encodes a set of ascending integers
> marking the succession of events:
>
> > ``
> >
> >   ------------
> >   \*\*metpos
> >   1
> >   2
> >   3
> >   4
> >   5
> >   \*-
> >   ------------
> >
> The <span class="rep">metpos</span> representation also recognizes <span class="rep">kern</span>-like
> [**barlines**](barlines.rep.html). The presence of an equals-sign
> ` (=)` in the first column of a <span class="rep">metpos</span> spine is used to denote
> a barline. Immediately after the equals sign there may follow an
> optional integer value indicating the measure number (e.g. ` =107` \--
> for measure 107). In addition, a lower-case alphabetic character may
> be appended to the measure number \-- as in: ` =14b.` This convention
> permits the user to distinguish measure numbers for first and second
> endings. Measure numbers refer to the information immediately
> following the barline, thus the token ` =23` occurs just prior to the
> encoded beats for measure 23.
>
> Double barlines are indicated by using two or more successive equals
> signs ` (==).` Several consecutive equals signs may be encoded in
> order to enhance readability (e.g. ` =======).` An additional
> attribute for barlines is the *pause* \-- which is represented by
> the\-- icolon (;). Thus the token ` =4;` means that the barline
> starting measure number 4 has a pause written above or below it, while
> the token ` =====;` means that a double barline contains a pause
> indication.

## FILE TYPE ##

> It is recommended that files containing predominantly <span class="rep">metpos</span> data
> should be given names with the distinguishing \`.mtp\' extension.

## SIGNIFIERS ##

> The following table summarizes the <span class="rep">metpos</span> mappings of
> signifiers and signifieds.
>
> >   ----- ----------------------------------
> >   0-9   decimal values
> >   .     fractional delimiter; null token
> >   =     barlines
> >   ==    double barline
> >   ----- ----------------------------------
> >
> > *Summary of <span class="rep">metpos</span> Signifiers*

## EXAMPLES ##

> A sample document is given below:
>
> > ``
> >
> >   ---------- ------------
> >   \*\*kern   \*\*metpos
> >   \*M4/4     \*M4/4
> >   \*tb16     \*tb16
> >   \*c:       \*
> >   =1         =1
> >   8r         1
> >   .          5
> >   16cc       4
> >   16bn       5
> >   8cc        3
> >   .          5
> >   8g         4
> >   .          5
> >   8a-        2
> >   .          5
> >   16cc       4
> >   16b        5
> >   8cc        3
> >   .          5
> >   8dd        4
> >   .          5
> >   =2         =2
> >   \*-        \*-
> >   ---------- ------------
> >
## PERTINENT COMMANDS ##

> The following Humdrum commands accept <span class="rep">metpos</span> encoded data as
> inputs:
>
> >   -- ------------------------------------------- ---------------------------------------------------
> >      <span class="tool">synco</span>         measure degree of metric syncopation
> >      <span class="tool">urrhythm</span>   characterize the rhythmic prototypes in a passage
> >   -- ------------------------------------------- ---------------------------------------------------
> >
> The following Humdrum command produces <span class="rep">metpos</span> data as output:
>
> >   -- --------------------------------------- ---------------------------------------------------------------------------------------------
> >      <span class="tool">metpos</span>   generate metric position values for timebase-formatted <span class="rep">kern</span> or <span class="rep">recip</span> inputs
> >   -- --------------------------------------- ---------------------------------------------------------------------------------------------
> >
## TANDEM INTERPRETATIONS ##

> The following tandem interpretations can be used in conjunction with
> <span class="rep">metpos</span>:
>
> >   ------------------ -----------
> >   MIDI channel       `*Ch1`
> >   meter signatures   `*M6/8`
> >   tempo              `*MM96.3`
> >   timebase           `*tb32`
> >   ------------------ -----------
> >
> > *Tandem interpretations for <span class="rep">metpos</span>*

## SEE ALSO ##

> ` barlines, **date, **dur, **kern, kern, metpos, **ordo, **recip, **takt, **time, timebase, **Zeit`

