---
title: 'Humdrum Toolkit Command Reference -- Themefinder'
permalink: /tool//index.html
---

Themefinder - General Documentation
-----------------------------------

------------------------------------------------------------------------

This documentation describes utilities and procedures for constructing,
maintaining and augmenting the *themefinder* musical databases.

[Themefinder](http://www.themefinder.com) is a web-based application
that allows users to search for musical themes and incipits. Users may
search using a variety of search-keys, including pitch contour, scale
degree, date-of-composition, etc.

When a search is executed, a \"results-page\" is generated listing all
of the themes that match the search criterion. If more than 10 themes
are found, the results are distributed over two or more results-pages,
with 10 themes presented on each page.

The results for each theme consist of a *text header* that reports basic
information such as composer and title, and a notational rendering
(displayed using a .gif image file). In addition, users can select the
\[M\] button which causes a MIDI sound (.mid) file to be downloaded for
listening. Also, a \[I\] button can be selected which causes a new page
to be displayed containing detailed reference information pertaining
only to one particular theme. This reference information is stored in a
.inf file.

### Theme Files

Each theme is represented by a single [Humdrum](../guide05.html) file,
designated with the \".thm\" file extension. A theme file normally
contains a single [\*\*kern](../representations/kern.rep.html) spine
representing some theme or incipit. If more than one \*\*kern spine is
present, only the left-most spine is used for searching purposes.

Other spines may be present in theme files, such as spines for encoding
lyrics/text ([\*\*silbe](../representations/silbe.rep.html),
[\*\*text](../representations/text.rep.html)), harmonic function
([\*\*harm](../representations/harm.rep.html)), or another other
information. Currently, such non-kern encodings are ignored by the
*themefinder* search engine, however future proposed extensions will
make use of such information. Users may view the complete Humdrum theme
file using the \[H\] links displayed on any search-results page.

Each theme file also contains a number of Humdrum [Reference
Records](../guide.append1.html) that are used for bibliographic, text,
or reference-related searching. Theme files should minimally contain
reference records identifying the [composer](../guide.append1.html#COM)
(!!!COM) and [title](../guide.append1.html#OTL) (!!!OTL). Additional
reference records are welcome and desireable. Global and local comments
can also be included, and are encouraged when they clarify aspects of
the encoded music.

A special reference-formating record (!!!ref) must be present in each
theme file. The purpose of this record is to instruct *themefinder* how
to format the header text which appears immediately above the notated
theme when displaying a search-results page. The following two headers
illustrate typical header texts:

> Beethoven, Ludwig van, *Pathetique Sonata*, Opus 13, No. 1.\
> Anon. *Mrs. Brown\'s Owl*, Traditional English Ballad.

The format for a given theme header is specified by indexing other
reference information contained in the file. Consider, for example, the
following record:

> !!!ref: @{COM}, \<i\>@{OTL}\</i\> (@{XEN})

This record indicates that the !!!COM (composer) information should be
displayed, followed by a comma, followed by a space, followed by the
original title (!!!OTL), followed by the English translation of the
title (if present) given in parentheses. The \<i\> \... \</i\>
surrounding the original title is the HTML (hypertext markup language)
code for rendering text in italics \-- hence the title will appear
italicized.

### ISTN Numbers

Themefinder accesses themes by a numerical identifier called an Internal
Standard Theme Number (ISTN). An original theme file might be named
\"webern31a.thm\", but this file is ultimately copied to something like
122293375723.thm. A single number is used to identify all of the
pertinent theme-related files. For example, the corresponding MIDI,
notational image, and reference information files would be named
122293375723.mid, 122293375723.gif and 122293375723.inf.

The main purpose of ISTN numbers is security. Since these files are
directly accessible to the world wide web, it is possible that someone
might attempt to retrieve and copy the entire database. The ISTN numbers
are intentionally very large, and randomly generated. Consequently, the
ISTN numbers are \"sparse\": it is very unlikely that any given number
corresponds to an actual file. This means that automated web requests
for a particular numerical file are unlikely to fetch an actual file.
Multiple attempts to fetch many files will alert us to attempts at
database theft before a remote site is able to download many actual
files.

ISTN numbers are stored in the /themefinder/istn/allocation/ directory.
The file *free.istn* identifies randomly generated numbers that are
available for use. The file *used.istn* contains a list of numbers that
are already in use.

### Adding Themes

In order to add themes to the themefinder database, the user must first
encode a Humdrum \*\*kern file (.thm) for each individual theme or
incipit. From this original file, the user must generate three
additional file types: a notation image (.gif) file, a MIDI sound (.mid)
file, and a reference information (.inf) file. Detailed instructions for
generating each type of file are given below.

Themes are usually stored in groups called *collections*. An example of
a collection is the Essen Folksong Collection. Sometimes individual
theme files are added to an existing collection. Frequently, whole new
collections consisting of hundreds of themes are added. Each collection
is stored in a separate directory.

Themes are also classified according to *repertory*. Examples of
repertories included \"classical\" music, \"folk\" music, and \"chant\".
A repertory may consist of several collections. Repertoires are used by
*themefinder* to limit the search to particular types of works.

### Generating Image Files (.gif)

The notational images (.gif) files are generated via the Humdrum
[ms](ms.html) command, which in turn makes use of the *Mup* music
typesetting utility. The *ms* command generates postscript output. A
further program (*ps2gif*) translates postscript files to gif, crops the
image to a suitable size, and makes the image transparent so any HTML
background can appear behind the notation.

Normally, the entire process of generating a .gif file is completely
automated (see below). That is, the user normally need not invoke the
*ms*, the *mup* or *ps2gif* commands. However, limitations in the *ms*
command often generate errors using *Mup*, and so some .gif files must
be produced manually. In this case, invoke the *ms* command with the
*-z* option so that an intermediate .mup file is generated. Edit this
file until it conforms fully to the Mup input syntax. Then use the *mup*
and *ps2gif* commands to generate an appropriate .gif file. For details,
refer to the documentation for the [ms command](ms.html).

### Generating Information Files (.inf)

The info (.inf) files provide essential indexing information. A typical
info file is shown below:

> \@START: INFO\
> \@THEME: albinoni-01-01\
> \@REPERTOIRE: classical\
> \@COLLECTION: lvh\
> \@ISTN: 122293375723\
> \@DESCRIPTION: Albinoni, Toaso Givanni: \<i\>Sonata 1\</i\> Op. 1 No.
> 1\
> \@MOVEMENTSNS:\
> \@SINGLESNS:\
> \@WORKSNS:\
> \@COLLECTIONSNS: 122293375723 0596234234 23409234098243
> 234098230498234 23409834059345 5069243098534098 234098340598345
> 23049834059834\
> \[other themes that are related by collection\]\
> \@LINKTHEME: \[points to numbered files that contains web link to this
> theme\]\
> \@LINKMOVEMENT: \[points to numbered files that contains web link to
> this movement\]\
> \@LINKWORK: \[points to numbered files that contains web link to this
> work\]\
> \@LINKCOLLECTION: \[points to numbered files that contains web link to
> this collection\]\
> \@END: INFO

The \@THEME record identifies the name of the original theme file
(without the .thm extension). In the above case, the corresponding theme
file is *albinoni-01-01.thm*. The \@REPERTOIRE record identifies the
larger repertory to which the work belongs. As noted above, repertoires
are used by *themefinder* to limit the search to particular types of
works. The \@COLLECTION record identifies the *collection* to which the
theme belongs. The \@ISTN is the unique numerical identifier used by
*themefinder* to identify the particular theme. The \@DESCRIPTION record
holds the literal theme header (including HTML codes) that appears above
the notated theme when the search results are displayed.

The \@MOVEMENTSNS record is used to identify possible other themes that
may appear in a single movement; these are indicated using the ISTN
numbers for each theme. The \@SINGLESNS record is currently not used. It
is intended to identify single movement works. The \@WORKSNS record is
used to identify all themes in the same work \-- that is, all themes
from all movements.

### FILES

Theme files are normally processed in groups (typically by
*collection*). Each collection is located under the main
/themefinder/collections directory. Examples of collections
subdirectories include /lmotet/ (Latin motets), /essen/ (Essen Folksong
Collection), /asm/ (Library of Congress, American Sheet Music
collection), and /densmore/ (Francis Densmore Native American music
collection).

Under each particular collection, there is a /source/ subdirectory which
contains all the Humdrum theme (.thm) files. Since collections typically
contain large numbers of themes, the /source/ directory is further
divided into alphabetized subdirectories (/a/, /b/, /c/, \... /z/). The
themes are distributed in these lettered subdirectories according to any
scheme the user chooses. For example, one might choose to order the
themes alphabetically by composer. The purpose is simply to avoid theme
source directories containing an unmanageable number of files.

Under each particular collection there is also an /info/ subdirectory
which contains all of the information (.inf) files. As in the case of
the /source/ directory, the /info/ directory contains alphabetized
subdirectories (/a/, /b/, etc.) whose purpose is (once again) to avoid
excessive numbers of files in a single directory. The directory
structure for /info/ duplicates exactly that for the /source/ directory.

Another subdirectory included for each collection is the /bib/
directory. This directory contains a series of files named *a.bib*,
*b.bib*, *c.bib*, etc. Each .bib file contains one record (line) for
each file in the corresponding /source/*n* directory. For example, if
/source/lvh/a contains 25 themes, then the file /source/bib/a.bib will
contain 25 lines. Each record in the .bib file begins with the ISTN
number, followed by a tab. All reference records in the theme file are
then appended, with each reference record separated by a tab. In other
words, all reference records for a single theme file are amalgamated and
placed on a single line \-- one line for each theme file. (Note that
single lines may contain several hundred characters.) E.g.

>   -------------- ----------------------------------- ------
>   020000000100   !!!COM: Albinoni, Tomaso Giovanni   etc.
>   -------------- ----------------------------------- ------
>
The .bib files are used when searching for reference-related information
using *grep*.

Yet another subdirectory included for each collection is the /istn/
directory. This directory contains a single file (all.istn). This file
is in the Humdrum format and consists of four spines: \*\*repertory,
\*\*collection, \*\*theme, and \*\*istn. Each data record pertains to a
single theme in the collection. The record specifies the repertory
assignment, the collection name, the file name for the original theme
file (minus the .thm extension), and the ISTN number. A sample file is
given below:

>   --------------- ---------------- ---------------- --------------
>   \*\*repertory   \*\*collection   \*\*theme        \*\*istn
>   classical       lvh              albinoni-01-01   122293375723
>   classical       lvh              albinoni-01-02   659146339995
>   --------------- ---------------- ---------------- --------------
>
The following figure illustrates the overall directory structure.

![](themefinder.gif)

The following table again outlines the overall directory structure, and
also identifies the location of various special files and executables:

/themefinder/

/bin/

**randomid**[\*](#1)

/istn/allocation/

*free.istn* (numbers available for use)

*used.istn* (numbers already in use)

/collections/

/bin - contains general software

**ps2gif**[\*](#2)

**addistn2info**[\*](#3)

**Make**[\*](#4)

/pvh/ (ojibway)

/densmore/

/rsc (Reprint Services Corp.)

/lmotet (latin motets)

/essen (Essen)

/tonerow

/asm (American Sheet Music - Library of Congress)

/ccarh (musedata - doesn\'t exist yet)

/source -contains theme directories

/a - subdirectories for a collection (arbitrary)

*a1.thm, a2.thm, a3.thm* etc.

/b

/c

etc.

/bin -contains collection-specific software

/info contains .inf files

/a

/b

/c

/bib -contains bibliographica information

/*a.bib* (file) \[see below for organization\]

/*b.bib* (file)

/istn -contains a file (all.istn) that provides all of

the ISTN numbers and their corresponding file names \[see below\]

/links

/9

/0 e.g. 910052132800.lnk

/1

/2

/3

/4

etc.

\[link numbers are generated by a combination of date/time of submission
and random numbers

/cache/w/x/y/z/wxzynnnnnnn

\* **randomid** generates random numbers not beginning with 9 (which
indicates link ID) or 0 (unused) (this \*CAN\* generate duplicates of
existing numbers)

\* **ps2gif** translates postscript files to gif; (1) makes the image
transparent (2) crops the image

\* **addistn2info** adds a International Standard Theme Number to
makegifs

Within this directory are four files: nnnnnnnnnn.gif (notation gif file)
nnnnnnnnnn.inf (information file) nnnnnnnnnn.thm (humdrum theme file)
nnnnnnnnnn.mid (MIDI0 file) Within INFO FILE: \[M\] \[W\] \[C\]
movement, work, collection (appears on results page)
\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--

### Web Links

Themefinder provides opportunities for web-users to attach links from a
specific theme to a particular web page \-- anywhere on the world-wide
web. This allows, for example, a scholar who has written a web document
pertaining (say) to the Mozart Symphony 41, to provide a web links from
all of the pertinent themes to his/her web document.

Links are established by using a special HTML \"links\" form which is
accessed through the \[L\] button on the theme information page. When
the form is submitted, a link file is created, the syntax for which is
illustrated below.

\@START: ISTNLINK\
\@ISLN: 911907212900\
\@ACTIVE: Y\
\@ISTN: 872686142687:728048740631:540326880199\
\@TITLE: Row forms in the serial works of Schoenberg, Berg, and We\
\@SCOPE: collection \[could be \"theme\", \"work,\" \"collection\" or
\"movement\"\]\
\@CATEGORY1: academic\
\@CATEGORY2: data:humdrum\
\@DESCRIPTION: All of the tone rows used in the serial works of
Schoenberg, Berg, and Webern. Theory students and scholars alike may
find these files a useful resource in their study of these works.\
\@URL: http://www.ccarh.org/publications/data/humdrum/tonerow\
\@AUTHOR: Justin London (Paul von Hippel, ed.)\
\@AUTHORURL:\
\@CONTACTNAME: Paul von Hippel\
\@CONTACTEMAIL: pvh\@ccrma.stanford.edu\
\@SUBMITHOST: hummer.stanford.edu (171.64.197.204)\
\@CONTROLMODIFICATION: N\
\@PASSPHRASE: ccarh\
\@CREATIONDATE: Tue Aug 29 21:07:19 2000\
\@MODIFICATIONDATE: Tue Aug 29 21:07:19 2000\
\@EXPIRATIONDATE:\
\@QUALITY: 950\
\@COMMENTS:\
\@END: ISTNLINK

A submitted link generates a file in which is stored in the
/themefinder/links/submitted directory. As in the case of other
themefinder files, link filenames are assigned a large random number.
Link filenames always begins with the number 9. The number is generated
by a combination of date/time and random numbers.

When a submitted link is processed, the file is moved to the \"process\"
subdirectory, edited, and then the \"make process\" command is executed
from the \"links\" directory. This causes the modification of any
pertinent INFO file, and copies the submitted-link file to the link
storage directory (/9/ directory ). It also updates a list/all.lst file
which contains a list of all of the link files, ordered from oldest to
most recent submitted link. (This list is used in the
cgi-bin/themenewlinks script to allow viewing of the most recently added
links to themefinder. Click on \"New Links\" on the main web page.)

How to Build a Themefinder Database
-----------------------------------

Suppose we have 1,000 new themes that we have assembled or translated
from a donated database. We can generate the appropriate files and
integrate the themes in themefinder as follows.

Presuming that the themes warrant a new \"collection\" we would create a
new subdirectory under /collections/. E.g.

> mkdir /collections/ragtime

Provide edited Humdrum files containing the themes. These files may
contain any Humdrum spines, but must contain a \*\*kern spine. (Only the
first \*\*kern spine is used in generating music-related indexes.) In
addition, create a serious of 26 alphabetic subdirectories and
distribute the files throughout these directories. (The distribution is
arbitrary.)

> mkdir /collections/ragtime/a\
> mkdir /collections/ragtime/b\
> mkdir /collections/ragtime/c\
> etc.

For a new collection, copy the \"Makefile\" from one of the existing
collections to the new collection: E.g.

> cp /collections/essen/Makefile /collections/ragtime

Change to the /themefinder/istn directory and run the \"make\" command
(?Craig is this correction?). Make the ISTN index (/istn/all.istn) file,
getting free ISTN numbers from the
/themefinder/istn/allocation/free.istn. Remember to eliminate these
numbers from free.istn and copy them to used.istn.

Commands available with the makefile:

>   ---------------- -------------------------------------------------
>   **img**:         create gif image files with ms and convert.
>   **midi**:        create the midifiles and directory from source.
>   **info**:        create the info files from the source files.
>   **bib**:         create bibliographic database.
>   **database**:    create thema database.
>   **groupings**:   edit info files and isnert grouping data.
>   **clean**:       remove all backup directories.
>   ---------------- -------------------------------------------------
>
make img - runs makegifs (which takes a kern file and generates a gif
file) i.e. runs mup; outputs are put in the /img directory results in
/img/a/nnnn.gif /img/b/nnnn.gif, etc. make midi - makes a directory
/midi results in /midi/a/nnnn.mid /midi/b/nnn.mid, etc. make info -
makes INFO file in the /info directory make bib - makes bib files (for
searching all reference records) make database - this calls themebuilder
to make the thema database make groupings - Before running this, you
must make a directory called \"groups\" which contains \[see below\]
make clean if an old versions already exists the make program
automatically copies the old director, e.g. /img becomes /img-old

Finally, set up the cache directories so everything is searchable. (The
cache directory contains simply links to the real locations for the .gif
.inf .mid and .thm files.)

> cd /themefinder/web/cache/istn

new make command:

> make allinks: create symbolic links for all themes.

or by individual collections, e.g.

> make tonerow\
> make renaissance

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--
BIB FILES; 020000000100 !!!COM: Albinoni, Tomaso Giovanni etc. \[All
reference records are placed on a single line for each theme file. Grep
is used to search \...\]
\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--
SAMPLE /istn/all.istn file \*\*repertory \*\*collection \*\*theme
\*\*istn classical lvh albinoni-01-01 122293375723 classical lvh
albinoni-01-02 659146339995
\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--
SAMPLE grouping file /group/local/all.grp and /group/istn/all.grp (local
is what you type by hand; /group/istn is generated by another special
make command. BY HAND: c: alibinoi-01-01 albinoni-01-02 albinoni-01-03
albinoni-01-04 (all on single line; first letter can be c, w, or m
followed colon, followed by tab, followed by theme file names (sans
.thm) RESULTING \"compiled\" VERSION: (using a local make command)

c:

23409234098234

340598345098

2309234098

34509345098345

23409823409823

w:

23409234098234

230983409830

3450983450

34059834509345

58548494393504

------------------------------------------------------------------------

\

-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\

Hi David,

The Themefinder description on the additional commands page is pretty
accurate. Here are the couple of statements I found that need
correcting/elaboration:

\> Also, a \[I\] button can be selected which causes a new page to \> be
displayed containing detailed reference information pertaining only \>
to one particular theme. This reference \> information is stored in a
.inf file.

.inf files only store Themefinder-specific maintenance records which are
generated automatically from other data and would look too ugly to place
into the .thm files. Instead, all available reference information on the
information page of a theme is stored in the original .thm file:

\>\> Also, a \[I\] button can be selected which causes a new page to
\>\> be displayed containing detailed reference information pertaining
only \>\> to one particular theme. This reference information is stored
in the \>\> .thm theme file.

===========================

\> but this file is ultimately copied to something like
122293375723.thm.

This is somewhat true. There are two directory structures currently in
Themefinder: (1) for each independent collection of themes where the
names are preserved from the submitter, and (2) one enourmous file
structure with 11,111 directories, or so, which store symbolic links to
the real collection files.

Directory structure (2) is used by the web CGI-scripts to access the
themes in a uniform manner, but Directory structure (1) is used for
storage of the themes. It would be possible to distribute directory
structure (2) with the web CGI interface files in a portable fashion to
other computers for mirror websites of Themefinder.

===========================

\> The main purpose of ISTN numbers is security.

A secondary purpose of ISTN numbers is to provided a uniform access to
independently named collection sets and allow possible interaction
between independent collection sets with an easier way of writing the
supporting code for theme access.

Hi David,

The Themefinder description on the additional commands page is pretty
accurate. Here are the couple of statements I found that need
correcting/elaboration:

\> Also, a \[I\] button can be selected which causes a new page to \> be
displayed containing detailed reference information pertaining only \>
to one particular theme. This reference \> information is stored in a
.inf file.

.inf files only store Themefinder-specific maintenance records which are
generated automatically from other data and would look too ugly to place
into the .thm files. Instead, all available reference information on the
information page of a theme is stored in the original .thm file:

\>\> Also, a \[I\] button can be selected which causes a new page to
\>\> be displayed containing detailed reference information pertaining
only \>\> to one particular theme. This reference information is stored
in the \>\> .thm theme file.

===========================

\> but this file is ultimately copied to something like
122293375723.thm.

This is somewhat true. There are two directory structures currently in
Themefinder: (1) for each independent collection of themes where the
names are preserved from the submitter, and (2) one enourmous file
structure with 11,111 directories, or so, which store symbolic links to
the real collection files.

Directory structure (2) is used by the web CGI-scripts to access the
themes in a uniform manner, but Directory structure (1) is used for
storage of the themes. It would be possible to distribute directory
structure (2) with the web CGI interface files in a portable fashion to
other computers for mirror websites of Themefinder.

===========================

\> The main purpose of ISTN numbers is security.

A secondary purpose of ISTN numbers is to provided a uniform access to
independently named collection sets and allow possible interaction
between independent collection sets with an easier way of writing the
supporting code for theme access.

Hi David,

Here is the outline of a set of guidelines for Themefinder maintenance
and theme collection additions to Themefinder that would be good to
generate:

-   Section I is documentation to give out to prospective theme donors.
-   Section II is documentation on how to incorporate the themes into
    Themefinder by the Themefinder staff.
-   Section III is other sorts of documentation not covered in Sections
    I and II.

I have written a draft of Section I for you to elaborate/expand on if
you like. John Howard might be interested in having this sort of
documentation.

Sometime soon I will go though adding a theme collection step-by-step
and describe the process in detail and accurately. The current web
documentation describes much of the process but would not be complete
for someone who hasn\'t done the process.

And the left-over parts of the documentation not covered in sections I
and II can go into documentation tentatively outlined in section III.

I. Original Data Files A. Theme files 1. \*\*kern data 2. Theme length
3. Bibliographic records 4. !!!ref: instruction B. Naming conventions C.
Theme group files D. Image files E. Conversion from other musical data
formats into Humdrum II. Installing Original Data Files into Themefinder
A. Creating the source directory B. Creating derivative representations
1. MIDI 2. graphical images C. Allocating ISTN values D. Creating
database indices 1. Thema database 2. Bibliographic database E.
Processing grouping files F. Creating info files G. Generating web
interface links III. web interface and maintenance technicalities A.
File access considerations 1. Namespaces 2. ISTN allocation 3. Directory
structures B. CGI scripts for user interface C. Session implementation
D. Filesystem constraints

Submitting Theme Collections to Themefinder
-------------------------------------------

There are two general stages to adding themes to themefinder: (I)
creating theme files with musical and bibliographic data, as well as a
theme grouping file that contains relations between themes; and (II)
installing theme data files and generating supporting files.

I. Original Data Files

> A. Theme files
>
> > 1\. \*\*kern data\
> > 2. Theme length\
> > 3. Bibliographic records\
> > 4. !!!ref: instruction
>
> B. Naming conventions\
> C. Theme group files\
> D. Image files\
> E. Conversion from other musical data formats into Humdrum.

------------------------------------------------------------------------

### I. Original Data Files.

### I.A. Theme files.

Musical themes in the Themefinder database are stored one theme to a
file. The structure of the theme file is the standard Humdrum file
format with the first spine in the file being the thematic monophonic
music to be indexed for searching. This musical data is in the \*\*kern
musical representation. Other spines may be present, such as lyrics,
neumatic notation, tone-row pitch classes, etc. Currently these
additional spines are ignored by the thema command which indexes the
musical data for searching purposes.

The length of the theme should nominally be one line of output produced
in the generation of the muscial score in section II.B.2. As a rule of
thumb, 30 notes fit well onto a single line. Also, about 4 measures of
4/4 meter consisting mostly of eighth-notes fits well onto one line. The
primary reason for this guideline is to have an clean aesethic to the
search result display. If the theme is longer than about 30 notes, then
you can currently:

1.  not encode the rest of the theme.
2.  place the rest of the theme in global comment records

Another possibility would be to invent a tandem interpretation to mark
the end of the graphically displayed portion of the theme.

Here is an example theme encoded for Themefinder (Twinkle, Twinkle,
Little Star):

  ----------
  \*\*kern
  \*clefG2
  \*M4/4
  \*k\[\]
  \*C:
  4cc
  4cc
  4gg
  4gg
  =
  4aa
  4aa
  2gg
  =
  4ff
  4ff
  4ee
  4ee
  =
  4dd
  4dd
  2cc
  =
  \*-
  ----------

A complete themefile example can be found on the web, for example, at:
http://www.themefinder.org/cgi-bin/themeinfo?istn=168786577544&type=humdrum

The key signature in the example above, \"\*k\[\]\", contains no sharps
or flats, and the theme is in C-major according to the tandem
interpretation \"\*C:\". In order for scale degree searches to be done
in themefinder, you must include the key of the theme which is a tandem
interpretation in the form \"\*C:\" where C is the tonic note of the
key, and the case of the key determines the mode: uppercase for major,
and lowercase for minor. Examples: \"\*F\#:\" = F-sharp major, \"\*a-:\"
= a-flat minor.

The time signature interpretation \"\*M4/4\" is important for metrical
searches in themefinder. The clef indication is important for the
graphical display of the notation. Either treble or bass clefs are
preferred. Only use other clefs such as alto clef if the music fits much
better on that clef. Measure numbers can optionally be encoded with the
theme, but they are not used for searching or printing of the theme in
Themefinder.

In addition to the musical data, a theme file contains any type of
bibliographic records that are appropriate for the theme. A list of
standard Humdrum bibliographic records may be found at
http://dactyl.som.ohio-state.edu/Humdrum/guide.append1.html . For the
above example, the title record would be:

> !!!OTL: Twinkle, Twinkle, Little Star

You can also specify the language used in the bibliographic record by
adding a two character ISO marker for the language (such as EN for
English, DE for german, ES for spanish, FR for french). This language
encoding may be useful for future language display options in
Themefinder, but are currently not used:

> !!!OTL\@EN: Twinkle, Twinkle, Little Star

There is one bibliographic record which is required for application in
generating a short text entry for the theme in the search results pages:

> !!!ref:

This record indicates what to display as identification for the theme on
the search results pages in Themefinder. Shorthand substitution patterns
of the form @{XXX} are replaced with the contents of the bibliographic
record starting with the pattern !!!XXX: . All other characters in the
!!!ref: record will become part of the final text string:

> !!!ref: *@{OTL}*

For the above example theme, will become:

> *Twinkle, Twinkle, Little Star*

The *\...* surrounding the title are the HTML codes for indicating an
italic font.

### I.B. Theme file naming conventions.

Theme filenames within a collection being submitted should start with a
letter (a-z) and can be of any reasonable length. The file name ends
with the extension \".thm\". Allowable characters include lowercase
letters, numbers, the dash (-) and underscore (\_).

In Themefinder, theme files will be segregated according to the first
character of their filename, with up to 26 subdirectories dividing the
theme files into smaller units. Ideally, there should be no more than
3,000 themes in any of these subdirectories. The unix file system used
with Themefinder could perhaps reasonably hold up to 10,000 files in any
particular subdirectory. If there are more theme files than 3,000 then
perhaps they should be renamed, or split into a second collection group.
Usually the name of the file indexes the themes in some manner, such as
with the Latin Motet collection:

j15672312-01.thm j = Initial from last name of composer 1567 = RISM
number 1567 for a particular year 23 = RISM number 1567/23 for a
particular edition 12 = The 12th motet in the edition 01 = first voice
(top voice) of the motet .thm = File extension indicating that this is a
Humdrum theme file.

For a theme collection, each theme must contain a unique filename.
Filenames between collections do not need to be unique.

### I.C. Theme group files.

An important secondary data entry to provide to Themefinder is called a
theme group file. This file describes the relation between themes on
several levels:

1.  **movement** \-- themes which belong to the same movement.
2.  **work** \-- themes which belong to the same composition which may
    consist of several movements.
3.  **collection** \-- themes from compositions which are related in
    some way. such as the same opus number, or same genre.

The collection group, for example, may consist of:

> \(a) J.S. Bach\'s Well-Tempered Clavier, Book I\
> (b) Vivaldi\'s Op.3 concertos\
> (c) Chopin\'s Preludes

A general guideline for the size of a grouping is no more than 50
themes. However, up to 100 themes in a group, particularly a collection
group, is reasonable. Larger group sizes are unweldy and are not
encouraged. For example, all the themes in the symphonies of Haydn would
be too large. All the themes from Beethoven\'s symphonies are at about
the limits of a reasonable group size. Note that the \"collection\"
grouping is different than a Themefinder \"collection\".

A theme grouping file contains all types of relations for all the themes
in a collection. To indicate a group one of the following three
characters are placed on the first column of the line: \"m\", \"w\",
\"c\", followed by a colon, \":\", followed by a tab charcter, followed
by a list of theme filenames, each separated by one space. Below is an
example set of grouping entries for a three movement piece. \"file6\" is
from the third movement. Since there is only one theme in the third
movement, it does not have a movement-level entry in the groupings file.
But note that in the \"work\" level grouping \"file6\" is included.

m: file1 file2 file3\
m: file4 file5\
w: file1 file2 file3 file4 file5 file6

Notice that the filenames in the groupings file do not include the
\".thm\" extensions.

In Themefinder, the theme grouping file data will be converted into ISTN
values and is used for several things:

1.  providing buttons \[M\], \[W\], and \[C\] for each theme that is a
    member of a larger grouping. For example the opening theme to
    Beethoven\'s 5th symphony has a hyperlink \[M\] that lists all of
    the themes in the first movement, and \[W\] which lists all themes
    in the 5th symphony.
2.  Web hyperlinks can be associated with themes on various levels:
    (a)theme, (b)movement, (c)work, (d)collection. The grouping file is
    the mechanism for making the maintenance of links common to several
    themes simpler.

It is possible to generate theme group files automatically if the themes
are indexed in a systematic way. For example, The Latin Motet theme
collection contains an incipit for each voice. The filenames of the
Motet themes were organized such that each composition had the same
filename start, followed by a voice indication:

> j15672312-01.thm Soprano incipit\
> j15672312-02.thm Alto incipit\
> j15672312-03.thm Tenor incipit\
> j15672312-04.thm Bass incipit

which could be automatically processed into a theme grouping entry like
so:

> w: j15672312-01 j15672312-02 j15672312-03 j15672312-04

Since automatic groupings of the themes are nearly impossible to
generate without errors, the theme groups file should be generated by
hand in most cases.

### I.D. Image files.

Image files are preferrably generated in Themefinder with the Humdrum
Toolkit program \"ms\" which generates PostScript output which can then
be converted to GIF images for display in Themefinder. This process
should be automatic, but often requires human intervention and
correction, Such as the theme of Bach\'s Well-Tempered Clavier Prelude
in C Major, book 1 \-- where the notation of the theme is polyphonic.

For non-standard repertoires, you may have to generate your own
graphical notation for the themes. For the Latin Motet collection, for
example, the \"ms\" command was not used; rather, a program was written
to translate the theme data into the MUP format directly, which was then
used by the mup program to convert the data into PostScript output. The
twelve-tone collection was also a special case.

### I.E. Conversion from other music data format into Humdrum.

Contact the Themefinder staff if you have a large set of musical themes
encoded in a method other than Humdrum \*\*kern data. Usually someone
can convert the data into Humdrum with an existing conversion program or
write a new conversion program. Existing conversion programs in the
Humdrum Toolkit:

> \(1) MuseData to kern program called muse2kern\
> (2) ESAC to kern\
> (3) Finale to kern?

Other conversion tools available:

> \(3) MUSTRAN to kern\
> (4) DARMS to kern \-- this is a specialized converter which converted
> the Latin Motet incipit collection into Humdrum.

Converting from MIDI is problematic for many reasons including:
chromatic accidental information is not recorded, measure lines are
usually not recorded, etc.
