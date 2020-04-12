---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Duration
===================================

## REPRESENTATION ##

<span class="rep">dur</span> &mdash; duration (time-span) representation

## DESCRIPTION ##

The <span class="rep">dur</span> representation can be used to encode a sequence of
time-spans or successive durations. Units may be seconds, minutes,
hours, days, months, and/or years.

In the <span class="rep">dur</span> representation, duration information is encoded
according to the following basic syntax:

*years**/**months**/**days**/**hours**:**minutes**:**seconds**.**decimal*

Duration information may be encoded in full, or may consist of
isolated elements or parts. The following table shows the most
succinct ways of encoding single duration values within <span class="rep">dur</span>:

-------- -------------------------------
`.11`    11 one-hundredths of a second
`11`     11 seconds
`11:`    11 minutes
`11::`   11 hours
`11/`    11 years
`/11`    11 months
`//11`   11 days
-------- -------------------------------

*Examples of <span class="rep">dur</span> components*

Notice that if a single numerical value appears, it is interpreted as
*seconds*. For example, the data token ` 32` represents a duration of
32 seconds. If a single value appears followed by a slash, it is
interpreted as the number of *years*; if a single value appears
followed by a colon, it is interpreted as the number of *minutes*.
Days and hours require two leading or two trailing delimiters
respectively. In general, abbreviated forms of <span class="rep">dur</span>
representations tend to favor the two extremes of durations: in
seconds and in years.

The data token ` 1:15:10` represents a duration of one hour fifteen
minutes and 10 seconds. It is also possible to encode such durations
in seconds alone as in the equivalent &mdash; ` 4510.` If only a single
colon is encountered, it is presumed to delineate minutes and seconds
as in ` 5:33` (five minutes and 33 seconds).

The data token ` 53/` means an elapsed duration of 53 years, whereas
` /9//` means a duration of 9 months. The data token ` //730/` means
730 days.

The <span class="rep">dur</span> representation provides a means for representing
approximate durations. It also provides a means for representing
uncertainty, as well as mechanisms for representing time boundaries
(prior to \...; after \...).

If a duration token is preceded by the tilde (\~) signifier, the
entire data token is taken to be *approximate.* Hence, the token
` ~1/` signifies a duration of about 1 year and the token ` ~3` means
a duration of about 3 seconds.

If a duration token is preceded by the question mark (?), the duration
is taken to be uncertain. Hence, the token ` ?3:` signifies a duration
of perhaps 3 minutes.

The <span class="rep">dur</span> representation does not support the \`x\' and \`z\'
signifies used by related representations such as <span class="rep">date</span> and
**\*\*Zeit.** However, <span class="rep">dur</span> is able to represent shorter-than
(\<) and longer-than (\>) indications. For example, the data token
` <1:` means a duration of less than one minute.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">dur</span> data
should be given names with the distinguishing \`.dur\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">dur</span> mappings of signifiers
and signifieds.

----- ----------------------------------------------------
0-9   decimal values
/     years-months, months-days and days-hours delimiter
:     hours-minutes and minutes-seconds delimiter
.     fractional second delimiter; null token
?     duration uncertain
\~    duration approximate
\<    duration shorter than
\>    duration longer than
=     barlines
==    double barline
----- ----------------------------------------------------

*Summary of <span class="rep">dur</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

-----------------
!! Gustav Holst
\*\*dur
\*M5/4
=1
.3
.3
.3
1
1.
0.5
0.5
1.0
=2
\*-
-----------------

## PERTINENT COMMANDS ##

The following Humdrum command produces <span class="rep">dur</span> data as output:

<span class="tool">dur</span>

change canonical durations (`**recip) to elapsed time in seconds   `

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">dur</span>:

------------------ -----------
MIDI channel       `*Ch1`
meter signatures   `*M6/8`
tempo              `*MM96.3`
timebase           `*tb32`
------------------ -----------

*Tandem interpretations for <span class="rep">dur</span>*

## SEE ALSO ##

` barlines, **date, **metpos, **ordo, **recip, **takt, **time, **Zeit`

