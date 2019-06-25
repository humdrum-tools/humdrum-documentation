---
author: David Huron
creation-date: "Tue Sep 1 10:17:29 EDT 1998"
revision-date: "Thu Feb 3 10:12:21 EST 2000"
robots: all
title: "Humdrum Toolkit User's Guide -- Appendix I"
---


Appendix I
==========

------------------------------------------------------------------------

Reference Records
=================

------------------------------------------------------------------------

Reference records are formal ways of encoding \"library-type\"
information pertaining to a Humdrum document. Reference records provide
standardized ways of encoding bibliographic information \-- suitable for
computer-based access.

A perpetual problem with reference information pertains to the language
in which information is represented. Humdrum provides comprehensive
methods for dealing with multiple languages. These methods are described
below,  and Humdrum users are encouraged to become familiar with these
conventions.

Humdrum reference records are designated by three exclamation marks at
the beginning of a line,  followed by a multi-letter code, followed by an
optional number,  followed by a colon, followed by some text.

Over 80 reference codes are pre-defined in Humdrum. Each of these
reference records is described below under nine categories: (1)
[authorship information, ](#Authorship_Information) (2) [performance
information, ](#Performance_Information) (3) [recording
information, ](#Recording_Information) (4) [work identification
information, ](#Identification_Information) (5) [imprint
information, ](#Imprint_Information) (6) [copyright
information, ](#Copyright_Information) (7) [analytic
information, ](#Analytic_Information) (8) [historical
information, ](#Historical_Information) and (9) [representation
information.](#Representation_Information) A final section discusses
[how to cite electronic documents.](#Electronic_Citation)

[]{#Language}

Accommodating Different Languages
---------------------------------

Humdrum attempts to accommodate all languages. Reference information can
be encoded using the original language of the source material or
document. In addition,  reference information can be encoded in various
translations that help end users. Humdrum uses the [**International
Standards Organization ISO
639-2**](http://lcweb.loc.gov/standards/iso639-2/englangn.html) standard
for representing languages. This standard provides 3-letter codes for
more than 4, 000 existing and historical languages. For example, the ISO
standard codes for English,  French and Swahili are ` eng` ` fre` and
` swa` respectively. (A table of 50 common languages is given at the end
of this appendix.)

Humdrum allows any type of reference information to be encoded in any or
all of these languages. In general,  the *primary* reference information
is encoded using the original language of the source material. Consider
the case of a Friuli folksong (Friuli is a dialect of Italian). The
title of the song should be encoded in the original language,  but it may
also be useful to provide translations in Italian and English.

The principal reference code indicating title is ` !!!OTL:` (see below).
Following the OTL reference code,  the language of encoding can be
indicated by appending an \"at\" sign (@),  followed by the 3-letter ISO
language code. Here the title is rendered in three languages:

> ` !!!OTL@@FUR: Ai preit la biele stele  !!!OTL@ITA: Ho pregato la buona stella  !!!OTL@ENG: The Good Star`

Notice the use of the double \"at\" sign (i.e.,  \"@@\"). This convention
is used to indicate that Friuli is the primary reference language. The
title can also be encoded without any language designation:

> ` !!!OTL: Ai preit la biele stele`

This implies that the title is already rendered in the *primary*
reference language.

[]{#Authorship_Information} []{#composer} []{#COM}

Authorship Information
----------------------

**!!!COM:** [**Composer\'s
name**](guide03.html#Searching_for_Reference_Information). In some
cases,  opinions differ regarding the best spelling of a composer\'s
name. If so,  all common spellings should be given \-- each alternative
separated from the previous by a semicolon. E.g.

> ` !!!COM: Chopin,  Fryderyk; Chopin, Frederick`

With respect to accents,  refer to the discussion concerning the
**!!!RLN:** reference record ([see below](#RLN)). If a work was composed
by more than one composer,  then each composer\'s name should appear on a
separate **!!!COM:** record with a number designation prior to the
colon. For example, 

> ` !!!COM1: Composer,  A.  !!!COM2: Composer, B.`

[]{#attributed composer} []{#COA}

**!!!COA:** *Attributed composer*. This may include attributions known
to be false. Several attributions may be combined on a single record by
separating each name by a semicolon. Note that if a document contains
both **!!!COA:** and **!!!COM:** records,  then the attributed composer
is explicitly assumed to be false.

[]{#suspected composer} []{#COS}

**!!!COS:** *Suspected composer*. This reference code indicates the
belief of the editor or producer of the document as to the true identity
of the composer(s). If more than one composer is suspected,  each name
should appear on a separate **!!!COS:** record with a number designation
prior to the colon.

[]{#composer's alias} []{#stage name} []{#COL}

**!!!COL:** *Composer\'s abbreviated,  alias, or stage name*. e.g.
Madonna.

[]{#corporate name,  composer} []{#composer's corporate name} []{#COC}

**!!!COC:** *Composer(s) corporate name*. Corporate names may include
the names of popular groups (especially when the actual composer is not
known). Corporate names may also include business names,  e.g. Muzak.

[]{#composer's dates} []{#birthdate,  composer} []{#death date, composer}
[]{#CDT}

**!!!CDT:** *Composer\'s dates*. The birth and death dates should be
encoded using the [`**Zeit`](representations/Zeit.rep.html) format
described in the *Humdrum Reference Manual*. The `**Zeit` format
provides a highly refined representation,  including methods for
representing uncertainty,  approximation, and boundary dates (e.g. prior
to \...,  after \...).

[]{#composer nationality} []{#CNT}

**!!!CNT:** *Nationality of the composer*. This reference information is
encoded using the language of the nationality. Thus a German composer is
encoded as `Deutscher` rather than \"German\",  and a French composer is
encoded as `Francais` rather than \"French.\" Of course the specific
language can be explicitly encoded using the 3-letter language codes
described above. (e.g.,  `!!!CNT@@FRE: Francais`). Where the composer
changed nationality,  successive nationalities should be listed (in
chronological order) separated by semicolons.

[]{#lyricist} []{#LYR}

**!!!LYR:** *Lyricist*. The name of the lyricist. If more than one
lyricist was involved in the work,  then each lyricist\'s name should
appear on a separate **!!!LYR:** record with a number designation prior
to the colon. If the composer was also the lyricist,  this should be
explicitly encoding using the independent **!!!LYR:** record \-- rather
than implicitly assumed.

[]{#librettist} []{#LIB}

**!!!LIB:** *Librettist*. The name of the librettist. If more than one
librettist was involved in the work,  then each librettist\'s name should
appear on a separate **!!!LIB:** record with a number designation prior
to the colon. If the composer was also the librettist,  this should be
explicitly encoding using the independent **!!!LIB:** record \-- rather
than implicitly assumed.

[]{#arranger} []{#LAR}

**!!!LAR:** *Arranger*. The name of the arranger. If more than one
arranger was involved in the work,  then each arranger\'s name should
appear on a separate **!!!LAR:** record with a number designation prior
to the colon.

[]{#orchestrator} []{#LOR}

**!!!LOR:** *Orchestrator*. The name of the orchestrator. If more than
one orchestrator was involved in the work,  then each orchestrator\'s
name should appear on a separate **!!!LOR:** record with a number
designation prior to the colon.

[]{#original language} []{#TXO}

**!!!TXO:** *Original language of vocal/choral text*. The name of the
language should be encoded in that language. For example,  `russki`
rather than `Russian`.

[]{#encoded language} []{#TXL}

**!!!TXL:** *Language of the **encoded** vocal/choral text*. The name of
the language should be encoded in the language used for encoding. For
example,  `Italiano` rather than `Italian`.

[]{#translator} []{#TRN}

**!!!TRN:** *Translator of text*. The name of the translator of any
vocal,  choral, or dramatic text. If more than one translator was
involved in the work,  then each translator\'s name should appear on a
separate **!!!TRN:** record with a number designation prior to the
colon.

[]{#Recording_Information}

Recording Information
---------------------

Humdrum representations may encode information pertaining to sound
recordings (such as sound-based analyses). For information derived from
sound recordings the following reference records may be pertinent.

[]{#title} []{#RTL}

**!!!RTL:** *Title of album*.

[]{#manufacturer} []{#RMM}

**!!!RMM:** *Manufacturer or sponsoring company*. The company or
organization responsible for the release,  distribution, and/or
manufacturing of the recording.

[]{#manufacturer} []{#RC#}

**!!!RC\#:** *Recording company\'s catalogue number*. The album\'s
numerical designation.

[]{#date of release} []{#RRD}

**!!!RRD:** *Date of release*. The release date should be encoded using
the [`**date`](representations/date.rep.html) format described in the
*Humdrum Reference Manual*.

[]{#place of recording} []{#RLC}

**!!!RLC:** *Place of recording*. (Local language should be used.)

[]{#producer} []{#RNP}

**!!!RNP:** *Name of the producer*.

[]{#date of recording} []{#RDT}

**!!!RDT:** *Date of recording*. The date of recording should be encoded
using the [`**date`](representations/date.rep.html) format described in
the described in the *Humdrum Reference Manual*.

[]{#track number} []{#RT#}

**!!!RT\#:** *Track number*.

[]{#Performance_Information}

Performance Information
-----------------------

Humdrum representations may encode performance-activity information
rather than (or in addition to) score-related information. If the
representation encodes a given performance (such as a MIDI performance), 
then the following reference records may be pertinent.

[]{#performer} []{#MPN}

**!!!MPN:** *Performer\'s name*. If more than one performer was involved
in the work,  then each performer\'s name should appear on a separate
**!!!MPN:** record with a number designation prior to the colon.

[]{#suspected performer} []{#MPS}

**!!!MPS:** *Suspected performer*. If more than one performer is
suspected,  each name should appear on a separate **!!!MPS:** record with
a number designation prior to the colon.

[]{#date of performer} []{#MRD}

**!!!MRD:** *Date of performance*. The performance date should be
encoded using the [`**date`](representations/date.rep.html) format
described in the *Humdrum Reference Manual*.

[]{#place of performer} []{#MLC}

**!!!MLC:** *Place of performance*. (Local language should be used.)

[]{#conductor} []{#MCN}

**!!!MCN:** *Name of the conductor of the performance*.

[]{#date of first performance} []{#MPD}

**!!!MPD:** *Date of first performance*. The date of first performance
should be encoded using the [`**date`](representations/date.rep.html)
format described in the described in the *Humdrum Reference Manual*.

[]{#Identification_Information}

Work Identification Information
-------------------------------

[]{#title} []{#OTL}

**!!!OTL:**
[**Title.**](guide03.html#Searching_for_Reference_Information) The title
of the specific section or segment encoded in the current file. Titles
must be rendered in the original language,  e.g. *Le sacre du printemps.*
(Title translations are encoded using other reference records.)

[]{#English translation} []{#XEN}

**!!!XEN:** *Translated title (in English)*. (Note that reference codes
are also available for translations to languages other than English, 
French,  German, or Japanese.)

[]{#French translation} []{#XFR}

**!!!XFR:** *Translated title (in French)*. (Note that reference codes
are also available for translations to languages other than English, 
French,  German, or Japanese.)

[]{#German translation} []{#XDE}

**!!!XDE:** *Translated title (in German)*. (Note that reference codes
are also available for translations to languages other than English, 
French,  German, or Japanese.)

[]{#Japanese translation} []{#XNI}

**!!!XNI:** *Translated title (in Japanese)*. (Note that reference codes
are also available for translations to languages other than English, 
French,  German, or Japanese.)

[]{#popular title} []{#OTP}

**!!!OTP:** *Popular Title*. This reference record encodes well-known or
alias titles such as \"Pathetique Sonata\".

[]{#alternative title} []{#OTA}

**!!!OTA:** *Alternative title*. This reference record encodes earlier
or alternate titles.

[]{#parent work} []{#OPR}

**!!!OPR:** *Title of larger (or parent) work* from which the encoded
piece is a part. For example,  \"Gute Nacht\" (OTL) from *Winterreise*
(OPR).

[]{#act number} []{#OAC}

**!!!OAC:** *Act number*. For operas and musicals,  this reference record
encodes the act number as an Arabic (rather than Roman) numeral. The
number may be preceded by the word \"Act\" as in `Act 3`.

[]{#scene number} []{#OSC}

**!!!OSC:** *Scene number*. For operas and musicals,  this reference
record encodes the scene number as an Arabic (rather than Roman)
numeral. The number may be preceded by the word \"Scene\" as in
`Scene 3`.

[]{#movement number} []{#OMV}

**!!!OMV:** *Movement number*. For multi-movement works such as sonatas
and symphonies,  this reference record encodes the movement number as an
Arabic (rather than Roman) numeral. The number may be preceded by the
word \"Movement\" or \"mov.\" etc.,  as in `mov. 3`.

[]{#movement name} []{#OMD}

**!!!OMD:** *Movement designation or movement name*. Typically movements
may be named according to the tempo (e.g. \"Allegro ma no troppo\") or
according to a style,  genre or form (e.g. \"Fugue\"), or according to a
programmatic title (e.g. \"In Full Flower\").

[]{#opus number} []{#OPS}

**!!!OPS:** *Opus number*. The number may be preceded by the word
\"Opus\" as in `Opus 23`. Once again,  Arabic numerals are used.

[]{#(work) number} []{#ONM}

**!!!ONM:** *Number*. The number may be preceded by the abbreviations
\"No.\" or \"Nr.\" as in `No. 4`.

[]{#(work) volume} []{#OVM}

**!!!OVM:** *Volume*. The volume number may be preceded by the
abbreviation \"Vol.\" as in `Vol. 2`. Arabic numbers are used.

[]{#ODE} []{#dedication}

**!!!ODE:** *Dedication*. Name of person or organization to whom the
work is dedicated. If the work was dedicated to more than one person, 
then each dedicatee\'s name should appear on a separate **!!!ODE:**
record with a number designation prior to the colon.

[]{#commission} []{#OCO}

**!!!OCO:** *Commission*. Name of person or organization that
commissioned the work. If the work was commissioned by more than one
person,  then each commissioner\'s name should appear on a separate
**!!!OCO:** record with a number designation prior to the colon.

[]{#collector} []{#OCL}

**!!!OCL:** *Collector*. Name of person who collected or transcribed the
work. If the work was collected by more than one person,  then each
collector\'s name should appear on a separate **!!!OCL:** record with a
number designation prior to the colon.

[]{#nota bene} []{#ONB}

**!!!ONB:** *Free format note* related to the title or identity of the
encoded work. Nota bene. If more than one such note is encoded,  each
should appear on a separate **!!!ONB:** record with a number designation
prior to the colon.

[]{#date of composition} []{#ODT}

**!!!ODT:** *Date of composition*. The date (or period) of composition
should be encoded using the [`**date`](representations/date.rep.html) or
[`**Zeit`](representations/Zeit.rep.html) formats described in the
*Humdrum Reference Manual*. The `**date` and `**Zeit` formats provides a
highly refined representation,  including methods for representing
uncertainty,  approximation, and boundary dates (e.g. prior to \...,
after \...).

[]{#OCY} []{#country of composition}

**!!!OCY:** *Country of composition*. Local names should be used,  such
as \`Espana\'.

[]{#OPC} []{#city of composition}

**!!!OPC:** *City,  town or village of composition*. Local names should
be used,  such as \`Den Haag.\'

[]{#Group_Information}

Group Information
-----------------

[]{#GTL} []{#group}

**!!!GTL:** *Group Title*. A logical collection of works such as the
\"London Symphonies\" by Haydn,  or the four concertos by Vivaldi forming
\"The Seasons\".

[]{#associated work} []{#GAW}

**!!!GAW:** *Associated Work*. Some works are associated with other
works,  such as plays, novels, paintings, films, or other musical works.
E.g. Mendelssohn\'s Overture to Shakespeare\'s *Midsummer Night\'s
Dream*. This reference allows associated works to be explicitly
identified by author and title. E.g.

> ` !!!GAW: Stéphane Mallarmé,  L'Après-midi d'un faune; [The Afternoon of a Faun].`

[]{#GCO} []{#group}

**!!!GCO:** *Collection designation*. This is a free-form text record
that can be used to identify a collection of pieces,  such as works
appearing in a compendium or anthology. E.g. Norton Scores,  Smithsonian
Collection,  Burkhart Anthology.

[]{#Imprint_Information}

Imprint Information
-------------------

[]{#publication status} []{#PUB}

**!!!PUB:** *Publication status*. This reference record identifies
whether the document has ever been \"published\". One of the following
English terms may appear: `published` or `unpublished`.

[]{#first publisher} []{#PPR}

**!!!PPR:** *First publisher*. Name of the first publisher of the work.

[]{#PDT} []{#date of first publication}

**!!!PDT:** *Date first published*. The date of publication should be
encoded using the [`**date`](representations/date.rep.html) format
described in the *Humdrum Reference Manual*.

[]{#place of first publication} []{#PPP}

**!!!PPP:** *Place first published*. (Local language should be used.)

[]{#publisher's catalogue number} []{#PC#}

**!!!PC\#:** *Publisher\'s catalogue number*. This should not be
confused with better known scholarly catalogues,  such as those of
Köchel,  Hoboken, etc.

[]{#SCT} []{#scholarly catalogue abbreviation and number}

**!!!SCT:** *Scholarly catalogue abbreviation and number*. E.g. BWV 551

[]{#scholarly catalogue (unabbreviated) name} []{#SCA}

**!!!SCA:** *Scholarly catalogue (unabbreviated) name*.
E.g.`Koechel 117`.

[]{#manuscript source} []{#SMS}

**!!!SMS:** *Manuscript source name*. For unpublished sources,  the
manuscript source name.

[]{#manuscript location} []{#SML}

**!!!SML:** *Manuscript location*. For unpublished sources,  the location
of the manuscript source.

[]{#SMA} []{#acknowledgement of manuscript access}

**!!!SMA:** *Acknowledgement of manuscript access*. This reference
information may be used to encode a free format acknowledgement or note
of thanks to a given manuscript owner for scholarly or other access.

[]{#Copyright_Information}

Copyright Information
---------------------

[]{#YEP} []{#publisher of electronic edition}

**!!!YEP:** *Publisher of electronic edition*. This reference identifies
the publisher of the electronic document.

[]{#YEC} []{#date and owner of electronic copyright}

**!!!YEC:** *Date and owner of electronic copyright*. This reference
identifies the year and owner of the copyright for the electronic
document.

[]{#YER} []{#date electronic edition released}

**!!!YER:** Date electronic edition released.

[]{#YEM} []{#copyright message}

**!!!YEM:** *Copyright message*. This record conveys any special text
related to copyright. It might convey a simple warning (e.g. \"All
rights reserved.\"),  convey registration or licensing information, or
indicate that the document is shareware.

[]{#YEN} []{#country of copyright}

**!!!YEN:** *Country of copyright*. This reference identifies the
country in which the electronic document was created,  or where the
copyright was established. In effect,  it identifies the country under
whose laws the copyright declaration is to be interpreted.

[]{#YOR} []{#original document}

**!!!YOR:** *Original document*. This reference identifies any original
source or sources from which encoded document was prepared. Note that
original documents may themselves be copyrighted,  and that permission
may be required in order to create an electronic derivative document.
Original documents may also have lapsed copyrights.

[]{#original document owner} []{#YOO}

**!!!YOO:** *Original document owner*. If the electronic document was
prepared from a copyrighted original document,  this reference identifies
the copyright owner of the original document. Note that unless the
electronic and original documents have the same owner,  some licensing
agreement or other legal arrangement is necessary in order to create an
electronic derivative document.

[]{#original copyright year} []{#YOY}

**!!!YOY:** *Original copyright year*. If the electronic document was
prepared from a copyrighted original document,  this reference identifies
the year of copyright for the original document. Note that some
licensing agreement or other legal arrangement is necessary in order to
create an electronic derivative document.

[]{#original editor} []{#YOE}

**!!!YOE:** *Original editor*. The editor of the original document from
which the electronic edition was prepared. Note that some licensing
agreement or other legal arrangement may be necessary in order to create
an electronic derivative document.

[]{#EED} []{#electronic editor}

**!!!EED:** *Electronic Editor*. Name of the editor of the electronic
document. If more than one editor was involved in the work,  then each
editor\'s name should appear on a separate **!!!EED:** record with a
number designation prior to the colon.

[]{#ENC} []{#encoder of electronic document}

**!!!ENC:** *Encoder of the electronic document*. This reference
identifies the name of the person or persons who encoded the electronic
document. (Not to be confused with the electronic editor.) If more than
one encoder was involved in the work,  then each encoder\'s name should
appear on a separate **!!!ENC:** record with a number designation prior
to the colon.

[]{#document modification description} []{#EMD}

**!!!EMD:** *Document modification description*. This record type is
used to chronicle all modifications made to the original electronic
document. EMD records should indicate the date of modification,  the name
of the person making the modification,  and a brief description of the
type of modification made. For each successive modification,  a separate
**!!!EMD:** record should appear with a number designation prior to the
colon.

[]{#EEV} []{#electronic edition version}

**!!!EEV:** *Electronic edition version*. This reference identifies the
specific editorial version of the work. e.g. Version 1.3g Only a single
**!!!EEV:** record can appear in a given electronic document.

[]{#EFL} []{#file number}

**!!!EFL:** *File number*. Some files are part of a series or group of
related files. This record indicates that the current document is file
*x* in a group of *y* files. The two numbers are separated by a slash as
in:

> ` !!!EFL: 1/4`

[]{#encoding status} []{#EST}

**!!!EST:** *Encoding status*. This record indicates the current status
of the document as it is being produced. Free-format text may indicate
that the encoding is in-progress,  list tasks remaining, or indicate that
the encoding is complete. **!!!EST:** records are normally eliminated
prior to distribution of the document.

[]{#VTS} []{#checksum validation number}

**!!!VTS:** *Checksum validation number*. This reference encodes the
checksum number for the file \-- excluding the **!!!VTS:** record
itself. When this record is eliminated from the file,  any POSIX.2
standard **cksum** command can be used to determine whether the file
originates with the publisher,  or whether it has been modified in some
way. (See the Humdrum **veritas** command described in Section 4.) Note
that this validation process is easily circumvented by malicious
individuals. For true security,  the checksum value should be compared
with a printed list of checksums provided by the electronic publisher.

[]{#Analytic_Information}

Analytic Information
--------------------

[]{#ACO} []{#collection}

**!!!ACO:** *Collection designation*. This is a free-form text record
that can be used to identify a collection,  set, or group of related
works,  such as works appearing in a compendium or anthology. E.g. Norton
Scores,  Smithsonian Collection, Jones Anthology.

[]{#AFR} []{#form designation}

**!!!AFR:** *Form designation*. This is a free-form text record that can
be used to identify the form (if appropriate) of the work. E.g. fuga, 
sonata-allegro,  passacaglia, rounded binary, rondo.

[]{#AGN} []{#genre designation}

**!!!AGN:** *Genre designation*. This is a free-form text record that
can be used to identify the genre of the work. E.g. opera,  string
quartet,  barbershop quartet.

[]{#AST} []{#style,  period, or type of work designation}

**!!!AST:** *Style,  period, or type of work designation*. This is a
free-form text record that can be used to characterize the style, 
period,  or type of work. This reference can include any term or terms
deemed appropriate by the producer of the document. Designations might
include keywords or keyphrases such as: Baroque,  bebop, Ecole Notre
Dame,  minimalist, serial, reggae, slendro, heterophony, etc.

[]{#AMD} []{#mode classification}

**!!!AMD:** *Mode Classification*. A combined numerical/name system for
mode identification \-- used especially for medieval monophonic and
later polyphonic works. Modes are indicated by numbers from 1 to 12, 
followed by a semicolon,  followed by the corresponding written name
(with an initial upper-case character). Permissible mode numbers and
names are:

>   ----- ----------------
>   1;    Dorian
>   2;    Hypodorian
>   3;    Phyrgian
>   4;    Hypophyrgian
>   5;    Lydian
>   6;    Hypolydian
>   7;    Mixolydian
>   8;    Hypomixolydian
>   9;    Ionian
>   10;   Hypoionian
>   11;   Aeolian
>   12;   Hypoaeolian
>   ----- ----------------
>
Other non-standard mode names can be used at the discretion of the
electronic editor.

[]{#AMT} []{#metric classification}

**!!!AMT:** *Metric Classification*. Meters for a file may be classified
as one of the following eight categories: `simple duple`, 
`simple triple`,  `simple quadruple`, `compound duple`,
`compound triple`,  `compound quadruple`, `irregular`, or `various`.

[]{#AIN} []{#instrumentation}

**!!!AIN:** [**Instrumentation.**](guide.append2.html) This reference is
used to list all of the instruments (including voice) used in the work.
Instruments should be encoded using the abbreviations specified by the
`*I` tandem interpretation described in Appendix II. Instrument codes
must appear in alphabetical order separated by spaces. (Note that
alphabetical ordering is essential in order to facilitate searches for
specific combinations or subsets of instruments using the **grep**
command.) E.g.

> ` !!!AIN: clars corno fagot flt oboe`

[]{#ARE} []{#region designation}

**!!!ARE:** *Geographical region of origin*. This reference identifies
the geographical location from which the work originates. Location
designations are encoded using the local language. The location begins
with the continent designation,  and becomes successively more refined.
If the information is available,  refinement can continue to suburban
district or even street address.

> ` !!!ARE: Europa,  Mitteleuropa, Deutschland, Wuerttemberg, Sindelfingen  !!!ARE: America, North America, United States of America, Ohio, Columbus`

[]{#ARL} []{#location designation}

**!!!ARL:** *Geographical location of origin*. Like the ARE record,  this
reference record identifies the geographical location from which a work
originates. Location designations are encoded using latitude and
longitude values \-- suitable for creating maps. The first numerical
value indicates latitude (positive values indicating North,  negative
values indicating South). The second numerical value indicates longitude
(positive values only,  indicating distance East from the central
meridian). A slash separates the latitude and longitude values. A series
of trailing characters is used to indicate the degree of accuracy of the
location information: % (continent),  @ (country), \# (province or
state),  : (town or village). For large regions such as countries or
provinces,  the geographical center of the region is used.

> ` !!!ARL: 51.5/10.5@`

[]{#Historical_Information}

Historical and Background Information
-------------------------------------

[]{#HAO} []{#aural_history}

**!!!HAO:** *Aural History*. This is a free-form text record used to
relay any story or stories about the origin,  purpose or background of
the work. This reference record is especially useful in
ethnomusicological materials,  where a particular story accompanies a
song. The story may be encoded using several successive HAO records.

[]{#HTX} []{#text_translation}

**!!!HTX:** *Free-form Translation of Vocal Text*. This is a free-form
text record used to relay a non-literal translation of a vocal text.
This reference record is again especially useful in ethnomusicological
materials.

[]{#Representation_Information}

Representation Information
--------------------------

[]{#ASCII language setting} []{#RLN}

**!!!RLN:** *ASCII language setting*. This reference identifies the
\"language\" code in which the file was encoded. This is applicable only
to computer platforms which provide \"extended ASCII\" text capabilities
(e.g. Danish or Spanish characters).

[]{#User-defined signifiers} []{#RDF}

**!!!RDF:** *User-defined signifiers*. All Humdrum representations
provide some signifiers (ASCII characters) that remain undefined. Users
are free to use these undefined signifiers as they choose. When
undefined signifiers appear in a given document,  the
**!!!RDF\*\**interp*:** code should be used to specify what the
signifiers denote. Notice that the code RDF is followed by the name of
the interpretation to which the signifier definition applies. In the
following example,  the letters \"X\" and \"x\" symbols that are defined
within a hypothetical \*\*piano representation. E.g.

> ` !!!RDF**piano: X=hands cross,  left over right  !!!RDF**piano: x=hands cross, right over left`

[]{#date encoded} []{#RDT}

**!!!RDT:** *Date encoded*. This reference uses the Humdrum
[`**date`](representations/date.rep.html) format to identify the date(s)
when the document was encoded.

[]{#representaton note} []{#RNB}

**!!!RNB:** *Representation note*. This reference provides a free-format
text that conveys some document-specific note related to matters of
representation.

[]{#representaton warning} []{#RWG}

**!!!RWG:** *Representation warning*. This reference may be used to
encode explicit warnings concerning the encoded material.

[]{#Electronic_Citation}

Electronic Citation
-------------------

Electronic editions of music might be cited in printed or other
documents by including the following information. The \"author\" (e.g.
[**!!!COM:**](#composer)),  the \"title\" \-- either original title
([**!!!OTL:**](#OTL)) or translated title (e.g. [**!!!XEN:**](#XEN)).
The editor ([**!!!EED:**](#electronic%20editor)),  publisher
([**!!!YEP:**](#publisher%20of%20electronic%20edition)),  date of
publication and copyright owner
([**!!!YEC:**](#date%20and%20owner%20of%20electronic%20copyright)),  and
electronic version ([**!!!EEV:**](#electronic%20edition%20version)),  In
addition,  a full citation ought to include the validation checksum
([**!!!VTS:**](#checksum%20validation%20number)). This number will allow
others to verify that a particular electronic document is precisely the
one cited. A sample electronic citation might be:

> Franz Liszt,  Hungarian Rhapsody No. 8 in F-sharp minor (solo piano).\
> Amsterdam: Rijkaard Software Publishers,  1994; H.
> Vo\\o\'r\\(hc\'i\\o\'s\\(hc\'ek (Ed.), \
> Electronic edition version 2.1,  checksum 891678772.

In Humdrum files it does not matter where reference records appear.
Since it is common for users to inspect the beginning of a file in order
to check whether the file is being properly processed,  the number of
reference records at the beginning of the file should be kept to a
minimum. A good habit is to place the composer,  title of the work, and
copyright records at the beginning of the file,  and to relegate all
other reference records to the end of the file.

[]{#Further_Reference_Record_Codes}

ISO Language Codes
------------------

[]{#other language translations}

The following table provides further language designation codes not
identified in the preceding discussion. A [**complete
list**](http://lcweb.loc.gov/standards/iso639-2/englangn.html) of ISO
639-2 language codes is available.

>   ----------- -----------------------
>   Code        Language
>   **\@ALB**   in Albanian
>   **\@ARA**   in Arabic
>   **\@ARM**   in Armenian
>   **\@AZE**   in Azeri
>   **\@BEN**   in Bengali
>   **\@BUL**   in Bulgarian
>   **\@CHI**   in Chinese
>   **\@SCR**   in Croatian
>   **\@CZE**   in Czech
>   **\@DAN**   in Danish
>   **\@DUT**   in Dutch
>   **\@ENG**   in English
>   **\@EST**   in Estonian
>   **\@FIN**   in Finnish
>   **\@FRE**   in French
>   **\@GLA**   in Gaelic
>   **\@GER**   in German
>   **\@GRE**   in Greek (modern)
>   **\@HEB**   in Hebrew
>   **\@HIN**   in Hindi
>   **\@HUN**   in Hungarian
>   **\@ICE**   in Icelandic
>   **\@ITA**   in Italian
>   **\@JPN**   in Japanese
>   **\@JAV**   in Javanese
>   **\@KHM**   in Khmer
>   **\@KOR**   in Korean
>   **\@LIT**   in Lithuanian
>   **\@LAT**   in Latin
>   **\@LAV**   in Latvian
>   **\@MAL**   in Malayalam
>   **\@MON**   in Mongolian
>   **\@NOR**   in Norwegian
>   **\@POL**   in Polish
>   **\@POR**   in Portugese
>   **\@RUM**   in Romanian
>   **\@RUS**   in Russian
>   **\@SCC**   in Serbian
>   **\@SLO**   in Slovak
>   **\@SLV**   in Slovenian
>   **\@SPA**   in Spanish,  Castilian
>   **\@SWA**   in Swahili
>   **\@SWE**   in Swedish
>   **\@TAM**   in Tamil
>   **\@THA**   in Thai
>   **\@TIB**   in Tibetan
>   **\@TUR**   in Turkish
>   **\@UKR**   in Ukranian
>   **\@URD**   in Urdu
>   **\@VIE**   in Vietnamese
>   **\@WEL**   in Welsh
>   **\@XHO**   in Xhosa
>   **\@ZUL**   in Zulu
>   ----------- -----------------------
>
------------------------------------------------------------------------

\

[**Next Appendix**](guide.append2.html)

[**Previous Appendix**](guide.bibliog.html)

[**Table of Contents**](guide.toc.html)

[**Detailed Contents**](guide.toc.detailed.html)

[**Detailed Contents**](guide.toc.detailed.html)\
\
© Copyright 1999, 2002 David Huron
