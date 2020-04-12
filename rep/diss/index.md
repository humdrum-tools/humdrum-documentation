---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Dissonance
=====================================

## REPRESENTATION ##

<span class="rep">diss</span> &mdash; sensory dissonance representation

## DESCRIPTION ##

The <span class="rep">diss</span> representation is used to characterize the degree of
sensory dissonance for successive acoustic moments. Two types of
tokens are recognized by **\*\*diss:** dissonance-tokens and barlines.
Dissonance-tokens encode integer values greater than or equal to zero.
Larger values represent higher sensory dissonance. Dissonance values
reflect the measurement method devised by Kameoka and Kuriyagawa (see
[**REFERENCES**](#REFERENCES)).

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">diss</span> data
should be given names with the distinguishing \`.dis\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">diss</span> mappings of signifiers
and signifieds.

----- ------------------------------------------
0-9   dissonance values specified as integers;
measure numbers
=     barline
==    double barline
=;    barline with pause sign
----- ------------------------------------------

*Summary of <span class="rep">diss</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

----------
\*\*diss
\*C:
\*M4/4
=1
65
84
152
160
=2
211
1017
841
1221
=3
\*-
----------

Note that rests are not represented in the <span class="rep">diss</span> scheme.

## PERTINENT COMMANDS ##

The following Humdrum command produces <span class="rep">diss</span> data as output:

-- ----------------------------------- -------------------------------------------------------------------

<span class="tool">diss</span>   calculate the degree of sensory dissonance for successive spectra
-- ----------------------------------- -------------------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">diss</span>:

------------------ ------------
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
------------------ ------------

*Tandem interpretations for <span class="rep">diss</span>*

## SEE ALSO ##

` barlines, diss, **spect, spect`

[]{#REFERENCES}

## REFERENCES ##

Kameoka, A. & Kuriyagawa, M. \"Consonance theory, part I: Consonance
of dyads.\" *Journal of the Acoustical Society of America,* Vol. 45,
No. 6 (1969a) pp.1451-1459.

Kameoka, A. & Kuriyagawa, M. \"Consonance theory, part II: Consonance
of complex tones and its calculation method.\" *Journal of the
Acoustical Society of America,* Vol. 45, No. 6 (1969b) pp.1460-1469.

