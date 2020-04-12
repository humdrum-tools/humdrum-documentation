---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Elapsed Time
=======================================

## REPRESENTATION ##

 <span class="rep">time</span> &mdash; relative elapsed time (in seconds)

## DESCRIPTION ##

 The <span class="rep">time</span> representation is used to represent cumulative time
 (from some arbitrary moment deemed \"time zero\") to the onset of the
 current moment. A typical use for <span class="rep">time</span> is to represent the
 elapsed time from the beginning of a work (in seconds). Data tokens in
 <span class="rep">time</span> consist simply of numbers of seconds, with an optional
 decimal value. The <span class="rep">time</span> representation has no provision for
 representing \"hours\" or \"minutes\".

 Barlines are represented using the \"common system\" for barlines &mdash;
 see [**barlines**](barlines.rep.html).

## FILE TYPE ##

 It is recommended that files containing predominantly <span class="rep">time</span> data
 should be given names with the distinguishing \`.tim\' extension.

## SIGNIFIERS ##

 The following table summarizes the <span class="rep">time</span> mappings of signifiers
 and signifieds.

  | 0-9 |  decimal values
  | .  	|   fractional second delimiter; null token
  | =   |  barlines
  | ==  |  double barline

 *Summary of <span class="rep">time</span> Signifiers*

## EXAMPLES ##

 A sample document is given below:

  | \*\*kern | \*\*metpos |  \*\*takt |  \*\*time
  | \*M4/4   |  \*M4/4    |   \*M4/4  |   \*M4/4
  | \*MM60   |  \*MM60    |   \*MM60  |   \*MM60
  | \*c:     |  \*        |   \*      |   \*
  | =1       |  =1        |   =1      |   =1
  | 8r       |  1         |   1       |   0
  | 16cc     |  4         |   1.5     |   0.5
  | 16bn     |  5         |   1.75    |   0.75
  | 8cc      |  3         |   2       |   1
  | 8g       |  4         |   2.5     |   1.5
  | 8a-      |  2         |   3       |   2
  | 16cc     |  4         |   3.5     |   2.5
  | 16b      |  5         |   3.75    |   2.75
  | 8cc      |  3         |   4       |   3
  | 8dd      |  4         |   4.5     |   3.5
  | =2       |  =2        |   =2      |   =2
  | 8g       |  1         |   1       |   4
  | 16cc     |  4         |   1.5     |   4.5
  | 16bn     |  5         |   1.75    |   4.75
  | 8cc      |  3         |   2       |   5
  | 8dd      |  4         |   2.5     |   5.5
  | 16f      |  2         |   3       |   6
  | 16g      |  5         |   3.25    |   6.25
  | 4a-      |  4         |   3.5     |   6.5

## PERTINENT COMMANDS ##

 Currently, no special-purpose Humdrum commands produce <span class="rep">time</span> as
 output, or process <span class="rep">time</span> encoded data as input.

## TANDEM INTERPRETATIONS ##

 The following tandem interpretations can be used in conjunction with
 <span class="rep">time</span>:

  | MIDI channel      | `*Ch1`
  | meter signatures  | `*M6/8`
  | tempo             | `*MM96.3`

 *Tandem interpretations for <span class="rep">time</span>*

## SEE ALSO ##

 ` barlines, **date, **dur, **metpos, **ordo, **recip, **takt, **Zeit`

