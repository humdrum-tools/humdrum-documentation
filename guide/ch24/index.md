---
sidebar: toc
chapternav: guide
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:15:43 EST 2000'
permalink:	/guide/ch24/index.html
---


Humdrum Toolkit User Guide, Chapter 24
=========

The Shell (III)
===============

In [Chapter 16](/guide/ch16) we learned about the **alias** feature of
the shell. The **alias** command allowed us to create new commands by
assigning a complex pipeline to a single-word command. In this chapter
we will learn how to use the shell to write more complex programs. Shell
programs allow users to reduce lengthy sequences of Humdrum commands to
a single user-defined command.


Shell Programs
--------------

A shell program is simply a script consisting of one or more shell
commands. Suppose we had a complex procedure consisting of a number of
commands and pipelines:

```bash
extract -i '**Ursatz' inputfile | humsed '/X/d' \ 
```
> \| context -o Y -b Z \> Ursatz
```bash
extract -i '**Urlinie' inputfile | humsed '/X/d' \ 
```
> \| context -o Y -b Z \> Urlinie
assemble Ursatz Urlinie \| rid -GLId \| graph

In the above hypothetical script, we have processed an input file called
`inputfile`. It may be that this is a procedure we would like to apply
to several different files. Rather than typing the above command
sequence for each file, an alternative is to place the above commands in
a file. Let\'s assume that we put the above commands in a file called
`Schenker`. In order to execute this file as a shell script, we need to
assign *execute permissions* to the file. We can do this by invoking the
UNIX **chmod** command.

```bash
chmod +x Schenker
```

The **+x** option causes **chmod** to add execute permissions to the
file `Schenker`. Using **chmod** we can change modes related to
*executing* a file, *reading* a file, and *writing* to a file. Possible
mode changes include the following:

  ---- -------------------------
  +x   add execute permission
  -x   deny execute permission
  +r   add read permission
  -r   deny read permission
  +w   add write permission
  -w   deny write permission
  ---- -------------------------
Having added execute permissions to the file, we can now execute the
shell script or program. This is done simply by typing the name of the
file; in effect, the filename becomes a new command:

```bash
Schenker
```

Each time we type this command, our script will be executed anew. Notice
that in our script, the final output has not been sent to a file. As a
result, the output from our **Schenker** command will be sent to the
screen (standard output). It is convenient not to specify an output file
in the script since this is often something the user would like to
specify. When typing our new command, we can use file-redirection to
place the output in a user-specified file:

```bash
Schenker > outputfile
```

As currently written, our program can be applied only to an input file
whose name is literally `inputfile`. If we wanted to, we could edit our
script and update the name of the input filename every time we want to
use the command. However, it would be more convenient to specify the
input filename on the command line \-- as we can do for other commands.
For example, it would be convenient to be able to type commands such as
the following:

```bash
Schenker opus118 > opus118.out
```

In order to allow such a possibility, we can use a predefined feature of
the shell. Whenever the shell receives a command, each item of
information on the command line is assigned to a shell variable. The
first item on the command line is assigned to the variable \$0
(normally, this is the command name). For example, in the above example,
\$0 is assigned the string value "`Schenker`." The variables \$1, \$2,
\$3, etc. are assigned to each successive item of information on the
command line. So in the above example, \$1 is assigned the string value
"`opus118`."

These shell variables can be accessed within the shell script itself. We
need to revise the script so that each occurrence of the input file is
replaced by the variable \$1:

```bash
extract -i '**Ursatz' $1 | humsed '/X/d' \ 
```
> \| context -o Y -b Z \> Ursatz
```bash
extract -i '**Urlinie' $1 | humsed '/X/d' \ 
```
> \| context -o Y -b Z \> Urlinie
assemble Ursatz Urlinie \| rid -GLId \| graph

This change means that our **Schenker** command can be applied to any
user-specified input file \-- simply by typing the filename in the
command.


Flow of Control: The *if* Statement
-----------------------------------

Suppose we wanted our **Schenker** command to apply only to tonal works
\-- more specifically, to works with a known key. Before processing a
work, we might want to have **Schenker** test for the presence of a
tandem interpretation specifying the key.

Let\'s begin by using **grep** to search for a key tandem
interpretation. An appropriate **grep** command would be:

```bash
grep '^\*[A-Ga-g][#-]*:' $1
```

