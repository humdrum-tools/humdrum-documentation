---
title: 'Humdrum Toolkit Command Reference -- perform'
permalink: /tool/perform/index.html
---

### COMMAND

**perform** -- play Humdrum `**MIDI` files

------------------------------------------------------------------------

### SYNOPSIS

` perform  [-g]  [-i hex]  [-t n.n]  [-v n]  [inputfile.hmd]`

------------------------------------------------------------------------

### DESCRIPTION

The **perform** command allows the user to listen to synthesized
performances of Humdrum `**MIDI`-format input. When invoked, **perform**
provides an interactive environment suitable for proof-listening and
other audition tasks.

The **perform** command accepts as input Humdrum inputs containing
`**MIDI` representations. The command generates serial MIDI data which
are sent directly to a MIDI controller card. The user must have an
appropriate MIDI synthesizer connected via a Roland MPU-401 (or
compatible) MIDI controller card. All `**MIDI` spines present in the
input stream are performed. Non-MIDI spines are ignored and do not
affect the sound output.

When first invoked, the **perform** command reads in the entire input
into memory. By loading the complete input into memory, random data
access is possible and so the user can move freely both forward and
backward through the MIDI score. (Note that the size of any input is
limited by the available memory.) While the data is being loaded into
memory, a tally of the number of bytes loaded is reported. Once the data
is loaded, MIDI performance commences immediately.

The **perform** command provides a set of interactive commands that
allow the user to pause and resume playback, to change tempo, to move to
any measure by absolute or relative reference, and to search forward or
backward for commented markers. Editing of MIDI data is not available
using **perform.**

Playback can be suspended by typing the space-bar; typing any key will
resume playback. By itself, typing ENTER will return to the beginning of
the score and re-initiate playback. If a number is typed before pressing
ENTER, **perform** will search for a corresponding measure number and
continue playback from the beginning of the specified measure. Where
more than one measure matches the inputted measure-number, **perform**
will find the nearest matching measure, without going backward through
\"measure zero.\" Typing a *number* followed by the plus sign (`+`) will
move to the numbered measure corresponding to the current measure plus
\<*number*\>, and continue playback from the beginning of that measure.
Typing a *number* followed by the minus sign (`-`) will move to the
numbered measure corresponding to the current measure minus
\<*number*\>, and continue playback from the beginning of that measure.
The **perform** commands for moving forward and backward should be
avoided when inputs contain unnumbered measures or highly unusual
orderings &mdash; such as reverse-order measure numbers.

The tempo can be modified interactively by using the greater-than (`>`)
and less-than (`<`) signs to increase or decrease the tempo
respectively. The less-than sign reduces the tempo whereas the
greater-than sign increases the tempo. Tempo changes are in increments
of 6 quarter-note durations per minute. A minimum tempo of 8, and a
maximum tempo of 250 quarter-notes per minute are permitted. The current
tempo is displayed whenever a change of tempo is made.

In the default operation, **perform** echoes all global comments on the
screen as the comments are encountered in the input. For inputs
containing appropriate annotations, the echoing of comments can provide
useful visual markers or reminders of particular moments in the sound
output. Whether or not global comments are echoed on the standard
output, users can use the **perform** forward-search (`/`) and
backward-search (`?`) commands to move directly to a particular
commented point in the score. For example, if an input contains a global
comment containing the character string \"Second theme,\" the user can
move immediately to this position in the input by entering the following
command:

> ` /Second theme`

followed by a carriage return (or ENTER). (The search string need only
contain sufficient characters to distinguish uniquely the appropriate
point of interest.) Similarly, the user can search backward for this
character string by entering:

> ` ?Second theme`

If the search is successful, playback continues immediately from the new
score position. If the search is unsuccessful, playback continues from
the current score position.

