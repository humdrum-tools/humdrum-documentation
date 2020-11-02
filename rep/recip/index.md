---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Beats
================================

## REPRESENTATION ##

 <span class="rep">recip</span> &mdash; beat-proportion representation

## DESCRIPTION ##

 The <span class="rep">recip</span> scheme is able to represent durations according to
 the traditional system of beat-proportions (rather than according to
 elapsed- or clock-time.) Durations are specified through the use of
 integer numbers and augmentation dots. With the exception of the value
 zero, durations are represented by reciprocal numerical values. For
 example:

| \*\*recip | meaning
|-----------|--------
|   0   |   breve duration
|   1   |   whole duration
|   2   |   half duration
|   4   |   quarter duration
|   8   |   eighth duration
|   16  |   sixteenth duration
|   32  |   thirty-second duration
|   64  |   sixty-fourth duration

 *Representations of Duration in <span class="rep">recip</span>*

 The number zero (0) is reserved for the *breve* duration (i.e. a
 duration of twice the length of a whole note). Dotted durations are
 indicated by adding the period character (.) after the numerical
 value:

  | notation	| duration	
  | ------ -------------------------------
  | 2.    	| dotted half duration
  | 8..   	| doubly-dotted eighth duration
  | etc.   	|

 *Representation of Dotted Durations in <span class="rep">recip</span>*

 Any number of augmentation dots may follow the duration integer.§ §
 Notice that the period is used both to indicate Humdrum null tokens
 and <span class="rep">recip</span> augmentation dots. In parsing <span class="rep">recip</span> spines,
 there is never any confusion concerning the meaning of the period: as
 a null token, the period will appear isolated from all other
 characters (by tabs or carriage returns). As an augmentation dot, the
 period will always follow a number.

 Triplet and other irregular durations are represented in a somewhat
 more arcane, though no less logical fashion. Consider, for example,
 the quarter-note triplet duration. Three quarter triplets occur in the
 time of four quarters or one whole duration. If we divide a whole
 duration (\"1\") into three equal parts, each part has a duration of
 one-third. The corresponding reciprocal integer for 1/3 is 3, hence
 <span class="rep">recip</span> represents a quarter-note triplet as a \"third-note\"
 &mdash; 3. Similarly, eighth-note triplets are represented by the integer
 6 while sixteenth-note triplets are represented by the integer 12.
 Eighth-note quintuplets (5 in the time of 4) will be represented by
 the value 10 (a half duration divided by 5).

 In general, the way to determine the <span class="rep">recip</span> equivalent of an
 arbitrary \"tuplet\" duration is to multiply the number of tuplets by
 the total duration which they occupy. If 7 notes of equal duration
 occupy the duration of a whole-note (\"1\"), then each septuplet is
 represented by the value 7 (i.e. 1 x 7). A more extreme example is 23
 notes in the time of a doubly-dotted quarter. The appropriate
 <span class="rep">recip</span> duration can be found by multiplying 4 by 23 (equals 92)
 and adding the appropriate augmentation dots. Thus \"92..\" is the
 correct <span class="rep">recip</span> encoding for a note whose duration is 23 notes
 in the time of a doubly-dotted quarter.

 The <span class="rep">recip</span> representation can be used to encode a sequence of
 time-spans or successive durations. The units are inverse time units.

 Barlines are represented using the \"common system\" for barlines &mdash;
 see [**barlines**](barlines.rep.html).

## FILE TYPE ##

 It is recommended that files containing predominantly <span class="rep">recip</span> data
 should be given names with the distinguishing \`.rcp\' extension.

## SIGNIFIERS ##

 The following table summarizes the <span class="rep">recip</span> mappings of
 signifiers and signifieds.

  | signifier | signified |	
  | ----------| ----------|
  | 0-9       |	decimal values
  | .         | dotted duration; null token
  | =         | barlines
  | ==        | double barline


## EXAMPLES ##

 A sample document is given below:

```
!! Gustav Holst
**recip
*M5/4
=1
12
12
12
4
4
8
8
4
=2
*-
```

## PERTINENT COMMANDS ##

 The following Humdrum command accepts <span class="rep">recip</span> encoded data as
 input:

   -- ------------------------------------------- ------------------------------------------------------
                                                  
      <span class="tool">timebase</span>   reformat <span class="rep">recip</span> score with constant time-base
      <span class="tool">urrhythm</span>   characterize the rhythmic prototype in a passage
   -- ------------------------------------------- ------------------------------------------------------

## TANDEM INTERPRETATIONS ##

 The following tandem interpretations can be used in conjunction with
 <span class="rep">recip</span>:

   |MIDI channel      | `*Ch1`
   |meter signatures  | `*M6/8`
   |tempo             | `*MM96.3`
   |timebase          | `*tb32`

 *Tandem interpretations for <span class="rep">recip</span>*

## SEE ALSO ##

 `barlines, **date, **metpos, **ordo, **recip, **takt, **time, timebase, **URrhythm, urrhythm, **Zeit`

