---
title: 'Humdrum Toolkit Command Reference \-- humdrum'
permalink: /man/humdrum
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

------------------------------------------------------------------------

### COMMAND

**humdrum** \-- general syntax checker for Humdrum files

------------------------------------------------------------------------

### SYNOPSIS

` humdrum  [-v]  [inputfile ...]`

------------------------------------------------------------------------

### DESCRIPTION

The **humdrum** command identifies whether an input conforms to the
Humdrum representation syntax. Error messages are issued where
appropriate. If the input conforms to the Humdrum syntax, then the
**humdrum** command produces no output, unless the verbose (**-v**)
option is invoked.

Formally, a Humdrum representation may be defined as any ASCII input
containing zero or more *comments, data records* or *interpretations*
\-- with the restriction that no *data records* or *local comments*
appear without a prior *exclusive interpretation,* and that the file
maintain a coherent *spine* organization.

Humdrum comments are records (lines) that begin with an exclamation mark
(!). Local comments begin each active spine with a single exclamation
mark, whereas gobal comments begin with two exclamation marks (!!) at
the beginning of the record.

Humdrum interpretations are records that begin with an asterisk (\*).
Tandem interpretations begin each active spine with a single asterisk,
whereas exclusive interpretations begin the record with one or more
asterisks and have at least one active spine beginning with two
asterisks. Spine-path indicators are special types of interpretations
that include any one of the following tokens: \*+ \*- \*v \*\^ or \*x.
Spine-path indicators cannot appear on the same line with a tandem or
exclusive interpretation.

Any record that does not begin with either an exclamation mark of
asterisk is a data record.

The following table defines some of the pertinent Humdrum terminology.

>   ---------------------------- ------------------------------------------------------------------------
>   *record*                     a line of text; a sequences of (zero or more) ASCII characters
>                                terminated by a carriage return or newline character
>   *data record*                any *record* which is not a *comment* or an *interpretation*
>   *comment*                    a *global* or *local comment*
>   *global comment*             any *record* beginning with two exclamation marks (!!)
>   *local comment*              any *record* beginning with a single exclamation mark (!)
>   *interpretation*             an *exclusive* or *tandem interpretation*, or a *spine-path indicator*
>   *exclusive interpretation*   any *record* beginning with one or more asterisks (\*\*) and
>                                having at least one active spine beginning with two asterisks
>   *tandem interpretation*      any *record* in which each active spine begins with a single
>                                asterisk, excluding spine-path indicators
>   *spine-path indicator*       one of the following five *interpretations*: \*+ \*- \*v \*\^ \*x
>   *null token*                 the period (.) either alone on a single *record* or
>                                separated from other characters by tabs
>   *spine*                      a column of information \-- including *data records, local*
>                                *comments*, and *interpretations.*
>   ---------------------------- ------------------------------------------------------------------------
>
*Some Humdrum Definitions*

The following files may satisfy the Humdrum syntactical requirements:

-   a file containing data records preceded by at least one exclusive
    interpretation
-   a file containing only comments and interpretations
-   a file containing only interpretations
-   a file containing only global comments
-   a totally empty file.

Additional interpretations may be added throughout the file. Global
comments may appear anywhere in the file. Local comments and data
records can appear only after a spine has been initiated via an
exclusive interpretation.

Illegal constructions in Humdrum include the following:

-   empty record (i.e. a record containing only a carriage return or
    newline)
-   record containing only tabs
-   any record beginning with a tab
-   any record ending with a tab (except in a global comment)
-   any record containing two successive tab characters (except in a
    global comment)
-   any data record with fewer or more spines than the immediately
    preceding data or exclusive interpretation record
-   spine-path record containing only one join-spine indication
-   spine-path record containing only one exchange-spine indication, or
    containing more than two exchange-spine indicators.

------------------------------------------------------------------------

### SPINE ORGANIZATION