Recall that we can assign the output of any command to a shell variable
by placing the command within back-quotes or greves, i.e. \`\...\`.
Let\'s assign the key interpretation to the variable KEY:

`` KEY=`grep '^\*[A-Ga-g][#-]*:' $1` ``

If no key indicator is found by **grep**, then the variable KEY will be
empty. We can test for this condition using the shell **if** statement.

`` KEY=`grep '^\*[A-Ga-g][#-]*:' $1`  if [ "$KEY" = "" ]  then ``
> echo "Sorry, this input file has no key."
> exit
fi

Notice that we use the dollars sign prior to the variable to mean *the
contents of variable KEY*. The double quotation marks allow a string
comparison. Our test is whether the variable \$KEY is equivalent to the
empty or null string "". If the test is true, then the commands
following the `then` statement are executed. By convention, these
commands are indented for clarity. In the above case, two commands are
executed if the \$KEY variable is empty. The **echo** command causes the
quoted string to be output. The **exit** command causes the script to
terminate. Notice the presence of the **fi** command (**if** backwards).
This command simply indicates that the if-block has ended.

Of course, if there is a key designation, then it is appropriate to
execute the rest of our **Schenker** script. The complete script would
be as follows:

`` KEY=`grep '^\*[A-Ga-g][#-]*:' $1`  if [ "$KEY" = "" ]  then ``
> echo "Sorry, this input file has no key." exit
else
> `extract -i '**Ursatz' $1 | humsed '/X/d' \ `
> > \| context -o Y -b Z \> Ursatz
> `extract -i '**Urlinie' $1 | humsed '/X/d' \ `
> > \| context -o Y -b Z \> Urlinie
> assemble Ursatz Urlinie \| rid -GLId \| graph
fi

Notice the addition of the **else** statement. The **else** statement
delineates the block of commands to be executed whenever the **if**
condition fails \-- that is, when the \$KEY variable does *not* equal
the null string. Once again, to make the script more readable, we indent
the commands contained in the else-block.

The **if** command provides many other ways of testing some condition.
For example, the shell provides ways to determine whether a file exists,
and other features.


Flow of Control: The *for* Statement
------------------------------------

In music research, a common task is to apply a particular process or
script to a large number of score files. By way of illustration, suppose
we wanted to know the maximum number of notes in any single folk melody
in a collection of Czech folksongs. Suppose further that we are located
in a directory containing a large number of Czech folksongs named
`czech01.krn`, `czech02.krn`, `czech03.krn`, and so on.

We would like to run the **census -k** command on each file separately,
but we\'d prefer not to type the command for each score. The **for**
statement provides a convenient way to do this. The following commands
might be typed directly at the shell:

```bash
for J in czech*.krn  > do  > census -k $J | grep 'Number of notes:'  > done | sort -n
```

The pattern `czech*.krn` will be expanded to all of the files in the
current directory that it matches. The variable **J** will take on each
name in turn. The commands between **do** and **done** will be executed
for each value of the variable **\$J**. That is, initially **\$J** will
have the value `czech01.krn`. Having completed the do-done block of
commands, the value of **\$J** will become `czech02.krn`, and the
do-done block will be repeated. This will continue until the value of
**\$J** has taken on all of the possible matches for `czech*.krn`.

The output might appear as follows:

```bash
Number of notes:           31  Number of notes:           32  Number of notes:           32  Number of notes:           34  Number of notes:           35  Number of notes:           39  Number of notes:           39  Number of notes:           40  Number of notes:           48  Number of notes:           48  Number of notes:           55  Number of notes:           78
```
etc.

Incidentally, the output from a **for** construction such as above can
be piped to further commands, so we might identify the maximum number of
notes in a Czech melody by piping the output through **sort -n**.


A Script for Identifying Transgressions of Voice-Leading
--------------------------------------------------------

Shell programs can be of arbitrary complexity. Below is a shell program
(dubbed **leader**) whose purpose is to identify all instances of
betrayals of nine classic rules of voice-leading for a two-part input. A
number of refinements have been added to the program \-- including input
file checking, and formatting of the output.

The program is invoked as follows:

```bash
leader 
```

The input is assumed to contain two voices, each in a separate
[`**kern`](/rep/kern) spine. The nominally lower
voice should be in the first spine. For music containing more than two
voices, the Humdrum **extract** command should be used to select
successive pairs of voices for processing by **leader**.

```bash
# LEADER  #  # A shell program to check for voice-leading infractions.  # This command is invoked as:  #  #   leader   #  # where  is assumed to be a file containing two voices, each  # in a separate **kern spine, where the nominally lower voice is in the  # first spine.    # Before processing, ensure that a proper input file has been specified.  if <a name =" 8. Check for overlapping parts.  extract -f 2 $1 | sed 's/^=.*/./' | context -n 2 -p 1 -d XXX | \      rid -GL | humsed 's/XXX.*//' > $TMPDIR/upper  extract -f 1 $1 | sed 's/^=.*/./' > $TMPDIR/lower  assemble $TMPDIR/lower $TMPDIR/upper | semits -x | ditto | \      awk '{if($0~/[^0-9\t-]/)next}{if($1>$2) print "Parts overlap at line: " NR}'  extract -f 1 $1 | sed 's/^=.*/./' | context -n 2 -p 1 -d XXX | \      rid -GL | humsed 's/XXX.*//' > $TMPDIR/lower  extract -f 2 $1 | sed 's/^=.*/./' > $TMPDIR/upper  assemble $TMPDIR/lower $TMPDIR/upper | semits -x | ditto | \      awk '{if($0~/[^0-9\t-]/)next}{if($1>$2) print "Parts overlap at line: " NR"></a>'     # 9. Check for exposed octaves.  hint -c $1 > $TMPDIR/s1  extract -f 1 $1 | deg > $TMPDIR/s2  extract -f 2 $1 | deg > $TMPDIR/s3  extract -f 1 $1 | mint | humsed 's/.*[3-9].*/leap/' > $TMPDIR/s4  extract -f 2 $1 | mint | humsed 's/.*[3-9].*/leap/' > $TMPDIR/s5  assemble $TMPDIR/s1 $TMPDIR/s2 $TMPDIR/s3 $TMPDIR/s4 $TMPDIR/s5 > $TMPDIR/temp  egrep -n 'P1.*\^.*\^.*leap.*leap|P1.*v.*v.*leap.*leap' $TMPDIR/temp | \      sed 's/:.*/./;s/^/Exposed octave at line: /'    # Clean-up some temporary files.  rm $TMPDIR/template $TMPDIR/upper $TMPDIR/lower $TMPDIR/s[1-5] $TMPDIR/temp
```

------------------------------------------------------------------------


Reprise
-------

In this chapter we have illustrated how to package complex Humdrum
command scripts into shell programs. This allows us to create
special-purpose commands. We learned that files can be transformed into
executable scripts through the **chmod** command. We also learned how to
pass parameters from the command line to the script, and how to assign
and modify the contents of variables. In addition, we learned how to
influence the flow of control using the **if** and **for** statements.
Finally, we learned that multi-line scripts can be typed directly at the
command line without creating a script file.

Shell scripts can be very brief or very long. It is possible to create
scripts that carry out highly sophisticated processing such as searching
for voice-leading transgressions. There are innumerable features to
shell programming that have not been touched-on in this chapter. Several
books are available that provide comprehensive tutorials for shell
programming.


Locating Violations of the Rules of Voice-Leading
-------------------------------------------------

The traditional rules of voice-leading have formed a standard component
of conservatory training for art musicians.

For illustration purposes, we\'ll apply some of the Humdrum tools to the
problem of identifying betrayals of the classic rules of voice-leading
in a `**kern`-encoded score. Note that our purpose here is not to
legislate how to compose or arrange! We\'re simply using the traditional
voice-leading rules as a way to introduce various pattern-searching
techniques.


(1) Parts Out Of Range
----------------------

#### RULE: "Avoid parts that are out of range."

The Humdrum **census** command provides a summary of various elementary
features of any Humdrum input. With the **-k** option, **census**
provides a summary of a further ten features pertaining to `**kern`
format inputs. This includes the highest and lowest notes present.

```bash
census -k 
```

Since we are interested in the highest and lowest notes for each
individual part (rather than for the whole piece), we should **extract**
each part before processing it with **census.**

```bash
extract -i '*soprano'   > soprano.part
```
```bash
census -k soprano.part
```

On UNIX, a set of commands that sequentially process a given input can
be joined together as a "pipeline". A pipeline feeds the output of one
process to the input of another process. This means that we can simplify
the above sequence of commands into a single pipeline:

```bash
extract -i '*soprano'  | census -k
```

We could then repeat the pipeline for each voice present:

```bash
extract -i '*alto'     | census -k  extract -i '*tenor'    | census -k  extract -i '*bass'     | census -k
```

If we wanted to get a little fancier, we could filter the output so that
only the highest and lowest pitch information is output. The UNIX
**grep** command will let us define a string for searching; **egrep**
permits compound strings, such as the use of the OR bar (\|):

```bash
extract -i '*soprano'   | census -k | egrep 'Highest|Lowest'
```


(2) Augmented/Diminished Melodic Intervals
------------------------------------------

#### RULE: "Avoid parts that move by augmented or diminished intervals.

Implementing this is simple. We first translate our pitch- related data
to the melodic interval format \--
[`**mint`](/rep/mint). This can be done using the
Humdrum **mint** command. For example, consider the following melodic
fragment from the 2nd movement of Bach\'s Brandenburg Concerto No. 5:


```humdrum
**kern
  8r
  8f\#
  8b
  16.cc\#
  32dd
  8a\#
  16.b
  32cc\#
  8dd
  \*-
  ----------
