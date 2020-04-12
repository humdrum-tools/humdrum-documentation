---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Beat Position
========================================

### REPRESENTATION

> <span class="rep">takt</span> \-- beat-position representation

### DESCRIPTION

> Frequently, it is useful to represent temporal moments within a
> recurring cycle or pattern. In music, the best example of such
> recurring moments is the pattern of beats within a measure. In 3/4
> meter, for example, a recurring cycle of beats occurs: 1-2-3-1-2-3
> \... The <span class="rep">takt</span> interpretation permits the representation of
> recurring moments within some temporal cycle. For most applications,
> the duration of the repeating cycle will be equivalent to the measure.
> However, other cycles are possible, such as phrase, sub-phrase, etc.
>
> In <span class="rep">takt</span>, integer values refer to beats, hence the value \`2\'
> refers to the second beat. Fractional values refer to moments within
> beats. For example, the value \`3.5\' refers to the second half of the
> third beat. In 4/4 meter, the value \`4.75\' refers to the last
> sixteenth of the measure. Up to two digits are permitted following the
> decimal point. Some decimal values are reserved to mean precise
> subdivisions. For example, the decimal values \`x.33\' and \`x.67\'
> are assumed to be precisely one-third and two-thirds respectively,
> i.e. equivalent to \`x.33333\...\' and \`x.66666\...\' Other
> fractional values are defined in the following table.
>
> >   -------- ----------
> >   *x.*10   1/10
> >   *x.*11   1/9
> >   *x.*13   1/8
> >   *x.*14   1/7
> >   *x.*16   1/6
> >   *x.*20   1/5
> >   *x.*22   2/9
> >   *x.*25   1/4
> >   *x.*29   2/7
> >   *x.*30   3/10
> >   *x.*33   1/3, 3/9
> >   *x.*38   3/8
> >   *x.*40   2/5
> >   *x.*43   3/7
> >   *x.*44   4/9
> >   *x.*50   1/2
> >   *x.*56   5/9
> >   *x.*57   4/7
> >   *x.*60   3/5
> >   *x.*63   5/8
> >   *x.*67   2/3, 6/9
> >   *x.*70   7/10
> >   *x.*71   5/7
> >   *x.*75   3/4
> >   *x.*78   7/9
> >   *x.*80   4/5
> >   *x.*83   5/6
> >   *x.*86   6/7
> >   *x.*88   7/8
> >   *x.*89   8/9
> >   *x.*90   9/10
> >   -------- ----------
> >
> Barlines are represented using the \"common system\" for barlines \--
> see [**barlines**](barlines.rep.html).

### FILE TYPE

> It is recommended that files containing predominantly <span class="rep">takt</span> data
> should be given names with the distinguishing \`.tak\' extension.

### SIGNIFIERS

> The following table summarizes the <span class="rep">takt</span> mappings of signifiers
> and signifieds.
>
> >   ----- ----------------------------------
> >   0-9   decimal values
> >   .     fractional delimiter; null token
> >   =     barlines
> >   ==    double barline
> >   ----- ----------------------------------
> >
> > *Summary of <span class="rep">takt</span> Signifiers*

### EXAMPLES

> A sample document is given below:
>
> > ``
> >
> >   ---------- ------------ ----------
> >   \*\*kern   \*\*metpos   \*\*takt
> >   \*M4/4     \*M4/4       \*M4/4
> >   \*c:       \*           \*
> >   =1         =1           =1
> >   8r         1            1
> >   16cc       4            1.5
> >   16bn       5            1.75
> >   8cc        3            2
> >   8g         4            2.5
> >   8a-        2            3
> >   16cc       4            3.5
> >   16b        5            3.75
> >   8cc        3            4
> >   8dd        4            4.5
> >   =2         =2           =2
> >   8g         1            1
> >   16cc       4            1.5
> >   16bn       5            1.75
> >   8cc        3            2
> >   8dd        4            2.5
> >   16f        2            3
> >   16g        5            3.25
> >   \[8a-      4            3.5
> >   8a-\]      3            4
> >   16g        4            4.5
> >   16f        5            4.75
> >   =3         =3           =3
> >   \*-        \*-          \*-
> >   ---------- ------------ ----------
> >
### PERTINENT COMMANDS

> Currently, no special-purpose Humdrum commands produce <span class="rep">takt</span> as
> output, or process <span class="rep">takt</span> encoded data as input.

### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> <span class="rep">takt</span>:
>
> >   ------------------ -----------
> >   meter signatures   `*M6/8`
> >   tempo              `*MM96.3`
> >   ------------------ -----------
> >
> > *Tandem interpretations for <span class="rep">takt</span>*

### SEE ALSO

> ` barlines, **date, **dur, **metpos, **ordo, **recip, **time, timebase, **Zeit`