A Humdrum file must maintain a coherent spine organization. Spines are
columns of information separated by tabs. Each spine must be labelled
with an exclusive interpretation. If the number of spines varies in a
given file, spines must be added, terminated, split, joined, or
exchanged using the appropriate spine path indicators. Spines may (1)
start, (2) terminate, (3) split (into two), (4) join (*n*-into-one), and
(5) exchange.

>   ------ ----------------------------------------
>   `*+`   \- start a new spine
>   `*-`   \- terminate a current spine
>   `*^`   \- split a spine (into two)
>   `*v`   \- join (two or more) spines into one
>   `*x`   \- exchange the position of two spines
>   ------ ----------------------------------------
>
*Spine-path Indicators*

The use of various spine-path indicators is illustrated below:

> 1

2

3

\*

\*+

\*

\*

\*

\*\*inter

\*

(must follow immediately after)

1

2

new

3

1

2

3

\*

\*-

\*

1

3

1

2

3

\*

\*\^

\*

1

2a

2b

3

1

2

3

\*

\*v

\*v

1

2&3

1

2

3

\*x

\*x

\*

2

1

3

More complex examples:

1

2

3

4

5

\*

\*-

\*

\*-

\*

\*v

\*v

\*v

1&3&5

1

2

3

4

\*

\*

\*v

\*v

\*

\*x

\*x

\*v

\*v

\*

1&3&4

2

1

2

3

4

\*v

\*v

\*\^

\*\^

1&2

3a

3b

4a

4b

1

2

3

4

5

\*

\*-

\*

\*

\*

\*v

\*v

\*

\*

\*

\*\^

\*

\*

\*

\*+

\*

\*

\*

\*

\*\*inter

\*

1&3

4a

4b

new

5

------------------------------------------------------------------------

### OPTIONS

The **humdrum** command provides the following options:

>   -------- -------------------------------------------------------
>   **-h**   displays a help screen summarizing the command syntax
>   **-v**   verbose mode
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

The **-v** option invokes the verbose mode which provides summary
information and statistics concerning the input file. A list of all of
interpretations found in the file is output. In addition, an inventory
of all of the ASCII signifiers (characters) found in the data records is
output. The total number of data records is also provided, as well as
the number of null tokens encountered.

The verbose summary also produces a number of statistics related to the
spine-organization in the Humdrum file. Both the minimum and maximum
number of spines are identified. The paths of the various spines through
the file are also summarized. Specifically, **humdrum** indicates the
number of terminated spines, the number of new spines introduced, the
number of joined spines, the number of split spines, and the number of
exchanged spines.

------------------------------------------------------------------------

### EXAMPLES

The following is a sample input that conforms to the Humdrum syntax.

``

>   -------------------------------------------- ----------- ----------------
>   !! This is a global comment.                             
>   !! The following line specifies three                    
>   !! interpretations called \"inter\":                     
>   \*\*inter                                    \*\*inter   \*\*inter
>   !! The next line has three local comments.               
>   ! flute                                      ! oboe      ! fingering
>   We                                           are         ASCII
>   data                                         tokens      .
>   We are                                       data as     well.
>   !! The above three lines are data records.               
>   !! More examples of data records:                        
>   76.3                                         x+y         L(-)%4\^
>   \_ \_ \_                                     \_ \_       \_ \_ \_ \_ \_
>   \>                                           \<          \|\|\|
>   !! The next data record contains                         
>   !! only null tokens:                                     
>   .                                            .           .
>   !! Some spine-path exchanges:                            
>   !Spine1                                      !Spine2     !Spine3
>   \*x                                          \*x         \*
>   \*                                           \*x         \*x
>   !Spine2                                      !Spine3     !Spine1
>   Monday                                       Tuesday     Wednesday
>   4:00                                         5:00        6:00PM
>   !! Some null comments follow:                            
>   !!                                                       
>   !                                            !           !
>   !! New exclusive interpretations:                        
>   \*\*foo                                      \*\*bar     \*\*ding
>   !! A tandem interpretation in spine \#2:                 
>   \*                                           \*bop       \*
>   More                                         data        tokens.
>   !! Some spine-path terminators:                          
>   \*-                                          \*-         \*-
>   -------------------------------------------- ----------- ----------------
>
Where the verbose **(-v)** flag has been selected, the corresponding
output for the above file would be:

> ` Inventory of Interpretations:                           HUMDRUM FILE SUMMARY            Interpretations  Occurrences          **inter          3          **foo            1          **bar            1          **ding           1          *                2          *bop             1    Inventory of data token signifiers:     %()+-.034567:<>                                          ACILMPSTW^_                                          adeklnorstuwxy    Number of global comments:      14      Number of local comments:       4  Maximum # of concurrent spines: 3       Minimum # of concurrent spines: 3  Number of data records:         10      Number of null tokens:          4      Changes in number of spines:          New spines:        0          Terminated spines: 3          Split spines:      0          Joined spines:     0          Exchanges spines:  4`

------------------------------------------------------------------------

### FILES

The **humdrum** command uses a kornshell script to invoke an executable.
In order to avoid conflict, the executable file is named `humdrum_.exe`
(`humdrum_` on UNIX) rather than `humdrum.exe`.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and revised *awk* (1985).

------------------------------------------------------------------------

### SEE ALSO

[**census**](census.html) (4), [**proof**](proof.html) (4)

------------------------------------------------------------------------

### DIAGNOSTICS

The following list tabulates all of the potential errors and warnings
issued by the **humdrum** command. ``

>   ------------ ----------------------------------------------------------------------
>   ERROR 1:     Record containing add-spine indicator has not been followed
>                by exclusive interpretation for that spine in line
>   ERROR 2:     Illegal empty record in line
>   ERROR 3:     Leading tab in line
>   ERROR 4:     Trailing tab in line
>   ERROR 5:     Consecutive tabs in line
>   ERROR 6:     Missing initial asterisk in interpretation keyword in line
>   ERROR 7:     Null exclusive interpretation found in line
>   ERROR 8:     Incorrect number of spines in interpretation record in line
>   ERROR 9:     Local comment precedes first exclusive interpretation record in line
>   ERROR 10:    Number of sub-comments in local comment does not match the
>                number of currently active spines in line
>   ERROR 11:    Missing initial exclamation mark in local comment in line
>   ERROR 12:    Data record appears before first exclusive interpretation
>                record in line
>   ERROR 13:    Number of tokens in data record does not match the number
>                of currently active spines in line
>   ERROR 14:    All spines have not been properly terminated in file
>   ERROR 15:    First exclusive interpretation record contains a null
>                interpretation in line
>   ERROR 16:    First exclusive interpretation record contains a spine-path
>                indicator in line
>   ERROR 17:    First exclusive interpretation record contains a
>                non-exclusive interpretation in line
>   ERROR 18:    Spine-path indicators mixed with keyword interpretations in line
>   ERROR 19:    Improper number of exchange-path indicators in line
>   ERROR 20:    Single join-path indicator found at end of interpretation
>                record in line
>   ERROR 21:    Join-path indicator is not adjacent to another join-path
>                indicator in line
>   ERROR 22:    Exclusive interpretations do not match for designated
>                join spines in line
>   ERROR 23:    Leading spaces in token in line
>   ERROR 24:    Trailing spaces in token in line
>   ERROR 25:    Consecutive spaces in token in line
>   ERROR 26:    Multiple-stop contains null token in line
>   WARNING 1:   Local comment may be mistaken for global comment in line
>   WARNING 2:   Data token may be mistaken for global comment in line
>   WARNING 3:   Data token may be mistaken for local comment in line
>   WARNING 4:   Data token may be mistaken for exclusive interpretation in line
>   WARNING 5:   Data token may be mistaken for tandem interpretation in line
>   ------------ ----------------------------------------------------------------------
>
*Potential errors and warnings issued by **humdrum**.*

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide05.html#The_humdrum_Command)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