Given this input, the **mint** command will produce the following
output. Plus signs indicate ascending intervals, while minus signs
indicate descending intervals; \'P\' means perfect, \'M\' means major,
\'m\' means minor, \'A\' means augmented, and \'d\' means diminished:


```humdrum
**mint
  \[f\#\]
  +P4
  +M2
  +m2
  -d4
  +m2
  +M2
  +m2
  \*-
  ----------
Searching for diminished or augmented intervals is as simple as using
the Unix **grep** command, with the appropriate regular expression:

```bash
grep -n '[Ad]' 
```

The **-n** option will cause **grep** to prepend the line number of any
matching patterns, so we can refer back to the original input file.

In order to avoid the letters \`A\' or \`d\' found in comments or
interpretations, we might consider using the Humdrum **rid** command:

```bash
rid -GLI  | grep -n '[Ad]'
```

However, this will cause the line numbers output by **grep** to be
wrong. The line numbers will correspond to the input file with the
comments and interpretations removed.

A better approach is to send the complete file to **grep**, and use a
more circumspect regular expression to eliminate comments and
interpretations within **grep**. **egrep** allows us to define more
complex regular expressions:

```bash
egrep '^[^!*].*[Ad]'
```

The expression \`\^\[\^!\*\]\' means "not an exclamation mark or
asterisk at the beginning of a line." The expression \`.\*\[Ad\]\'
means "zero or more instances of any character followed by either an
upper-case letter \`A\' or a lower-case letter \`d\'.

In other words, the complete regular expression matches any line that
contains either an upper-case \`A\' or lower-case \`d\' as long as the
beginning of the line does not start with an exclamation mark (i.e.
Humdrum comment) or an asterisk (i.e. Humdrum interpretation).

If we want to look for augmented or diminished intervals in a particular
part or voice, we would begin by using the **extract** command to
isolate the voice of interest.

Finally, putting all of the elements together in a Unix pipeline, we get
the following command for identifying augmented or diminished melodic
intervals:

```bash
extract -i 'alto'  | mint | egrep -n '^[^!*].*[Ad]'
```

If there is no output, then there are no augmented or diminished
intervals present.


(3) Consecutive Fifths or Octaves
---------------------------------

#### RULE: "Avoid consecutive fifths and octaves between any two parts.

Let\'s focus on identifying consecutive fifths \-- since the process is
the same for octaves.

Either the Humdrum **patt** or **pattern** commands can be used to find
patterns that span more than one line or record. For this example,
we\'ll use **patt**.

First, we need to reformat our input so the data represent harmonic
intervals rather than pitches. The Humdrum **hint** command will change
most pitch representations to the harmonic interval representation \--
[`**hint`](/rep/hint). Consider, for example, the
following input:


```humdrum
**kern	**kern
  =1 =1
  4c 4e
  4G 4d
  =2 =2
  2F 2c
  \*- \*-
  -------------------
