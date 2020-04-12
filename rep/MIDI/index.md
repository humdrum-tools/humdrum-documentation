---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


MIDI
===============================

## REPRESENTATION ##

<span class="rep">MIDI</span> &mdash; Musical Instrument Digital Interface notation

## DESCRIPTION ##

The <span class="rep">MIDI</span> representation is a Humdrum version of the well-known
MIDI standard. MIDI is an industry standard used to exchange
information between sound synthesizers. MIDI is also used in various
software applications such as some music printing software. MIDI is a
type of \"tablature\" notation. It describes a set of performance
actions rather than specifying the sounded result. MIDI represents
note-on, note-off, information, for various \"channels.\" MIDI events
include note-on, note-off, key-velocity, after-touch, control codes,
and system-exclusive codes. MIDI does not represent many other
musically-pertinent signifiers, such as ties, slurs, phrasings,
ornaments, etc. MIDI does not represent rests.

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">MIDI</span> data
should be given names with the distinguishing \`.hmd\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">MIDI</span> mappings of signifiers
and signifieds.

----- ----------------------------
0-9   decimal values
/     value delimiter
=     barline; == double barline
\-    note off
----- ----------------------------

*Summary of <span class="rep">MIDI</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

--------------------
!! C-major scale.
\*\*MIDI
\*Ch8
72/60/64
72/-60/64 72/62/64
36/-62/64 36/64/64
36/-64/64 36/65/64
36/-65/64 36/67/64
36/-67/64 36/69/64
36/-69/64 36/71/64
36/-71/64 36/72/64
72/-72/64
\*-
--------------------

Each <span class="rep">MIDI</span> data token consist of three elements or components.
Each element is an integer value; elements within a data token are
delimited by the slash character (/).

The first element in a data token represents the number of clock ticks
(since the previous event) before the event is to occur. The absolute
duration of a single clock tick is determined by the MIDI clock speed,
which is variable.

The second &mdash;ent in a data token represents the MIDI key number &mdash;
that is, the address of the key event. Key events can be either
*key-on* or *key-off.* Key-on events are represented by positive
integers, whereas key-off events are represented by negative integers.
For example, -60 means to turn-off key 60.

The third element in a data token represents the MIDI key-velocity
value. MIDI instruments normally interpret key-velocity as dynamic or
accent information. Higher key-velocity values are associated with
accented notes. Permissible key-velocity values range between 0 and
127. encodings. In the case of key-off events, the key-velocity
component represents the after-touch.

Note that the key-velocity component of a data token is optional and
need not appear. However, both the clock-tick value and the key-event
values must be present in each <span class="rep">MIDI</span> data token.

Barlines are represented using the \"common system\" for barlines &mdash;
see [**barlines**](barlines.rep.html).

## PERTINENT COMMANDS ##

The following Humdrum commands accept <span class="rep">MIDI</span> encoded data as
inputs:

-- ----------------------------------------- -------------------------------------------
<span class="tool">cents</span>       translates <span class="rep">MIDI</span> to <span class="rep">cents</span>
<span class="tool">fade</span>         fade-in or fade-out <span class="rep">MIDI</span> data
<span class="tool">freq</span>         translates <span class="rep">MIDI</span> to <span class="rep">freq</span>
<span class="tool">kern</span>         translates <span class="rep">MIDI</span> to <span class="rep">kern</span>
<span class="tool">perform</span>   play Humdrum <span class="rep">MIDI</span> files
<span class="tool">pitch</span>       translates <span class="rep">MIDI</span> to <span class="rep">pitch</span>
<span class="tool">semits</span>     translates <span class="rep">MIDI</span> to <span class="rep">semits</span>
<span class="tool">smf</span>           generate standard MIDI file
<span class="tool">solfg</span>       translates <span class="rep">MIDI</span> to <span class="rep">solfg</span>
<span class="tool">tonh</span>         translates <span class="rep">MIDI</span> to <span class="rep">Tonh</span>
-- ----------------------------------------- -------------------------------------------

The following Humdrum commands produce <span class="rep">MIDI</span> data as outputs:

-- --------------------------------------- ------------------------------------------------------
<span class="tool">midi</span>       produces <span class="rep">MIDI</span> output from <span class="rep">kern</span> input
<span class="tool">record</span>   records <span class="rep">MIDI</span> data from a MIDI input
-- --------------------------------------- ------------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
<span class="rep">MIDI</span>:

------------------ ------------
MIDI channel       `*Ch1`
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
tempo              `*MM96.3`
------------------ ------------

*Tandem interpretations for <span class="rep">MIDI</span>*

## SEE ALSO ##

` barlines, **cents, **freq, **kern, **pitch, **semits, **specC, **Tonh`

