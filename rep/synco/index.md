---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Metric Syncopation
=============================================

## REPRESENTATION ##

<span class="rep">synco</span> &mdash; represent degree of metric syncopation

## DESCRIPTION ##

The <span class="rep">synco</span> representation encodes numerical values that
indicate the degree of metric syncopation for successive moments in a
musical passage. Data tokens for <span class="rep">synco</span> consist only of decimal
numbers. The value 0 indicates no metric syncopation at the current
data record. Higher numerical values indicate increasing amounts of
metric syncopation at the current data record.

Syncopation values follow a definition of metric syncopation inspired
by the work of Lee and Longuet-Higgins (1982). In brief, metric
syncopation may be defined as a moment where an expected metric stress
is absent. More specifically, a metrically syncopated moment is
defined as occurring when no note-onset happens at a moment whose
metric position is more important than that of the most recent note
onset. For example, where a note occurs on the second beat of a
quadruple meter, and is not followed by a note on the third beat, the
third beat is deemed syncopated because it occupies a higher metric
position than the previous onset.

Numerical <span class="rep">synco</span> values are equal to the logarithm of the
metric position of the previous onset minus the logarithm of the
metric position of the current moment &mdash; where the current moment has
no note onset, and coincides with a higher metric position than the
previous onset. For example, missing downbeats at the beginning of a
measure produce the large syncopation values.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

Note: <span class="rep">synco</span> data is normally produced by the <span class="tool">synco</span>
command.

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">synco</span> data
should be given names with the distinguishing \`.syn\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">synco</span> mappings of
signifiers and signifieds.

----- ----------------------------------
0-9   decimal values
.     fractional delimiter; null token
=     barline; == double barline
----- ----------------------------------

*Summary of <span class="rep">synco</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

-----------
\*\*synco
\*M2/4
\*tb8
=1
0
0
0
0
=2
1.10
0
0
0
=3
0.69
0
\*-
-----------

## PERTINENT COMMANDS ##

The following Humdrum command produces <span class="rep">synco</span> data as output:

-- ------------------------------------- ------------------------------------------
<span class="tool">synco</span>   measure the degree of metric syncopation
-- ------------------------------------- ------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">synco</span>:

------------------ -----------
MIDI channel       `*Ch1`
meter signatures   `*M6/8`
tempo              `*MM96.3`
timebase           `*tb32`
------------------ -----------

*Tandem interpretations for <span class="rep">synco</span>*

## SEE ALSO ##

` barlines, **metpos, synco, **timebase`

## REFERENCES ##

Longuet-Higgins, H. C., & Lee, C. S., \"The perception of musical
rhythms,\" *Perception,* Vol. 11 (1982) pp. 115-128.

