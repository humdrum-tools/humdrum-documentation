---
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
description: "Appendix II (Instrumentation Codes)"
revision-date: 'Thu Feb 3 10:12:40 EST 2000'
---

Appendix II
===========

------------------------------------------------------------------------

Instrumentation Codes
=====================

------------------------------------------------------------------------

<a name ="Introduction"></a>

Introduction
------------

Humdrum provides standard voice and instrument names in order to
facilitate various tasks. Voice and instrument names are used both in
tandem interpretations, and in `AIN` reference records identifying the
instrumentation for a work (see [**Appendix
I**](guide.append1.html#AIN)).

Instrument tandem interpretations are used to identify the
instrumentation pertaining to a specified spine. The word \"instrument\"
is used in a broad sense and embraces vocal qualities and vocal types as
well as mechanical sound makers.

<a name ="Instrument_Groups"></a>

Three distinctions are currently made in Humdrum: *instrument name,*
*instrument class* and *instrument group.* The following table
identifies six pre-defined instrument classes:

>   ----------- -----------------------------------
>   `*ICvox`    voice
>   `*ICstr`    string instrument
>   `*ICww`     woodwind instrument
>   `*ICbras`   brass instrument
>   `*ICklav`   keyboard instrument
>   `*ICidio`   percussion instrument (idiophone)
>   ----------- -----------------------------------
>
The following table identifies five pre-defined instrument groups:

>   ----------- ---------------------------
>   `*IGacmp`   accompaniment instrument
>   `*IGsolo`   solo instrument
>   `*IGcont`   basso-continuo instrument
>   `*IGripn`   ripieno instrument
>   `*IGconc`   concertino instrument
>   ----------- ---------------------------
>
The following set of tables list currently defined instrument names.
When the name is used to form an instrument tandem interpretation the
instrument keyword is preceded by an asterisk and the upper-case letter
\``I`\'. For example, the instrument tandem interpretation for the
guitar is `*Iguitr`. If the guitar appears as an instrument in a `AIN`
Reference Record only the designation \``guitr`\' is used.

> <a name ="Voice_Range"></a>
>
> **Voice Range**

`*Isoprn`

soprano

`*Imezzo`

mezzo soprano

`*Icalto`

contralto

`*Itenor`

tenor

`*Ibarit`

baritone

`*Ibass`

bass

<a name ="Voice_Quality"></a>

**Voice Quality**

`*Ivox`

generic (undesignated) voice

`*Ifeme`

female voice

`*Imale`

male voice

`*Infant`

child\'s voice

`*Irecit`

recitativo

`*Ilyrsp`

lyric soprano

`*Idrmsp`

dramatic soprano

`*Icolsp`

coloratura soprano

`*Ialto`

alto

`*Ictenor`

counter-tenor

`*Iheltn`

Heldentenor, tenore robusto

`*Ilyrtn`

lyric tenor

`*Ibspro`

basso profondo

`*Ibscan`

basso cantante

`*Ifalse`

falsetto

`*Icastr`

castrato

<a name ="String_Instruments"></a>

**String Instruments**

`*Iarchl`

archlute; *archiluth* (Fr.); *liuto attiorbato/arcileuto/arciliuto*
(It.)

`*Iarpa`

harp; *arpa* (It.), *arpa* (Span.)

`*Ibanjo`

banjo

`*Ibiwa`

biwa

`*Ibguit`

electric bass guitar

`*Icbass`

contrabass

`*Icello`

violoncello

`*Icemba`

harpsichord; *clavecin* (Fr.); *Cembalo* (Ger.); *cembalo* (It.)

`*Icetra`

cittern; *cistre/sistre* (Fr.); *Cither/Zitter* (Ger.); *cetra/cetera*
(It.)

`*Iclavi`

clavichord; *clavicordium* (Lat.); *clavicorde* (Fr.)

`*Idulc`

dulcimer or cimbalom; *Cimbal* or Hackbrett (Ger.)

`*Ieguit`

electric guitar

`*Iforte`

fortepiano

`*Iguitr`

guitar; *guitarra* (Span.); *guitare* (Fr.); *Gitarre* (Ger.);
*chitarra* (It.)

`*Ihurdy`

hurdy-gurdy; variously named in other languages

`*Iliuto`

lute; *lauto, liuto leuto* (It.); *luth* (Fr.); *Laute* (Ger.)

`*Ikit`

kit; variously named in other languages

`*Ikokyu`

kokyu (Japanese spike fiddle)

`*Ikomun`

komun\'go (Korean long zither)

`*Ikoto`

koto (Japanese long zither)

`*Imando`

mandolin; *mandolino* (It.); *mandoline* (Fr.); *Mandoline* (Ger.)

`*Ipiano`

pianoforte

`*Ipipa`

Chinese lute

`*Ipsalt`

psaltery (box zither)

`*Iqin`

qin, ch\'in (Chinese zither)

`*Iquitr`

gittern (short-necked lute); *quitarre* (Fr.); *Quinterne* (Ger.)

`*Irebec`

rebec; *rebeca* (Lat.); *rebec* (Fr.); *Rebec* (Ger.)

`*Ibansu`

bansuri

`*Isarod`

sarod

`*Ishami`

shamisen (Japanese fretless lute)

`*Isitar`

sitar

`*Itambu`

tambura, tanpura

`*Itanbr`

tanbur

`*Itiorb`

theorbo; *tiorba* (It.); *tèorbe* (Fr.); *Theorb* (Ger.)

`*Iud`

ud

`*Iukule`

ukulele

`*Ivina`

vina

`*Iviola`

viola; *alto* (Fr.); *Bratsche* (Ger.)

`*Iviolb`

bass viola da gamba; *viole* (Fr.); *Gambe* (Ger.)

`*Iviold`

viola d\'amore; *viole d\'amour* (Fr.); *Liebesgeige* (Ger.)

`*Ivioln`

violin; *violon* (Fr.); *Violine* or *Geige* (Ger.); *violino* (It.)

`*Iviolp`

piccolo violin; *violino piccolo* (It.)

`*Iviolp`

piccolo violin; *violino piccolo* (It.)

`*Iviols`

treble viola da gamba; *viole* (Fr.); *Gambe* (Ger.)

`*Iviolt`

tenor viola da gamba; viole (Fr.); Gambe (Ger.)

`*Izithr`

zither; *Zither* (Ger.); *cithare* (Fr.); *cetra da tavola* (It.)

<a name ="Wind_Instruments"></a>

**Wind Instruments**

`*Iaccor`

accordion; *accordéon* (Fr.); *Akkordeon* (Ger.)

`*Iarmon`

harmonica; *armonica* (It.)

`*IbagpS`

bagpipe (Scottish)

`*IbagpI`

bagpipe (Irish)

`*Ibaset`

bassett horn

`*Icalam`

chalumeau; *calamus* (Lat.); *kalamos* (Gk.)

`*Icalpe`

calliope

`*Icangl`

english horn; *cor anglais* (Fr.)

`*Ichlms`

soprano shawm, chalmeye, shalme, etc.; *chalemie* (Fr.); *ciaramella*
(It.)

`*Ichlma`

alto shawm, chalmeye, shalme, etc.

`*Ichlmt`

tenor shawm, chalmeye, shalme, etc.

`*Iclars`

soprano clarinet (in either B-flat or A); *clarinetto* (It.)

`*Iclarp`

piccolo clarinet

`*Iclara`

alto clarinet (in E-flat)

`*Iclarb`

bass clarinet (in B-flat)

`*Icor`

horn; *cor* (Fr.); *corno* (It.); *Horn* (Ger.)

`*Icornm`

cornemuse; French bagpipe

`*Icorno`

cornett (woodwind instr.); *cornetto* (It.); *cornaboux* (Fr.); *Zink*
(Ger.)

`*Icornt`

cornet (brass instr.); *cornetta* (It.); *cornet à pistons* (Fr.);
*Cornett* (Ger.)

`*Ictina`

concertina; *concertina* (Fr.); *Konzertina* (Ger.)

`*Ifagot`

bassoon; *fagotto* (It.)

`*Ifag_c`

contrabassoon; *contrafagotto* (It.)

`*Ifife`

fife

`*Iflt`

flute; *flauto* (It.); *Flöte* (Ger.); *flûte* (Fr.)

`*Iflt_a`

alto flute

`*Iflt_b`

bass flute

`*Ifltds`

soprano recorder; *flûte à bec, flûte douce* (Fr.); *Blockflöte* (Ger.);
*flauto dolce* (It.)

`*Ifltdn`

sopranino recorder

`*Ifltda`

alto recorder

`*Ifltdt`

tenor recorder

`*Ifltdb`

bass recorder

`*Iflugh`

flugelhorn

`*Ihichi`

hichiriki (Japanese double reed used in gagaku)

`*Ikrums`

soprano crumhorn; *Krummhorn/Krumbhorn* (Ger.); *tournebout* (Fr.)

`*Ikruma`

alto crumhorn

`*Ikrumt`

tenor crumhorn

`*Ikrumb`

bass crumhorn

`*Inokan`

nokan (Japanese flute for the no theatre)

`*Ioboe`

oboe; *hautbois* (Fr.); *Hoboe, Oboe* (Ger.): *oboe* (It.)

`*IoboeD`

oboe d\'amore

`*Iocari`

ocarina

`*Iorgan`

pipe organ; *organum* (Lat.); *organo* (It.); *orgue* (Fr.); *Orgel*
(Ger.)

`*Ipanpi`

panpipe

`*Ipicco`

piccolo flute

`*Ipiri`

Korean p\'iri

`*Iporta`

portative organ

`*Irackt`

racket; *Rackett* (Ger.); *cervelas* (Fr.)

`*Ireedo`

reed organ

`*Isarus`

sarrusophone

`*IsaxN`

sopranino saxophone (in E-flat)

`*IsaxS`

soprano saxophone (in B-flat)

`*IsaxA`

alto saxophone (in E-flat)

`*IsaxT`

tenor saxophone (in B-flat)

`*IsaxR`

baritone saxophone (in E-flat)

`*IsaxB`

bass saxophone (in B-flat)

`*IsaxC`

contrabass saxophone (in E-flat)

`*Ishaku`

shakuhachi

`*Isheng`

mouth organ (Chinese)

`*Isho`

mouth organ (Japanese)

`*IsxhS`

soprano saxhorn (in B-flat)

`*IsxhA`

alto saxhorn (in E-flat)

`*IsxhT`

tenor saxhorn (in B-flat)

`*IsxhR`

baritone saxhorn (in E-flat)

`*IsxhB`

bass saxhorn (in B-flat)

`*IsxhC`

contrabass saxhorn (in E-flat)

`*Itromt`

tenor trombone; *trombone* (It.); *trombone* (Fr.); *Posaune* (Ger.)

`*Itromb`

bass trombone

`*Itromp`

trumpet; *tromba* (It.); *trompette* (Fr.); *Trompete* (Ger.)

`*Ituba`

tuba

`*Izurna`

zurna

<a name ="Percussion_Instruments"></a>

**Percussion Instruments**

`*Ibdrum`

bass drum (kit)

`*Icampn`

bell; *campana* (It.); *cloche* (Fr.); *campana* (Span.)

`*Icaril`

carillon

`*Icasts`

castanets; *castañetas* (Span.); *castagnette* (It.)

`*Ichime`

chimes

`*Iclest`

celesta; *céleste* (Fr.)

`*Icrshc`

crash cymbal (kit)

`*Ifingc`

finger cymbal

`*Iglock`

glockenspiel

`*Igong`

gong

`*Imarac`

maracas

`*Imarim`

marimba

`*Ipiatt`

cymbals; *piatti* (It.); *cymbales* (Fr.); *Becken* (Ger.); *kymbos*
(Gk.)

`*Iridec`

ride cymbal (kit)

`*Isdrum`

snare drum (kit)

`*Ispshc`

splash cymbal (kit)

`*Isteel`

steel-drum, tinpanny

`*Itabla`

tabla

`*Itambn`

tambourine, timbrel; *tamburino* (It.); *Tamburin* (Ger.)

`*Itimpa`

timpani; *timpani* (It.); *timbales* (Fr.); *Pauken* (Ger.)

`*Itom`

tom-tom drum

`*Itrngl`

triangle; *triangle* (Fr.); *Triangel* (Ger.); *triangolo* (It.)

`*Ivibra`

vibraphone

`*Ixylo`

xylophone; *xylophone* (Fr.); *silofono* (It.)

<a name ="Keyboard_Instruments"></a>

**Keyboard Instruments**

`*Iaccor`

accordion; *accordéon* (Fr.); *Akkordeon* (Ger.)

`*Icaril`

carillon

`*Icemba`

harpsichord; *clavecin* (Fr.); *Cembalo* (Ger.); *cembalo* (It.)

`*Iclavi`

clavichord; *clavicordium* (Lat.); *clavicorde* (Fr.)

`*Iclest`

celesta; *céleste* (Fr.)

`*Iforte`

fortepiano

`*Ihammd`

Hammond electronic organ

`*Iorgan`

pipe organ; *orgue* (Fr.); *Orgel* (Ger.); *organo* (It.); *organo*
(Span.); *organum* (Lat.)

`*Ipiano`

pianoforte

`*Iporta`

portative organ

`*Ireedo`

reed organ

`*Irhode`

Fender-Rhodes electric piano

`*Isynth`

keyboard synthesizer

------------------------------------------------------------------------


[**Previous Appendix**](guide.append1.html)

[**Table of Contents**](guide.toc.html)

[**Detailed Contents**](guide.toc.detailed.html)\
\
© Copyright 1999 David Huron
