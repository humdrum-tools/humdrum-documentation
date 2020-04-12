---
title:		'Humdrum Toolkit Command Reference -- midi'
author:		David Huron
chapternav:	tool
vim:		ft=html
permalink:	/tool/midi/index.html
---

### COMMAND

<span class="tool">midi</span> &mdash; convert from <span class="rep">kern</span> to Humdrum <span class="rep">MIDI</span> format

------------------------------------------------------------------------

## SYNOPSIS ##

` midi  [-Ccu]  [-d n]  [-q n]  [inputfile.krn ...]  [ > outputfile.hmd]`

------------------------------------------------------------------------

## DESCRIPTION ##

The <span class="tool">midi</span> command converts Humdrum <span class="rep">kern</span> data into Humdrum
<span class="rep">MIDI</span> data. Humdrum <span class="rep">MIDI</span> data may be played by the
<span class="tool">perform</span> command or converted to a standard MIDI file
using the <span class="tool">smf</span> command. The <span class="tool">midi</span> command will
translate all <span class="rep">kern</span> spines in the input stream into <span class="rep">MIDI</span> data,
and will echo any non-kern spines.

It is recommended that output files produced using the <span class="tool">midi</span> command
should be given names with the distinguishing \`.hmd\' extension
(\`Humdrum midi\').

------------------------------------------------------------------------

## OPTIONS ##

The <span class="tool">midi</span> command provides the following options:

-------- -----------------------------------------------------------------------------
<span class="option">c</span>   echo all data records as global comments (prior to the data record)
<span class="option">C</span>   echo all data records as global comments (following the data record)
-d *n*   assigns a note-duration of *n* <span class="rep">recip</span> value to all pitches and rests
<span class="option">h</span>   displays a help screen summarizing the command syntax
-q *n*   set number of MIDI clock ticks per quarter-duration to *n*
<span class="option">u</span>   suppress the deletion of duplicate (unison) concurrent note-on instructions
-------- -----------------------------------------------------------------------------

Options are specified in the command line.

If the <span class="option">c</span> option (\`comment\') is invoked, all data records are
echoed as global comments in addition to the usual processing. This
option is useful in conjunction with the <span class="tool">perform</span>
command; <span class="tool">perform</span> echoes all global comments while playing MIDI
inputs, and so the comment option allows the user to view the original
<span class="rep">kern</span> score while the music is performed.

The <span class="option">d</span> *n* option allows the user to reassign all the durations of
all notes and rests in a given input. The value *n* is specified in
reciprocal duration notation (<span class="rep">recip</span>), where \`4\' represents a
quarter-duration, \`2.\' represents a dotted half-duration, \`12\'
represents a quarter-note triplet, \`0\' represents a breve, etc. (See
<span class="rep">recip</span> in Section 2 for details.) With the <span class="option">d</span> option all pitches
and rests in the input will be assigned the specified duration value &mdash;
whether or not the notes already have encoded durations. This option is
useful for such tasks as proof-listening to passages containing
especially short notes, or auditing works &mdash; such as Gregorian chant
&mdash; where durations have not been encoded or are suspect for other
reasons. Note that the <span class="option">d</span> option should be used only in the case of
monophonic inputs, or multi-part inputs that contain strictly
isochronous chords. Polyphonic inputs containing non-isochronous
durations will cause a loss of synchronization between the parts. The
resulting output is apt to cause serious problems with commands such as
<span class="tool">perform</span> and [<span class="tool">smf</span>.](smf.html)

In contrast to MIDI performance data, canonical musical scores (such as
<span class="rep">kern</span>) frequently contain unisons &mdash; where two voices share the same
pitch for a period of time. MIDI produces a \`note-off\' instruction at
the end of each note; however only a single \`note-off\' instruction is
required to turn-off a note. Unfortunately, the first note-off will
terminate a note &mdash; even if the same pitch is sustained in another
voice. In normal operation, <span class="tool">midi</span> suppresses the sending of the first
of two MIDI \`note-off\' commands when a unison is encountered in the
input. This ensures that the pitch will be sustained for the longer of
the unison durations. This feature can be disabled by invoking the
<span class="option">u</span> option.

The <span class="tool">midi</span> command assigns a default duration of 72 MIDI clock-ticks
per quarter-note. This default value may be reassigned using the <span class="option">q</span>
*n* option. The value *n* should be chosen so that all canonical
durations present in a given score divide evenly into it. For example,
the default value of 72 clock-ticks per quarter-note, means that
eighth-notes and sixteenth-notes will have durations of 36 and 18
clock-ticks respectively. Eighth-note triplets and sixteenth-note
triplets will have durations of 24 and 12 clock-ticks respectively.
Thirty-second notes will have a duration of 9 clock-ticks. But
sixty-fourth notes can cause synchronization problems since they do not
divide evenly into 72. The user may wish to reassign this value
depending on the types of canonical durations present in a given input.
Changing the default number of clock-ticks will affect the tempo of
performance when using the <span class="tool">perform</span> command. Hence,
it may be necessary to revise the tempo indication of a resulting
Humdrum midi-format file.

------------------------------------------------------------------------

## EXAMPLES ##

The following examples illustrate how <span class="tool">midi</span> may be invoked.

` midi chopin > chopin.hmd`

converts the <span class="rep">kern</span> data from the file `chopin` to <span class="rep">MIDI</span> data in
the file `chopin.hmd`. The command:

` midi -c siegfrd.idl > siegfrd.hmd`

translates the <span class="rep">kern</span> data from the file `siegfrd.idl` to <span class="rep">MIDI</span>
data in the file `siegfrd.hmd` and echoes all <span class="rep">kern</span> data as global
comments.

------------------------------------------------------------------------

## SAMPLE OUTPUTS ##

The operation of <span class="tool">midi</span> is illustrated in the following inputs and
outputs. In the first example, a simple C major scale is encoded in
<span class="rep">kern</span>.

``

---------------------
!! midi example \#1
\*\*kern
\*M2/4
\*C:
=1
8c
8r
8d
8e
=2
8f
8g
8a
8b
=3
4cc
4r
====
\*-
---------------------

Executing the <span class="tool">midi</span> command with the default settings results in the
<span class="rep">MIDI</span> output given below. Notice that a default channel of MIDI
channel 1 has been assigned via the tandem interpretation `*Ch1`. Note
also that each <span class="rep">kern</span> note has resulted in two MIDI instructions:
\"key-on\" and \"key-off\". Since the end of one note coincides with the
start of the subsequent note, key-on and key-off data are output as
Humdrum double-stops (two tokens separated by a single space character).
``

---------------------
!! midi example \#1
\*\*MIDI
\*Ch1
\*M2/4
\*C:
=1
72/60/64
36/-60/64
36/62/64
36/-62/64 36/64/64
=2
36/-64/64 36/65/64
36/-65/64 36/67/64
36/-67/64 36/69/64
36/-69/64 36/71/64
=3
36/-71/64 36/72/64
72/-72/64
====
.
\*-
---------------------

<span class="rep">MIDI</span> data consist of three numbers separated by slashes (/). The
first integer represents the number of clock ticks that must elapse from
the previous instruction before the current event is initiated. In the
above case, a default value of 72 clock ticks per quarter-note has
resulted in 36 clock ticks for each eighth note. The second integer
represents the MIDI key number, where middle C is represented as key
\#60 (negative numbers denote key-off instructions). The third integer
represents the MIDI key velocity. The default key velocity is 64 units.

The second example illustrates the handling of input containing
multiple-stops. ``

--------------------- -----------
!! midi example \#2   
\*\*harm              \*\*kern
\*                    \*Ch3
=1                    =1
I                     4c 4e 4g
IV                    4c 4f 4a
V                     4d 4g 4b
I                     4e 4g 4cc
==                    ==
\*-                   \*-
--------------------- -----------

The output below is generated by invoking the following command:

` midi -c input > output`

``

--------------------- ----------------------------------------------------------
!! midi example \#2   
\*\*harm              \*\*MIDI
\*                    \*Ch1
!!\*\*harm            \*\*kern
\*                    \*Ch3
!!\*                  \*Ch3
=1                    =1
!!=1                  =1
I                     0/60/64 0/64/64 0/67/64
!!I                   4c 4e 4g
IV                    96/-60/64 96/-64/64 96/-67/64 96/60/64 96/65/64 96/69/64
!!IV                  4c 4f 4a
V                     96/-60/64 96/-65/64 96/-69/64 96/62/64 96/67/64 96/71/64
!!V                   4d 4g 4b
I                     96/-62/64 96/-67/64 96/-71/64 96/64/64 96/67/64 96/72/64
!!I                   4e 4g 4cc
==                    ==
!!==                  ==
.                     96/-64/64 96/-67/64 96/-72/64
\*-                   \*-
!!\*-                 \*-
--------------------- ----------------------------------------------------------

Notice that non-kern data (<span class="rep">harm</span>) is echoed in the output. Also,
notice that each input record has been reproduced as a global comment
(preceded by !!). This feature is useful in conjunction with the
<span class="tool">perform</span> command.

------------------------------------------------------------------------

## DIAGNOSTICS ##

The <span class="tool">midi</span> command echoes tempo indications for the benefit of the
<span class="tool">perform</span> command. If a tempo range is specified (e.g.
MM92-98), <span class="tool">midi</span> calculates the average range and echoes that (MM95).
Tempo terms (such as \"largo\") are not handled by <span class="tool">midi</span>.

------------------------------------------------------------------------

## PORTABILITY ##

DOS 2.0 and up.

------------------------------------------------------------------------

## SEE ALSO ##

<span class="tool">humdrum</span> (4), **\*\*kern** (2), <span class="tool">kern</span>
(4), **\*\*MIDI** (2), <span class="tool">perform</span> (4),
<span class="tool">proof</span> (4), <span class="tool">smf</span> (4),
<span class="tool">tacet</span> (4)

------------------------------------------------------------------------

## PROPOSED MODIFICATIONS ##

Channel assigment tandem interpretations (e.g. `*Ch6`) should be
recognized in the input stream and cause the default channel 1 output to
be suppressed.

------------------------------------------------------------------------

\

-   Pertinent descriptions in the Humdrum User Guide: [**The \*\*MIDI
    representation,**](../guide07.html#The_**MIDI_Representation) [**The
    *midi* command.**](../guide07.html#The_midi_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
