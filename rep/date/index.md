---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Absolute Time
========================================

## REPRESENTATION ##

<span class="rep">date</span> &mdash; absolute time representation (year, month, day, hour,
minute, second \...)

## DESCRIPTION ##

The <span class="rep">date</span> representation provides a flexible means for
specifying particular moments in historical time. The <span class="rep">date</span>
scheme is able to represent year, month, day, hour, minute, second,
and fractional second information. In addition, various degrees of
approximation and uncertainty may be represented. N.B. Time-*spans*
are not represented by <span class="rep">date</span>; see the
[<span class="rep">dur</span>](dur.rep.html), [<span class="rep">time</span>](time.rep.html), or
[<span class="rep">Zeit</span>](Zeit.rep.html) representations.

In the <span class="rep">date</span> representation, date information is encoded
according to the following basic syntax:

*year**/**month**/**day**/**hour**:**minute**:**second**.**decimal*

Date information may be encoded in full, or may consist of isolated
elements or parts. The following table shows the most succinct ways of
encoding single date values within <span class="rep">date</span>:

-------- -----------------------------------
`.11`    eleven one-hundredths of a second
`11`     11th second
`11:`    11th minute
`11::`   11 o'clock
`11/`    the year 11 A.D.
`@11/`   the year 11 B.C.E./TD\>
`/11`    November
`//11`   11th day of the month
-------- -----------------------------------

*Examples of <span class="rep">date</span> components*

Notice that if a single numerical value appears, it is interpreted as
*seconds*; if a single value appears followed by a slash, it is
interpreted as a *year*; if a single value appears followed by a
colon, it is interpreted as a *minutes*. Days and hours require two
leading or two trailing delimiters respectively. In general,
abbreviated forms of <span class="rep">date</span> representations tend to favor the
two extremes of time: seconds and years. These are the time frames
that are typically of greatest interest to music scholars.

The <span class="rep">date</span> representation makes use of the Gregorian calendar
and the 24-hour clock; Dates prior to the year 1 A.D. can be specified
by prepending the \"at\" sign (`@`) to the year.

The <span class="rep">date</span> representation provides three distinct means for
representing approximate moments. It also provides two independent
means for representing uncertainty, as well as mechanisms for
representing time boundaries (prior to \...; after \...).

If a date token is preceded by the tilde (\~) signifier, the entire
data token is taken to be *approximate.* Hence, the token ` ~1556/`
represents the approximate year 1556, whereas the token ` ~1901/9/1/`
represents approximately September 1st, 1901. When the lower-case
letter \`x\' appears in a data token, it indicates that only the
adjoining numerical value is approximate. Hence, the token
` 1921/6x//` means approximately June in the year 1921, whereas the
token ` 1921x/6//` means the month of June in the approximate year
1921. The \`x\' may precede or follow a given value &mdash; provided it is
adjacent to the approximate value.

` 14:30x:`

means *approximately 30 minutes* after 2 PM, rather than approximately
2:30 PM. In this case, only the value \`30\' is approximate.

A third method for representing temporal approximation employs the
caret (\^) to denote a range. For example, the <span class="rep">date</span> token:

` 1554/^1557/`

represents a moment somewhere between the years 1554 and 1557.
Conceptually, <span class="rep">date</span> is intended to represent *moments* rather
than *periods* of time. In other words, the above token represents a
moment sometime between 1554 and 1557; it is not intended to signify
an event that spanned the years 1554 to 1557. <span class="rep">date</span> does not
presume how long a moment \"lasts,\" so it is theoretically possible
to interpret 1554 to 1557 as a \"long moment.\" However, another
representation &mdash; **\*\*Zeit (2)** &mdash; is intended to represent
*periods* of time, and so is better suited to the task of representing
an ongoing state or condition. In **\*\*date,** the caret (\^) is
meant merely to provide a more precise means for specifying the degree
of approximation. The following <span class="rep">date</span> tokens:

` 1954/6/1/^1954/6/2/  2.23^2.238`

represent approximate times between June 1st and 2nd, 1954, and
between 2.230 and 2.238 seconds respectively.

In addition to methods for representing approximation, <span class="rep">date</span>
also allows three methods for the encoding of uncertainty. General
uncertainty is signified using the question-mark (?). A <span class="rep">date</span>
token preceded by a question-mark indicates that the date information
is *uncertain* (rather than imprecise). For example, the <span class="rep">date</span>
token:

` ?1661/4//`

represents the month of April, 1661 &mdash; but indicates that this date
is uncertain. When the lower-case letter \`z\' appears in a data
token, it indicates that only the adjoining numerical value is
uncertain. This allows the user to be more specific about what aspect
of the date is uncertain. For example, a composer's letter might be
dated \`September 17th,\' but historians may be uncertain of the
precise year. This date might be encoded as:

` 1840z/9/17/`

Note that uncertainty is not the same as approximation. Consider, for
example, the contents of a letter dated simply \"the 10th\" that
refers to especially hot summer temperatures. The letter is thought to
have been written in 1932:

` 1932z/8x/10/`

This representation indicates that the year 1932 is uncertain, that
the month is approximately August, but that the date is definitely the
tenth. As in the case of the \`x\' signifier, the \`z\' may precede or
follow a given value &mdash; provided it is adjacent to the uncertain
value.

A third method for representing uncertainty is provided by the
<span class="rep">date</span> logical OR signifier (\|). As in the case of the logical
BETWEEN (\^), the OR signifier separates two component sub-dates. For
example, the token ` 10:41:|11:41:` means \"either 10:41 AM or 11:41
AM.\"

In addition to the approximation and uncertainty signifiers,
<span class="rep">date</span> also permits the encoding of time boundaries. The
less-than sign (\<) denotes \"prior to\" and the greater-than sign
(\>) denotes \"after.\" For example, the data token ` <1100/` means
prior to 1100 A.D., whereas the token ` >21::` means after 21 hours.

Time boundaries can be mixed with approximation and uncertainty
operators. Hence, the data token ` <5:30x:` represents a time prior to
5 minutes and approximately 30 seconds. Similarly, time boundaries can
be mixed with time ranges. Thus, the data token ` <1604/^1605/` means
before some time between 1604 and 1605.

Note that \> and \< apply to entire date tokens (only one of \> or \<
may appear in a given token). The signifiers ? and \~ can apply to
subtokens (joined by the *BETWEEN* (\^) or *OR* conjunction operators.
The signifiers x and z apply to individual numerical values only.

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">data</span> data
should be given names with the distinguishing \`.dte\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">date</span> mappings of signifiers
and signifieds.

----- ----------------------------------------------
0-9   decimal values
@     year B.C. (B.C.E.) rather than A.D.
/     year-month, month-day and day-hour delimiter
:     hour-minute and minute-second delimiter
.     fractional second delimiter; null token
?     date uncertain
z     value uncertain
\~    date approximate
x     value approximate
\<    sometime prior to
\>    sometime after
\^    \"between\" conjunction
\|    \"or\" conjunction
----- ----------------------------------------------

*Summary of <span class="rep">date</span> Signifiers*

## EXAMPLES ##

Several examples of <span class="rep">date</span> data tokens are identified below:

------------------------- ---------------------------------------------------
\*\*date tokens           meaning

`1917/06/02/23:55:00.0`   5 minutes before midnight on June 2nd, 1917.
`1917/6/2/23:55:00.0`     5 minutes before midnight on June 2nd, 1917.
`///11:59:59`             One second before noon (no day info. provided).
`11:59:59`                One second before noon (no day info. provided).
`.001`                    Time of one millisecond.
`23.8`                    Time of 23.8 seconds.
`/1/1/`                   New Years\' Day (January 1st).
`1770/`                   The year 1770.
`@446/`                   The year 446 B.C.
`1983///.741`             The year 1983; a time-point of 741 milliseconds.
`<1300/`                  Sometime before the year 1300.
`>1::`                    Sometime after 1 AM.
`~14:30:`                 Approximately 2:30 PM.
`14:30x:`                 Approximately 30 minutes past 2 PM.
`?14:30:`                 Perhaps 2:30 PM.
`14:30z:`                 Perhaps 30 minutes past 2 PM.
`?1848/`                  Perhaps 1848.
`~1848/`                  Approximately 1848.
`1847/^1849/`             Sometime between 1847 and 1849.
`1847/|1848/|1849/`       Either 1847, 1848, or 1849.
`1848/4z//`               1848; perhaps April.
`1848x/4//`               Approximately 1848; certainly April.
`<@4000/`                 Prior to 4000 B.C.
`>~:1:30`                 After approximately a minute and a half.
`//3/^~//5/3`             Sometime between March and approximately May 3rd.
`>?~1933/7/30z/`          Perhaps sometime after about July 30(?) 1933.
------------------------- ---------------------------------------------------

*Examples of <span class="rep">date</span> Tokens*

The following is a sample document:

``

---------- -----------
\*\*opus   \*\*date
33\#1      1864/
33\#2      1864/3/31
33\#3      1864/
34         1865/4z/
35\#1      ?1865/
35\#2      \<1865/9/
\*-        \*-
---------- -----------

## PERTINENT COMMANDS ##

Currently, no special-purpose Humdrum commands produce <span class="rep">date</span> as
output, or process <span class="rep">date</span> encoded data as input.

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">date</span>:

------------------ -----------
meter signatures   `*M6/8`
tempo              `*MM96.3`
------------------ -----------

*Tandem interpretations for <span class="rep">date</span>*

## SEE ALSO ##

` **dur, **metpos, **ordo, **recip, **takt, **time, **Zeit`