Given the following command:

```bash
hint 
```

The following output will be produced:


```humdrum
**hint
  =1
  M3
  P5
  =2
  P5
  \*-
  ----------
(Notice that, in this case, the consecutive fifths are separated by a
barline.)

Second, we need to define a pattern template for the **patt** command.
The template is a series of one or more regular expressions that are
stored in a separate file. In this case the pattern is trivial: just two
consecutive perfect fifth tokens. We might store the following pattern
in the file "template":


  ------
  `P5`
  P5
  ------
(Note that if we were looking for consecutive \`fifths\' that need not
necessarily be \`perfect,\' we could simply eliminate the letter "P"
in each interval given in the template.)

Given the above output from the **hint** command, we could search for
occurrences of the defined pattern using the following command:

The **-f** option is used to identify the file (`template`) in which the
pattern-template has been stored. The **-s** option tells **patt** of
any input records that should be skipped during the search process. The
**-s** option is followed by a regular expression \-- in this case the
equals-sign \-- so that any input records containing the equals-sign
(i.e. `**hint` barlines) are ignored.

The default output from **patt** identifies the location of any
instances of the pattern it finds in the source document.

The appropriate pipeline is:

```bash
hint  | patt -f template -s =
```

There are a few refinements we ought to add to this process. Currently,
we are searching for parallel perfect fifths only. The consecutive
fifths rule pertains to all intervals that are compound-equivalents to
perfect fifths (such as perfect twelfths, etc.).

This additional criteria is easily handled. The **hint** command
provides a **-c** option that causes all compound intervals to be
represented by their non-compound equivalents. For example, major tenths
and major seventheenths, etc. will all be represented as "M3", and so
on. Hence we would modify our pipeline:

```bash
hint -c  | patt -f template -s =
```

(Note that an alternative way of handling the compound-intervals
question would be to define slightly more complex regular expressions in
our template file, e.g.


```humdrum
P5|P12|P19
  P5\|P12\|P19
  --------------