In rare circumstances, ciphers (stuck notes) can occur in MIDI tasks &mdash;
such as where an intermittent MIDI cable fails to convey a \"note-off\"
instruction to an active synthesizer. The **p** command (\"panic\")
turns off all active notes. In addition, a \"power panic\" command
(upper-case letter **P**) is provided; this command sends
\"all-notes-off\" commands on MIDI channels 1-16. See also the **tacet**
command.

The **f** command will flag a current measure by echoing the measure
number on the screen. This can be useful for chronicling various events
without having to pause or interrupt playback.

The **perform** command is terminated by typing either **q** or **Q**,
or by pressing the escape key (ESC).

The following table summarizes the interactive commands provided by
**perform.** A summary of these commands can be displayed from within
**perform** by typing the **h** (help) command.

>   ------------ ---------------------------------------------------------
>                pause; suspend playback; strike any key to continue
>   \<           reduce tempo
>   \>           increase tempo
>   \-           go back to the beginning of the previous measure
>                and continue performing
>   *integer*-   go back *integer* measures and continue performing
>                from the beginning of that measure
>   \+           go forward to the beginning of the next measure
>                and continue performing
>   *integer*+   go forward *integer* measures and continue performing
>                from the beginning of that measure
>                by itself the carriage return moves to the beginning
>                of the score and continues performing
>   /*string*    search forward from the current position for the
>                next global comment containing *string* and continue
>                performing
>   ?*string*    search backward from the current position for the
>                nearest global comment containing *string* and continue
>                performing
>   *integer*    go to numbered measure *integer*; where more than
>                one measure shares the same numerical label go to the
>                next (forward) measure matching *integer*
>   h            display command summary help screen
>   p            panic; turn off all active notes
>   p            power panic; reset all notes off on all MIDI channels
>   q            same as **q**
>   Q            terminate the perform command
>                same as **q**
>   ------------ ---------------------------------------------------------
>
*Interactive commands in **perform**.*

In order to facilitate user interaction, a number of keyboard
\`aliases\' are provided. For example, the comma (`,`) and the period
(`.`) are valid aliases for the less-than (`<`) and greater-than (`>`)
signs; these aliases normally share the same keys on ASCII keyboards and
so avoid the need to use the shift-key. For similar reasons, the
equals-sign (`=`) and the underscore (`_`) are valid aliases for the
plus and minus signs respectively.

------------------------------------------------------------------------

### OPTIONS

The **perform** command provides the following command-line options:

>   ---------- ----------------------------------------------------------------
>   **-g**     suppress the echoing of global comments on the standard output
>   **-h**     displays a help screen summarizing the command syntax
>   -i *hex*   assign MIDI input/output address to *hex*
>   -t *n.n*   set initial tempo to *n.n* times the default tempo
>   -v *n*     specify default MIDI key-velocity value (0-127)
>   ---------- ----------------------------------------------------------------
>
Options are specified in the command line.

In addition to modifying the tempo interactively while performing, the
performance tempo may be specified either in the command line or in the
input Humdrum representation. The tempo may be specified on the command
line by using the **-t** option. The **-t** must be followed by an
integer or real value between 0.13 and 3.80. A value of 1.0 corresponds
to the default tempo of 66 quarter-notes per minute. A value of 2.0
doubles the tempo, whereas a value of 0.5 halves the tempo.
Alternatively, tempo may be specified using the `**MIDI` tandem
interpretation for metronome marking (e.g. `*MM96`). Tempos found in the
input representation take precedence over any tempo specified on the
command line. If no tempo information is available, **perform** uses the
default tempo of 66 quarter-notes per minute.

The **-v** option allows the user to specify a key-velocity default.
MIDI instruments normally treat key-velocity data as dynamic or accent
information &mdash; thus higher key-velocity values are associated with
accented notes. Permissible key-velocity values range between 0 and 127.
The **-v** option can be used to set the default key-velocity for key-on
commands with unspecified key-velocities. In the absence of the **-v**
option, the default key-velocity value is 64.

In normal operation, **perform** echoes all global comments on the
standard output. This feature may be defeated by invoking the **-g**
option.

The **-i** option is used to specify the input/output address of the
MIDI card. The default address is \`330.\' The address is specified as a
hexadecimal number.

------------------------------------------------------------------------

### WARNINGS

When using Microsoft *Windows,* the **perform** command requires the use
of \"standard mode;\" **perform** is unable to work in \"386 enhanced
mode.\"

Improper termination of **perform** may leave the MIDI card active, and
so possibly to hang the machine. Proper termination of **perform** is
achieved via the letters **q** or **Q**, or via the escape key (ESC). In
the event of improper termination, the **midreset** command should be
used.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up. Microsoft *Windows,* in \"standard mode\" only. Linux
version adapted by Craig Sapp.

------------------------------------------------------------------------

### PROPOSED MODIFICATIONS

The program should be modified to allow inputs to contain MIDI control
codes and MIDI system exclusive codes.

------------------------------------------------------------------------

### SEE ALSO

[**encode**](encode.html) (4), **encode.rc** (5), **\*\*MIDI** (2),
[**midi**](midi.html) (4), [**midreset**](midreset.html) (4),
[**record**](record.html) (4), [**smf**](smf.html) (4),
[**tacet**](tacet.html) (4)

------------------------------------------------------------------------

### REFERENCES

Use of the Music Quest Inc. MIDI library functions is gratefully
acknowledged.

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide07.html#The_perform_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
