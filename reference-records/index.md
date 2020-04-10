---
author: ["David Huron", "Craig Sapp"]
creation-date: 1 Sep 1998
revision-date: 10 Apr 2020
robots: all
sidebar: main_sidebar
title: "Humdrum reference records"
permalink: /reference-records/index.html
---

Reference Records
=================

{% capture x %}{% include_relative introduction.md %}{% endcapture %}{{ x | markdownify }}

<table class="key-index">
<tr>
<td width="100%">
<div id="reference-index"></div>
</td>
<td>
<div style="white-space:nowrap">
<input type="checkbox" style="display:inline-block; margin-right:10px;" id="description-style" onclick="switchDisplayStyle();"><label for="switchDisplayStyle">Short listing</label>
</div>
</td>
</tr>
</table>


## Authorship Information ##

<table class="reference">
{% capture x %}{% include_relative COM.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative COA.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative COS.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative COL.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative COC.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative CDT.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative CNT.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative LYR.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative LIB.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative LAR.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative LOR.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative TXO.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative TXL.md %}{% endcapture %}{{ x | markdownify }}
{% capture x %}{% include_relative TRN.md %}{% endcapture %}{{ x | markdownify }}
</table>


Recording Information
---------------------

Humdrum representations may encode information pertaining to sound
recordings (such as sound-based analyses). For information derived from
sound recordings the following reference records may be pertinent.

<a name ="RTL"></a>

**!!!RTL:** *Title of album*.

<a name ="RMM"></a>

**!!!RMM:** *Manufacturer or sponsoring company*. The company or
organization responsible for the release,  distribution, and/or
manufacturing of the recording.

<a name =""></a>

**!!!RC\#:** *Recording company\'s catalogue number*. The album\'s
numerical designation.

<a name ="RRD"></a>

**!!!RRD:** *Date of release*. The release date should be encoded using
the [`**date`](representations/date.rep.html) format described in the
*Humdrum Reference Manual*.

<a name ="RLC"></a>

**!!!RLC:** *Place of recording*. (Local language should be used.)

<a name ="RNP"></a>

**!!!RNP:** *Name of the producer*.

<a name ="RDT"></a>

**!!!RDT:** *Date of recording*. The date of recording should be encoded
using the [`**date`](representations/date.rep.html) format described in
the described in the *Humdrum Reference Manual*.

<a name =""></a>

**!!!RT\#:** *Track number*.

<a name ="Performance_Information"></a>

Performance Information
-----------------------

Humdrum representations may encode performance-activity information
rather than (or in addition to) score-related information. If the
representation encodes a given performance (such as a MIDI performance), 
then the following reference records may be pertinent.

<a name ="MPN"></a>

**!!!MPN:** *Performer\'s name*. If more than one performer was involved
in the work,  then each performer\'s name should appear on a separate
**!!!MPN:** record with a number designation prior to the colon.

<a name ="MPS"></a>

**!!!MPS:** *Suspected performer*. If more than one performer is
suspected,  each name should appear on a separate **!!!MPS:** record with
a number designation prior to the colon.

<a name ="MRD"></a>

**!!!MRD:** *Date of performance*. The performance date should be
encoded using the [`**date`](representations/date.rep.html) format
described in the *Humdrum Reference Manual*.

<a name ="MLC"></a>

**!!!MLC:** *Place of performance*. (Local language should be used.)

<a name ="MCN"></a>

**!!!MCN:** *Name of the conductor of the performance*.

<a name ="MPD"></a>

**!!!MPD:** *Date of first performance*. The date of first performance
should be encoded using the [`**date`](representations/date.rep.html)
format described in the described in the *Humdrum Reference Manual*.

<a name ="Identification_Information"></a>

Work Identification Information
-------------------------------

<a name ="OTL"></a>