In regular expressions the vertical bar (\|) denotes the logical \`OR\'
operation. So the above pattern says "a perfect fifth OR a perfect
twelfth OR a perfect nineteenth followed by a \...")

Another refinement relates to the selection of voices. So far, we have
presumed that the input consists of just two Humdrum spines containing
separate parts. In a multi-part score, we must examine each pair of
voices in turn, in order to determine whether any pair exhibit
consecutive fifths or octaves.

The simplest (but more tedious) approach, is simply to execute our
command pipeline for each pairing of voices. For example, in a
traditional four-part harmonization:

```bash
extract -i '*soprano,*alto'   | hint -c | patt -f template -s =  extract -i '*soprano,*tenor'  | hint -c | patt -f template -s =  extract -i '*soprano,*bass'   | hint -c | patt -f template -s =  extract -i '*alto,*tenor'     | hint -c | patt -f template -s =  extract -i '*alto,*bass'      | hint -c | patt -f template -s =  extract -i '*tenor,*bass'     | hint -c | patt -f template -s =
```

(There are shorter ways of doing these permutations that involves a
little shell programming, but we\'ll leave that for another time.)


(4) Doubled Leading Tone
------------------------

#### RULE: "Avoid doubling the leading-tone."

Pitches can be identified as "leading-tones" only when we have some
idea of their key-related scale-degree. The Humdrum **deg** command
translates pitch representations to a scale-degree representation where
the numbers 1 to 7 represent tonic to leading-tone designations.

Notice that the score input must contain an explicit key indication (a
special type of Humdrum tandem interpretation). For example, the key of
G major is indicated through the presence of the following
interpretation:


```humdrum
*G:
```

Minor keys are indicated using lower-case characters. For example, the
following passage is in B minor:


```humdrum
**kern
  \*b:
  8r
  8f\#
  8b
  16.cc\#
  32dd
  8a\#
  16.b
  32cc\#
  8dd
  \*-
  ----------
