---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Humdrum Representation for Absolute Time Period
===============================================

### REPRESENTATION

**\*\*Zeit** \-- absolute period of time

### DESCRIPTION

The **\*\*Zeit** representation is used to represent spans of time,
such as the life-span of a composer, or the chronology of a rehearsal.
The syntax for **\*\*Zeit** is nearly identical to the
[**\*\*date**](date.rep.html) representation. Since **\*\*Zeit**
represents a span of time, two date tokens must be specified and
separated by a dash (`-`). For example, the **\*\*Zeit** data token
`1770/-1827/` represents the period from 1770 to 1827.

The **\*\*Zeit** representation includes all of the features of
[**\*\*date**](date.rep.html) for signifying approximation (\~),
uncertainty (?), approximate value (x), uncertain value (z), as well
as between-range (\^), either-or (\|), prior (\<) and after (\>)
boundaries. Either one or both of the dates specified in a
**\*\*Zeit** data token may encode complex degrees of approximation or
uncertainty.

Conceptually, **\*\*Zeit** data tokens consist of two
[**\*\*date**](date.rep.html) \"sub-tokens.\" Zeit tokens are encoded
according to the following basic syntax:

*year**/**month**/**day**/**hour**:**minute**:**second**.**decimal**-**year**/**month**/**day**/**hour**:**minute**:**second**.**decimal*

The data tokens making-up the **\*\*Zeit** information may be encoded
in full, or may consist of isolated elements or parts. The following
table shows the most succinct ways of encoding single date values
within sub-tokens in **\*\*Zeit**:

>   -------- -----------------------------------
>   `.11`    eleven one-hundredths of a second
>   `11`     11th second
>   `11:`    11th minute
>   `11::`   11 o\'clock
>   `11/`    A.D. 11
>   `/11`    November
>   `//11`   11th day of the month
>   -------- -----------------------------------

> *Examples of **date** sub-components*

Notice that if a single numerical value appears, it is interpreted as
*seconds*; if a single value appears followed by a slash, it is
interpreted as a *year*; if a single value appears followed by a
colon, it is interpreted as a *minutes*. Days and hours require two
leading or two trailing delimiters respectively. In general,
abbreviated forms of date sub-tokens tend to favor the two extremes of
time: seconds and years. These are the time frames that are typically
of greatest interest to music scholars.

The **\*\*Zeit** representation makes use of the Gregorian calendar
and the 24-hour clock. Dates prior to the year 1 A.D. can be specified
by prepending a minus sign to the year.

The **\*\*Zeit** representation provides three distinct means for
representing approximate moments. It also provides two independent
means for representing uncertainty, as well as mechanisms for
representing time boundaries (prior to \...; after \...). For the
appropriate representation syntax refer to
[**\*\*date**](date.rep.html).

### FILE TYPE

It is recommended that files containing predominantly `**Zeit` data
should be given names with the distinguishing \`.zt\' extension.

### SIGNIFIERS

The following table summarizes the **\*\*Zeit** mappings of signifiers
and signifieds.

>   ----- ----------------------------------------------
>   \-    sub-token separator (from-to); (must appear
>         in each **\*\*Zeit** data token)
>   0-9   decimal values
>   @     year B.C. rather than A.D.
>   /     year-month, month-day and day-hour delimiter
>   :     hour-minute and minute-second delimiter
>   .     fractional second delimiter; null token
>   ?     date uncertain
>   z     value uncertain
>   \~    date approximate
>   x     value approximate
>   \<    sometime prior to
>   \>    sometime after
>   \^    \"between\" conjunction
>   \|    \"or\" conjunction
>   ----- ----------------------------------------------

> *Summary of **\*\*Zeit** Signifiers*

### EXAMPLES

Several examples of **\*\*Zeit** data tokens are identified below:

>   ------------------------- ----------------------------------------------
>   \*\*Zeit tokens           meaning

>   `1939/-1945/`             From 1939 to 1945.
>   `1817/06/02/-1817/6/15`   From June 2nd to 15th, 1817.
>   `1817/6/02/-1817/06/15`   From June 2nd to 15th, 1817.
>   `///10::-///11::`         From 10 AM to 11 AM.
>   `10::-11::`               From 10 AM to 11 AM.
>   `~10::-~11::`             From approximately 10 AM to approximately
>                             11 AM.
>   `>22::-<23::`             From sometime after 10 PM to sometime
>                             before 11 PM.
>   `:11:51-:12:35`           From 11 minutes 51 seconds to 12 minutes
>                             35 seconds.
>   `.001-.008`               From 1 millisecond to 8 milliseconds.
>   `23.8-41.3`               From 23.8 seconds to 41.3 seconds.
>   `//12/31-//1/1`           From December 31st to New Years\' Day.
>   `<?1231///-1283/3/9`      From before perhaps 1231 to March 9th 1283.
>   `<1724/2//-1724/4z/2`     From before Feb. 1724 to April (?) 2nd 1724.
>   `1848/|1849/-1851/`       From 1848 or 1849 to 1851.
>   `/5/9/^/5/11/-//8/23`     Starting sometime between May 9th and 11th
>                             ending August 23rd.
>   ------------------------- ----------------------------------------------

> *Examples of **\*\*Zeit** Tokens*

The following examples illustrate the use of the `**Zeit`
representation:


>   --------------------- ---------------------
>   \*\*Zeit              \*\*maker
>   ?1644/-1737/12/18     Stradivari, Antonio
>   1794/4/9-1881/11/25   Boehm, Theobald
>   1797/2/15-1871/2/7    Steinweg, Heinrich
>   1814/11/6-1894/2/4    Sax, Adolphe
>   \*-                   \*-
>   --------------------- ---------------------


>   ----------------------- -------------------
>   \*\*Zeit                \*\*recording log
>   /4/9:20:18-/4/9:20:20   Aria - Take \#1
>   /4/9:20:20-/4/9:20:22   Aria - Take \#2
>   /4/9:20:23-/4/9:20:25   Aria - Take \#3
>   /4/9:20:25-/4/9:20:27   Var.1 - Take \#1
>   \*-                     \*-
>   ----------------------- -------------------


>   ------------- ----------------
>   \*\*Zeit      \*\*section
>   0:0-0:23      Introduction
>   0:23-1:58     Exposition
>   1:58.3-3:22   Development
>   3:22-4:51     Recapitulation
>   4:52-5:04     Coda
>   \*-           \*-
>   ------------- ----------------


>   ----------------- -------------
>   \*\*Zeit          \*\*style
>   \~1450/-\~1600/   Renaissance
>   \~1600/-\~1750/   Baroque
>   \~1775/-\~1825/   Classicism
>   \~1800/-\~1900/   Romanticism
>   \*-               \*-
>   ----------------- -------------

### PERTINENT COMMANDS

Currently, no special-purpose Humdrum commands produce **\*\*Zeit** as
output, or process **\*\*Zeit** encoded data as input.

### TANDEM INTERPRETATIONS

The following tandem interpretations can be used in conjunction with
**\*\*Zeit**:

>   ------------------ ---------
>   meter signatures   `*M6/8`
>   ------------------ ---------

> *Tandem interpretations for **\*\*Zeit***

### SEE ALSO

` **date, **dur, **metpos, **ordo, **recip, **takt, **time`