**!!!OTL:**
[**Title.**](guide03.html#Searching_for_Reference_Information) The title
of the specific section or segment encoded in the current file. Titles
must be rendered in the original language,  e.g. *Le sacre du printemps.*
(Title translations are encoded using other reference records.)

<a name ="OTP"></a>

**!!!OTP:** *Popular Title*. This reference record encodes well-known or
alias titles such as \"Pathetique Sonata\".

<a name ="OTA"></a>

**!!!OTA:** *Alternative title*. This reference record encodes earlier
or alternate titles.

<a name ="OPR"></a>

**!!!OPR:** *Title of larger (or parent) work* from which the encoded
piece is a part. For example,  \"Gute Nacht\" (OTL) from *Winterreise*
(OPR).

<a name ="OAC"></a>

**!!!OAC:** *Act number*. For operas and musicals,  this reference record
encodes the act number as an Arabic (rather than Roman) numeral. The
number may be preceded by the word \"Act\" as in `Act 3`.

<a name ="OSC"></a>

**!!!OSC:** *Scene number*. For operas and musicals,  this reference
record encodes the scene number as an Arabic (rather than Roman)
numeral. The number may be preceded by the word \"Scene\" as in
`Scene 3`.

<a name ="OMV"></a>

**!!!OMV:** *Movement number*. For multi-movement works such as sonatas
and symphonies,  this reference record encodes the movement number as an
Arabic (rather than Roman) numeral. The number may be preceded by the
word \"Movement\" or \"mov.\" etc.,  as in `mov. 3`.

<a name ="OMD"></a>

**!!!OMD:** *Movement designation or movement name*. Typically movements
may be named according to the tempo (e.g. \"Allegro ma no troppo\") or
according to a style,  genre or form (e.g. \"Fugue\"), or according to a
programmatic title (e.g. \"In Full Flower\").

<a name ="OPS"></a>

**!!!OPS:** *Opus number*. The number may be preceded by the word
\"Opus\" as in `Opus 23`. Once again,  Arabic numerals are used.

<a name ="ONM"></a>

**!!!ONM:** *Number*. The number may be preceded by the abbreviations
\"No.\" or \"Nr.\" as in `No. 4`.

<a name ="OVM"></a>

**!!!OVM:** *Volume*. The volume number may be preceded by the
abbreviation \"Vol.\" as in `Vol. 2`. Arabic numbers are used.

<a name ="dedication"></a>

**!!!ODE:** *Dedication*. Name of person or organization to whom the
work is dedicated. If the work was dedicated to more than one person, 
then each dedicatee\'s name should appear on a separate **!!!ODE:**
record with a number designation prior to the colon.

<a name ="OCO"></a>

**!!!OCO:** *Commission*. Name of person or organization that
commissioned the work. If the work was commissioned by more than one
person,  then each commissioner\'s name should appear on a separate
**!!!OCO:** record with a number designation prior to the colon.

<a name ="OCL"></a>

**!!!OCL:** *Collector*. Name of person who collected or transcribed the
work. If the work was collected by more than one person,  then each
collector\'s name should appear on a separate **!!!OCL:** record with a
number designation prior to the colon.

<a name ="ONB"></a>

**!!!ONB:** *Free format note* related to the title or identity of the
encoded work. Nota bene. If more than one such note is encoded,  each
should appear on a separate **!!!ONB:** record with a number designation
prior to the colon.

<a name ="ODT"></a>

**!!!ODT:** *Date of composition*. The date (or period) of composition
should be encoded using the [`**date`](representations/date.rep.html) or
[`**Zeit`](representations/Zeit.rep.html) formats described in the
*Humdrum Reference Manual*. The `**date` and `**Zeit` formats provides a
highly refined representation,  including methods for representing
uncertainty,  approximation, and boundary dates (e.g. prior to \...,
after \...).

<a name ="country of composition"></a>

**!!!OCY:** *Country of composition*. Local names should be used,  such
as \`Espana\'.

<a name ="city of composition"></a>

**!!!OPC:** *City,  town or village of composition*. Local names should
be used,  such as \`Den Haag.\'

<a name ="Group_Information"></a>

Group Information
-----------------

<a name ="group"></a>

**!!!GTL:** *Group Title*. A logical collection of works such as the
\"London Symphonies\" by Haydn,  or the four concertos by Vivaldi forming
\"The Seasons\".

<a name ="GAW"></a>

**!!!GAW:** *Associated Work*. Some works are associated with other
works,  such as plays, novels, paintings, films, or other musical works.
E.g. Mendelssohn\'s Overture to Shakespeare\'s *Midsummer Night\'s
Dream*. This reference allows associated works to be explicitly
identified by author and title. E.g.

> ` !!!GAW: Stéphane Mallarmé,  L'Après-midi d'un faune; [The Afternoon of a Faun].`

<a name ="group"></a>

**!!!GCO:** *Collection designation*. This is a free-form text record
that can be used to identify a collection of pieces,  such as works
appearing in a compendium or anthology. E.g. Norton Scores,  Smithsonian
Collection,  Burkhart Anthology.

<a name ="Imprint_Information"></a>

Imprint Information
-------------------

<a name ="PUB"></a>

**!!!PUB:** *Publication status*. This reference record identifies
whether the document has ever been \"published\". One of the following
English terms may appear: `published` or `unpublished`.

<a name ="PPR"></a>

**!!!PPR:** *First publisher*. Name of the first publisher of the work.

<a name ="date of first publication"></a>

**!!!PDT:** *Date first published*. The date of publication should be
encoded using the [`**date`](representations/date.rep.html) format
described in the *Humdrum Reference Manual*.

<a name ="PPP"></a>

**!!!PPP:** *Place first published*. (Local language should be used.)

<a name =""></a>

**!!!PC\#:** *Publisher\'s catalogue number*. This should not be
confused with better known scholarly catalogues,  such as those of
Köchel,  Hoboken, etc.

<a name ="scholarly catalogue abbreviation and number"></a>

**!!!SCT:** *Scholarly catalogue abbreviation and number*. E.g. BWV 551

<a name ="SCA"></a>

**!!!SCA:** *Scholarly catalogue (unabbreviated) name*.
E.g.`Koechel 117`.

<a name ="SMS"></a>

**!!!SMS:** *Manuscript source name*. For unpublished sources,  the
manuscript source name.

<a name ="SML"></a>

**!!!SML:** *Manuscript location*. For unpublished sources,  the location
of the manuscript source.

<a name ="acknowledgement of manuscript access"></a>

**!!!SMA:** *Acknowledgement of manuscript access*. This reference
information may be used to encode a free format acknowledgement or note
of thanks to a given manuscript owner for scholarly or other access.

<a name ="Copyright_Information"></a>

Copyright Information
---------------------

<a name ="publisher of electronic edition"></a>

**!!!YEP:** *Publisher of electronic edition*. This reference identifies
the publisher of the electronic document.

<a name ="date and owner of electronic copyright"></a>

**!!!YEC:** *Date and owner of electronic copyright*. This reference
identifies the year and owner of the copyright for the electronic
document.

<a name ="date electronic edition released"></a>

**!!!YER:** Date electronic edition released.

<a name ="copyright message"></a>

**!!!YEM:** *Copyright message*. This record conveys any special text
related to copyright. It might convey a simple warning (e.g. \"All
rights reserved.\"),  convey registration or licensing information, or
indicate that the document is shareware.

<a name ="country of copyright"></a>

**!!!YEN:** *Country of copyright*. This reference identifies the
country in which the electronic document was created,  or where the
copyright was established. In effect,  it identifies the country under
whose laws the copyright declaration is to be interpreted.

<a name ="original document"></a>

**!!!YOR:** *Original document*. This reference identifies any original
source or sources from which encoded document was prepared. Note that
original documents may themselves be copyrighted,  and that permission
may be required in order to create an electronic derivative document.
Original documents may also have lapsed copyrights.

<a name ="YOO"></a>

**!!!YOO:** *Original document owner*. If the electronic document was
prepared from a copyrighted original document,  this reference identifies
the copyright owner of the original document. Note that unless the
electronic and original documents have the same owner,  some licensing
agreement or other legal arrangement is necessary in order to create an
electronic derivative document.

<a name ="YOY"></a>

**!!!YOY:** *Original copyright year*. If the electronic document was
prepared from a copyrighted original document,  this reference identifies
the year of copyright for the original document. Note that some
licensing agreement or other legal arrangement is necessary in order to
create an electronic derivative document.

<a name ="YOE"></a>

**!!!YOE:** *Original editor*. The editor of the original document from
which the electronic edition was prepared. Note that some licensing
agreement or other legal arrangement may be necessary in order to create
an electronic derivative document.

<a name ="electronic editor"></a>

**!!!EED:** *Electronic Editor*. Name of the editor of the electronic
document. If more than one editor was involved in the work,  then each
editor\'s name should appear on a separate **!!!EED:** record with a
number designation prior to the colon.

<a name ="encoder of electronic document"></a>

**!!!ENC:** *Encoder of the electronic document*. This reference
identifies the name of the person or persons who encoded the electronic
document. (Not to be confused with the electronic editor.) If more than
one encoder was involved in the work,  then each encoder\'s name should
appear on a separate **!!!ENC:** record with a number designation prior
to the colon.

<a name ="EMD"></a>

**!!!EMD:** *Document modification description*. This record type is
used to chronicle all modifications made to the original electronic
document. EMD records should indicate the date of modification,  the name
of the person making the modification,  and a brief description of the
type of modification made. For each successive modification,  a separate
**!!!EMD:** record should appear with a number designation prior to the
colon.

<a name ="electronic edition version"></a>

**!!!EEV:** *Electronic edition version*. This reference identifies the
specific editorial version of the work. e.g. Version 1.3g Only a single
**!!!EEV:** record can appear in a given electronic document.

<a name ="file number"></a>

**!!!EFL:** *File number*. Some files are part of a series or group of
related files. This record indicates that the current document is file
*x* in a group of *y* files. The two numbers are separated by a slash as
in:

> ` !!!EFL: 1/4`

<a name ="EST"></a>

**!!!EST:** *Encoding status*. This record indicates the current status
of the document as it is being produced. Free-format text may indicate
that the encoding is in-progress,  list tasks remaining, or indicate that
the encoding is complete. **!!!EST:** records are normally eliminated
prior to distribution of the document.

<a name ="checksum validation number"></a>

**!!!VTS:** *Checksum validation number*. This reference encodes the
checksum number for the file \-- excluding the **!!!VTS:** record
itself. When this record is eliminated from the file,  any POSIX.2
standard **cksum** command can be used to determine whether the file
originates with the publisher,  or whether it has been modified in some
way. (See the Humdrum **veritas** command described in Section 4.) Note
that this validation process is easily circumvented by malicious
individuals. For true security,  the checksum value should be compared
with a printed list of checksums provided by the electronic publisher.

<a name ="Analytic_Information"></a>

Analytic Information
--------------------

<a name ="collection"></a>

**!!!ACO:** *Collection designation*. This is a free-form text record
that can be used to identify a collection,  set, or group of related
works,  such as works appearing in a compendium or anthology. E.g. Norton
Scores,  Smithsonian Collection, Jones Anthology.

<a name ="form designation"></a>

**!!!AFR:** *Form designation*. This is a free-form text record that can
be used to identify the form (if appropriate) of the work. E.g. fuga, 
sonata-allegro,  passacaglia, rounded binary, rondo.

<a name ="genre designation"></a>

**!!!AGN:** *Genre designation*. This is a free-form text record that
can be used to identify the genre of the work. E.g. opera,  string
quartet,  barbershop quartet.

<a name ="style,  period, or type of work designation"></a>

**!!!AST:** *Style,  period, or type of work designation*. This is a
free-form text record that can be used to characterize the style, 
period,  or type of work. This reference can include any term or terms
deemed appropriate by the producer of the document. Designations might
include keywords or keyphrases such as: Baroque,  bebop, Ecole Notre
Dame,  minimalist, serial, reggae, slendro, heterophony, etc.

<a name ="mode classification"></a>

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

<a name ="metric classification"></a>

**!!!AMT:** *Metric Classification*. Meters for a file may be classified
as one of the following eight categories: `simple duple`, 
`simple triple`,  `simple quadruple`, `compound duple`,
`compound triple`,  `compound quadruple`, `irregular`, or `various`.

<a name ="instrumentation"></a>

**!!!AIN:** [**Instrumentation.**](guide.append2.html) This reference is
used to list all of the instruments (including voice) used in the work.
Instruments should be encoded using the abbreviations specified by the
`*I` tandem interpretation described in Appendix II. Instrument codes
must appear in alphabetical order separated by spaces. (Note that
alphabetical ordering is essential in order to facilitate searches for
specific combinations or subsets of instruments using the **grep**
command.) E.g.

> ` !!!AIN: clars corno fagot flt oboe`

<a name ="region designation"></a>

**!!!ARE:** *Geographical region of origin*. This reference identifies
the geographical location from which the work originates. Location
designations are encoded using the local language. The location begins
with the continent designation,  and becomes successively more refined.
If the information is available,  refinement can continue to suburban
district or even street address.

> ` !!!ARE: Europa,  Mitteleuropa, Deutschland, Wuerttemberg, Sindelfingen  !!!ARE: America, North America, United States of America, Ohio, Columbus`

<a name ="location designation"></a>

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

<a name ="Historical_Information"></a>

Historical and Background Information
-------------------------------------

<a name ="aural_history"></a>

**!!!HAO:** *Aural History*. This is a free-form text record used to
relay any story or stories about the origin,  purpose or background of
the work. This reference record is especially useful in
ethnomusicological materials,  where a particular story accompanies a
song. The story may be encoded using several successive HAO records.

<a name ="text_translation"></a>

**!!!HTX:** *Free-form Translation of Vocal Text*. This is a free-form
text record used to relay a non-literal translation of a vocal text.
This reference record is again especially useful in ethnomusicological
materials.

<a name ="Representation_Information"></a>

Representation Information
--------------------------

<a name ="RLN"></a>

**!!!RLN:** *ASCII language setting*. This reference identifies the
\"language\" code in which the file was encoded. This is applicable only
to computer platforms which provide \"extended ASCII\" text capabilities
(e.g. Danish or Spanish characters).

<a name ="RDF"></a>

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

<a name ="RDT"></a>

**!!!RDT:** *Date encoded*. This reference uses the Humdrum
[`**date`](representations/date.rep.html) format to identify the date(s)
when the document was encoded.

<a name ="RNB"></a>

**!!!RNB:** *Representation note*. This reference provides a free-format
text that conveys some document-specific note related to matters of
representation.

<a name ="RWG"></a>

**!!!RWG:** *Representation warning*. This reference may be used to
encode explicit warnings concerning the encoded material.

<a name ="Electronic_Citation"></a>

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


<a name="Language"></a>
<a name="Languages"></a>
<a name="language"></a>
<a name="languages"></a>

Accommodating Different Languages
---------------------------------

{% capture x %}{% include_relative language.md %}{% endcapture %}{{ x | markdownify }}



{% include_relative styles-local.html %}
{% include_relative scripts-local.html %}



