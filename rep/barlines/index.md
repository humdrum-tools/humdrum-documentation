---
sidebar:	representations
chapternav:	rep
author:		David Huron
creation-date:	1 Sep 1998
revision-date:	3 Feb 2000
last-edited:	
vim:		ft=html
---


Barlines
===================================

## REPRESENTATION ##

 **barlines** &mdash; \"common system\" for representing barlines

## DESCRIPTION ##

 Several Humdrum representations employ a common system for
 representing barlines. This common system is described below. (N.B.
 This common system is not intended to preclude other ways of
 representing barlines in Humdrum.)

 In the common system, barlines are represented as logical entities,
 with optional signifiers for specifying the precise visual appearance
 of the barlines. Barlines are logically signified by the presence of
 an equals-sign ` (=)` in the first column of a spine. Immediately
 after the equals sign there may follow an optional integer value
 indicating the measure number (e.g. ` =107` &mdash; for measure 107). In
 addition, a lower-case alphabetic character may be appended to the
 measure number &mdash; as in: ` =14b.` This convention permits the user to
 distinguish measure numbers for first and second endings, etc. Measure
 numbers refer to the measure immediately following the barline, thus
 the token ` =23` occurs just prior to the encoded data for measure 23.

 Double barlines are indicated by a minimum of two successive equals
 signs ` (==).` Several consecutive equals signs may be encoded in
 order to enhance readability (e.g. ` =======).`

 An additional attribute for barlines is the *pause* &mdash; which is
 represented by the&mdash; icolon (;). Thus the token ` =4;` means that the
 barline starting measure number 4 has a pause written above or below
 it, while the token ` =====;` means that a double barline contains a
 pause indication.

 Barlines can be visually rendered in a variety of ways. Where
 appropriate, users can specify more precisely the notational
 appearance of the barline by *appending* additional signifiers to the
 basic signifiers identified above. Barlines may be normal or heavy in
 width. Barlines of normal width are represented by the addition of the
 vertical bar (`|`). Heavy barlines are signified by the exclamation
 mark (`!`). Dotted barlines are signified by the double quote
 character (`"`). Partial barlines (extending between the second and
 fourth lines) are signified by the single quote character (`'`).
 Partial barlines (rendered as a short vertical stroke across the top
 of the staff) are signified by the single greve character (`` ` ``).
 \"Invisible\" barlines are signified by the minus sign (`-`). In
 addition, barlines may be associated with repetition marks &mdash;
 pointing left, right, or in both directions. The repeat sign is
 denoted by the colon character `:`). (Note that this repeat sign is a
 *visual* signifier, rather than a logical signifier of repetition; see
 **section labels (3)** and **thru (4)** for information concerning
 repetition.) All of these visual signifiers may be combined to form
 complex visual representations, such as a triple barline consisting of
 a normal line, followed by a heavy line, followed by a normal line,
 followed by a repeat indicator. See [**EXAMPLES**](#EXAMPLES) below.

## SIGNIFIERS ##

 The following table summarizes the mappings of signifiers and
 signifieds for \"common system\" barlines.

   ----- ------------------------------------------------
   0-9   measure numbers
   a-z   alternate measures
   ;     pause
   =     barline
   ==    double barline
   \|    normal width visual rendering
   !     heavy width visual rendering
   \'    partial barline (from second to fourth line)
   \`    partial barline (short stroke at top of staff)
   \-    invisible barline
   :     repeat sign
   ----- ------------------------------------------------

 *Summary of <span class="rep">kern</span>-like Barline Signifiers*

[]{#EXAMPLES}

## EXAMPLES ##

 Several examples of \"common system\" barlines are given below:\
 \

   ------------ -----------------------------------------------------------------
   `=`          unnumbered barline
   `=29 `       the beginning of measure 29
   `=29; `      the beginning of measure 29 with pause
   `=29a`       first occurrence of measure 29
   `=29c`       third occurrence of measure 29
   `=29c;`      third occurrence of measure 29 with pause
   `==`         double barline
   `==;`        double barline with pause
   `====;`      double barline with pause
   `=|`         unnumbered barline, normal line width
   `=!`         unnumbered barline, heavy line width
   `==|!`       double barline, normal line followed by heavy line
   `=29|`       beginning of measure 29, normal line width
   `=:|:`       barline with left and right repeats, normal line width
   `=:||:`      barline with left and right repeats, two normal-width lines
   `='`         unnumbered barline, rendered with partial barline (mid)
   `` =29` ``   beginning of measure 29, rendered with partial barline (top)
   `=29-`       beginning of measure 29, no barline drawn
   `==:|!`      double barline with repeat, normal/heavy lines
   `==|`        logical double barline, visually rendered as single normal line
   `|`          not a barline
   `29|`        not a barline
   ------------ -----------------------------------------------------------------

## PERTINENT REPRESENTATIONS ##

 The following Humdrum representations employ \"common system\" barline
 signifiers:\
 \

   ------------------ ----------------------------------------------------------
   <span class="rep">cents</span>      absolute pitch representation in hundredths of semitones
   <span class="rep">deg</span>        relative scale degree representation
   <span class="rep">degree</span>     absolute scale degree representation
   <span class="rep">diss</span>       sensory dissonance representation
   <span class="rep">dur</span>        event duration (in seconds)
   <span class="rep">embel</span>      representation for embellishment tones
   <span class="rep">freq</span>       frequency representation
   <span class="rep">fret</span>       generalized fretted tablature representation
   <span class="rep">harm</span>       representation for Western functional harmony
   <span class="rep">kern</span>       core pitch/duration of common practice music notation
   <span class="rep">melac</span>      melodic accent representation
   <span class="rep">MIDI</span>       Musical Instrument Digital Interface notation
   <span class="rep">mint</span>       melodic interval representation
   <span class="rep">pc</span>         pitch-class representation
   <span class="rep">pcset</span>      Fortean pitch-class set representation
   <span class="rep">pitch</span>      American National Standards Institute pitch notation
   <span class="rep">recip</span>      beat-proportion representation
   <span class="rep">semits</span>     semitone absolute pitch representation
   <span class="rep">solfg</span>      French solfège (pitch) representation
   <span class="rep">specC</span>      spectral centroid representation
   <span class="rep">spect</span>      discrete frequency spectrum representation
   <span class="rep">synco</span>      represent degree of metric syncopation
   <span class="rep">takt</span>       beat-position representation
   <span class="rep">text</span>       vocal text representation
   <span class="rep">time</span>       relative elapsed time (in seconds)
   <span class="rep">Tonh</span>       German Tonh\\o'o\\(..\'he (pitch) representation
   <span class="rep">URrhythm</span>   represent Johnson-Laird beat prototypes for a passage
   <span class="rep">vox\#</span>      representation of number of concurrently active voices
   ------------------ ----------------------------------------------------------

## SEE ALSO ##

 ` humsed, num`