The **deg** command can be used to transform this representation to
scale degree. The passage begins on the dominant (degree \`5\'), ascends
(\^) to the tonic (\`1\'), ascends to the supertonic (\^2), ascends to
the median (\^3) and then descends to the leading- tone (v7), etc.:


```humdrum
**deg
  \*b:
  5
  \^1
  \^2
  \^3
  v7
  \^1
  \^2
  \^3
  \*-
  ---------
The following command will eliminate durations or other possible number
representations that might conflict with scale-degree designations:

```bash
deg 
```

Having translated the representation in this way, we need to search for
any lines which contain two instances of the number \`7\' \-- that is,
two concurrent instances of the leading-tone.

Searching for the number \`7\' is easily done using the standard Unix
**grep** (get regular expression) command:

```bash
deg  | grep -n '7'
```

This will find and output all records that contain the number 7; the
**-n** option means that the corresponding line number will also be
output.

However, we want to find instances where two or more 7s occur on a
single line. For this, we can use a slightly more complex regular
expression

```bash
deg  | grep -n '7.*7'
```

In the construction ".\*" the period (.) means any character, and the
asterisk means "zero or more instances of \..." Hence, the regular
expression means "the number 7 followed by zero or more instances of
any character, followed by the number 7". In short, this expression
will match any record in which the number 7 occurs at least twice.

As in the case of our earlier search for augmented and diminished
intervals, **grep** is insensitive to whether the matching character
string is found in a data record, or whether it occurs in a Humdrum
comment or interpretation. In order to avoid matching comments or
interpretations, a further refinement to our regular expression is
appropriate.

```bash
deg  | egrep -n '^7.*7|^[^!*].*7.*7'
```

In this case, the regular expression says the following: "find any
occurrence of the number 7 at the beginning of the line followed by zero
or more characters followed by the number 7; or match any character at
the beginning of the line \-- other than an exclamation mark or an
asterisk \-- followed by zero or more characters, followed by the number
7, followed by zero or more characters, followed by another number 7.

Depending on the input, it is possible that Humdrum spines will be
present that do not represent scale degree information. It is possible
that these other kinds of data may also make use of the number 7 \-- but
*not* to represent the leading-tone. In other words, it is possible that
a matching \`7\' has nothing to do with scale degrees. We can ensure
that this doesn\'t happen by first ensuring that *only* scale-degree
spines are present in the input to be searched.

In order to do this, we can use the Humdrum **extract** command as a
filter, and identify the types of interpretations we want to pass. In
the following modification to our pipe, the **extract** command has been
used to ensure that only [`**deg`](/rep/deg) spines
are present:

```bash
deg  | extract -i '**deg' | egrep -n '^7.*7|^[^!*].*7.*7'
```

There are still some refinements that we could add to this command
sequence, but as it stands it is guaranteed to find all doubled
leading-tones \-- provided the notes begin at the same time. Consider
the following hypothetical passage:


```humdrum
**kern	**kern
  \*C: \*C:
  8c 8g
  =1 =1
  4B 8g
  . 16a
  . 16b
  4A 4cc
  \*- \*-
  --------------------
Given the above command sequence, no doubled leading-tones would be
identified in this passage. However, we might wish to implement a more
stringent criterion that would seek out any instances where the
leading-tone sounds at the same time in more than one voice. This occurs
in the above example with the sixteenth-note B concurrent with the held
quarter-note B in the other part.

This criterion can be accommodated by a further refinement to our
command pipeline. The Humdrum **ditto** command is used to replace null
data tokens by the immediately preceding data token in the same spine.
Consider first, the output from the **deg** command for the above
example:


```humdrum
**deg	**deg
  \*C: \*C:
  1 5
  =1 =1
  v7 5
  . \^6
  . \^7
  v6 \^1
  \*- \*-
  -------------------
If we now invoke the **ditto** command, the modified output is:


```humdrum
**deg	**deg
  \*C: \*C:
  1 5
  =1 =1
  v7 5
  v7 \^6
  v7 \^7
  v6 \^1
  \*- \*-
  -------------------
Notice that the two null tokens in the left-hand spine have been
replaced by copies of the most recent data token. Now our **grep**
command will find the two leading tones in the second last data record.

In summary, the complete command pipeline would be:

```bash
deg  | extract -i '**deg' | ditto -s = | egrep -n '^7.*7|^[^!*].*7.*7'
```

This may seem somewhat complicated, but the basic structure of this
pipeline is suitable for a very wide variety of pattern searches.


(5) Avoid Unisons
-----------------

#### RULE: "Avoid the sharing of pitches by two parts."

For this rule, let\'s assume that we also want to identify unisons that
are spelled enharmonically (such as F-sharp and G-flat).

First, we need to translate the two parts into some absolute pitch
representation \-- such as frequency or semitones. This will ensure that
enharmonically equivalent pitches have the same representation \-- and
so will facilitate comparison.

The Humdrum **semits** command translates pitches to semitone distances
where middle C is denoted as zero. For example, where two voices both
play B3 at the same time, both the parts will have a
[`**semits`](/rep/semits) value of minus one (-1).

Like the **deg** command, the **semits** command provides a **"-x**
option that eliminates from the output stream any characters that don\'t
pertain to semitones. Hence the following command will eliminate
durations or other possible numerical representations that might
conflict with semitone designations:

`extract -i '*alto,*tenor'` ` | semits -x`

Next we need to compare the two parts at each moment in order to
determine whether they have the same numerical value. The Unix **awk**
command will allow us to do some arithmetic. Awk auto- matically parses
an input, so the value of the first spine is referred to as \`\$1\', the
value of the second spine is \`\$2\' and so on. The **awk** expression
`` `$1==$2' `` is a test of whether the first and second spines are
equivalent. The **awk** action `` `print NR' `` means to print the
current line number (record number is `` `NR' ``).

So the following command will print the line number for any input in
which the semitone value is the same for both the alto and tenor voices:

```bash
extract -i '*alto,*tenor'  | semits -x | awk '{if($1==$2) print NR}'
```

There is a problem with this pipeline however. The **awk** command will
match all sorts of non-numeric inputs \-- such as where null tokens (.)
occur in both parts at the same time. Consequently, we need to be
careful to avoid non-numeric inputs and comments.

The regular expression \`\[\^0-9\]\' will match any line that doesn\'t
consist solely of numbers. The expression \`\[\^0-9-\]\' will match any
line that doesn\'t consist solely of numbers or the minus sign. Since
the tab character will also be present in our data records, we should
also include the tab in our regular expression. The tab may be denoted
in regular expressions by the lower-case letter \`t\' preceded by a
backslash. Hence the expression \`\[\^0-9\\t-\]\' will match only those
lines consisting solely of numbers, the minus sign, and tabs.

The following **awk** script will output the line numbers for all inputs
where the first and second spines contain identical numbers:

```bash
awk '{if($0~/[^0-9\t-]/)next}{if($1==$2) print NR}'
```

Adding this construction to our pipeline produces the following command
for identifying unisons:

```bash
extract -f 1,2  | semits -x | ditto -s = | awk '{if($0~/[^0-9\t-]/)next}{if($1==$2) print NR}'
```


(6) Crossed Parts
-----------------

#### RULE: "Avoid the crossing of parts."

Part-crossing occurs when a nominally higher voice uses a pitch that is
lower than a nominally lower voice.

The relations "higher" and "lower" suggest the use of an arithmetic
operator such as greater-than (\>) or less-than (\<). In brief, we will
approach this question by translating the pitches to a numerical scale,
and then use the general-purpose Unix **awk** command to test whether
the nominally lower voice is truly lower.

First we need to translate the pitch representation to some sort of
numerical form. We have several options. We could translate the pitches
to frequency ([`**freq`](/rep/freq)), or we could
translate them to semitones (`**semits`), or we could translate them to
cents (\*\*cents). Let\'s use `**semits`. Once again, in this
representation, middle-C is represented by the number zero, and all
other pitches are represented by their semitone distance (positive or
negative) with respect to this reference.

We extract the two parts of interest, and then translate them to the
semitone numerical representation:

```bash
extract -i '*soprano,*alto'  | semits -x
```

Since part-crossing may occur when one voice is holding a note, we
should use the Humdrum **ditto** command, as we did for the doubled
leading-tone problem. Hence:

```bash
extract -i '*alto,*tenor'  | semits -x | ditto -s =
```

Finally, we can use the Unix **awk** command to do a little arithmetic.
Once again, in **awk**, `` `$1' `` and `` `$2' `` refer to the first and
second input fields, and the built-in variable `` `NR' `` refers to the
current record (line) number. The expression
`` `{if($1>$2) print NR}' `` is a miniature program that says: "if the
first input field is numerically greater than the second field for the
current line, then print the line number":

```bash
extract -i '*alto,*tenor'  | semits -x | ditto -s = | awk '{if($1>$2) print NR}'
```

In short, if the left-most spine has a lower numerical value than the
second spine, then tell us where that occurs.

Since the `**semits` representation uses the lower-case letter \`r\' to
represent a rest, we should avoid the possibility of comparing a number
(note) with a rest. We can use a variation on the same **awk** script as
we used when checking for unisons:

```bash
awk '{if($0~/[^0-9\t-]/)next}{if($1>$2) print NR}'
```

Finally, the complete pipeline for identifying crossed parts:

```bash
extract -i '*soprano,*alto'  | semits -x | ditto -s = | awk '{if($0~/[^0-9\t-]/)next}{if($1>$2) print NR}'
```
extract -i \'\*alto,\*tenor\' \| semits -x \| ditto -s = \| awk
\'{if(\$0\~/\[\^0-9\\t-\]/)next}{if(\$1\>\$2) print NR}\'
extract -i \'\*tenor,\*bass\' \| semits -x \| ditto -s = \| awk
\'{if(\$0\~/\[\^0-9\\t-\]/)next}{if(\$1\>\$2) print NR}\'


(7) Parts Separated by Greater than an Octave
---------------------------------------------

#### RULE: "Avoid intervals greater than an octave between the soprano and alto voices. Also avoid intervals greater than an octave between the alto and tenor voices."

Finding infringements of this voice-leading rule requires just a slight
modification to our method for identifying the crossing of parts.

Having transformed the pitch input to a numerical form, we simply need
to check whether the difference between the two semitone values is
greater than 12 semitones.

The **awk** portion of our command is modified so that we are informed
if the nominally higher voice is more than 12 semitones away from the
other voice:

```bash
extract -i '*soprano,*alto'  | semits -x | ditto -s = | awk '{if($0~/[^0-9\t-]/)next}{if($2-$1>12) print NR}'  extract -i '*alto,*tenor'    | semits -x | ditto -s = | awk '{if($0~/[^0-9\t-]/)next}{if($2-$1>12) print NR}'
```


(8) Overlapped Parts
--------------------

#### RULE: "Avoid the overlapping of parts, where the pitch in an ostensibly lower voice moves to a pitch higher than the previous pitch in an ostensibly higher voice; or where the pitch in an ostensibly higher voice moves to a pitch lower than the previous pitch in an ostensibly lower voice."

The following passage illustrates a violation of the part overlapping
rule:


```humdrum
**pitch	**pitch
  C4 E4
  F4 A4
  E4 G4
  \*- \*-
  ---------------------
(In the second sonority, the lower voice (F4) moves to a pitch higher
than the previous pitch in the higher voice (E4).)

This rule is similar to the part-crossing rule, only we have to compare
the current pitch in one part with the previous pitch in another part.

Rather than making a direct comparison, for the purpose of this
tutorial, we will make a modification to our earlier part-crossing
detector. In brief, we will extract one of the parts, shift the data
tokens within that part, paste the two parts back together, and then
check to determine whether the shifted part shows any "crossed parts"
\-- using our earlier command pipeline.

The following command pipe will shift the data tokens in a spine down
one record. (The last data record will disappear.)

```bash
context -n 2 -p 1 -d XXX  | humsed 's/XXX.*//'
```

In this tutorial, we won\'t discuss how this works, since the
**context** and **humsed** commands will be covered in a future
tutorial. For now, we can note that shifting (say) the alto part can be
done by extracting the appropriate voice, and then using the shift
command sequence shown above:

```bash
extract -i '**alto'  | context -n 2 -p 1 -d XXX | humsed 's/XXX.*//' > alto.shf
```

If we want to compare, say, the soprano and alto voices, we need to
extract both parts, and shift one of them:

```bash
extract -i '*soprano'  > soprano  extract -i '*alto'  | context -n 2 -p 1 -d XXX | humsed 's/XXX.*//' > alto.shf
```

Next, we need to assemble the shifted and unshifted parts back into a
single score:

```bash
assemble alto.shf soprano > tempfile
```

Then we test this intermediate file for instances of "part-crossing"
\-- using our earlier command pipeline:

```bash
semits -x tempfile | ditto -s = | awk '{if($0~/[^0-9\t-]/)next}{if($1>$2) print NR}'
```

Avoiding the temporary file altogether:

```bash
assemble alto.shf soprano | semits -x | ditto -s = | awk '{if($0~/[^0-9\t-]/)next}{if($1>$2) print NR}'
```

Note that this procedure has determined whether any of the notes in the
soprano voice are lower than the previous note in the alto voice. We
also need to check whether any of the notes in the alto voice are higher
than the previous note in the soprano voice. To do this, we simply
repeat the process, shifting the other voice:

```bash
extract -i '*soprano'  | context -n 2 -p 1 -d XXX | humsed 's/XXX.*//' > soprano.shf  extract -i '*alto'  > alto  assemble alto soprano.shf | semits -x | ditto -s = | awk '{if($0~/[^0-9\t-]/)next}{if($1>$2) print NR}'
```

This processing needs to be applied for each pair of successive voices
\-- soprano/alto, alto/tenor, tenor/bass.


(9) Exposed Octaves
-------------------

#### RULE: "When approaching an octave by similar motion, ensure that at least one of the parts moves by step."

Violations of the exposed octaves rules must meet three conditions.
First, the two voices must be separated by an octave (or two octaves, or
a unison, etc.). (This suggests that we use the **hint** command with
the **-c** option in order to reduce compound intervals to their
non-compound equivalents.) Second, the voices must be moving in the same
direction. (The `**deg` representation may be suitable here, since it
distinguishes notes according to whether they are approached from below
("\^") or above ("v").) Third, both voices must be moving by leap
(e.g. more than two semitones).

To address this problem, let\'s plan to create five different spines.
The first spine will encode harmonic interval size so that all compound
equivalents to a unison are represented by the string "P1".

The second spine will indicate whether the lower voice is ascending or
descending ("\^" or "v"). Similarly, the third spine will indicate
whether the upper voices is ascending or descending.

The fourth spine will indicate whether the melodic motion for the lower
voice is by leap ("leap"), and the fifth spine will indicate whether
the melodic motion for the upper voice is by leap.

Examples of violations of the exposed octaves rule will appear as one of
the following two situations:


```humdrum
(**hint	**updown	**updown	**size	**size)
  P1 \^ \^ leap leap
  P1 v v leap leap
  --------------------------------------------------------
Any other situation means that the exposed octaves rule has not been
violated.

In other words, our final test can be expressed using the following
**egrep** command:

```bash
egrep -n 'P1.*^.*^.*leap.*leap|P1.*v.*v.*leap.*leap'
```

Now all we need to do is generate our five spines and assemble them in
the proper order.

The first spine is easily generated using the **hint** command. Remember
that the **-c** option means that all intervals an octave or greater
will be represented by the within-octave equivalent.

```bash
extract -i '*alto,*tenor'  | hint -c > spine1
```

The second and third spines can be generated using the Humdrum
[**deg**](/tool/deg) command:

```bash
extract -i '*alto'   | deg > spine2  extract -i '*tenor'  | deg > spine3
```

The fourth and fifth spines require a little more work. First, we
calculate the melodic intervals for each voice using the Humdrum
[**mint**](/tool/mint) command.

```bash
extract -i '*alto'  | mint  ...
```

Secondly, we need to change all data tokens indicating intervals greater
than a diatonic second (3 or more semitones) into the data token
consisting of the (arbitrary) character string "leap". This can be
done using the [**humsed**](/tool/humsed) stream editor.

```bash
 ...  humsed 's/.*[3-9].*/leap/' > spine4   [spine5 for the other voice]
```

Putting it all together, the following command sequence will let us
identify any instances of exposed octaves between two arbitrary voices:

```bash
extract -i '*alto,*tenor'  | hint -c > spine1  extract -i '*alto'   | deg > spine2  extract -i '*tenor'  | deg > spine3  extract -i '*alto'   | mint | humsed 's/.*[3-9].*/leap/' > spine4  extract -i '*tenor'  | mint | humsed 's/.*[3-9].*/leap/' > spine5  assemble spine1 spine2 spine3 spine4 spine5 > tempfile  egrep -n 'P1.*^.*^.*leap.*leap|P1.*v.*v.*leap.*leap' tempfile
```

