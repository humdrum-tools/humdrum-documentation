---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Humdrum Representation for Phonetic Sounds
==========================================

### REPRESENTATION

> **\*\*IPA** \-- representation for International Phonetic Alphabet

### DESCRIPTION

> The **\*\*IPA** scheme provides a means for representing phonetic
> information based on the International Phonetic Alphabet (IPA). This
> representation is a Humdrum adaptation of the ASCII transliteration
> scheme for IPA developed by Evan Kirshenbaum. The **\*\*IPA**
> representation permits the encoding of the basic phonetic constituents
> of spoken or sung utterances for several languages.
>
> Two types of data tokens are distinguished in **\*\*IPA**: phonetic
> segments and silences.
>
> Spans of silence are represented by the percent sign (%) appearing as
> an isolated token.
>
> Phonetic segment tokens typically encode syllables or single-syllable
> words. Each syllable consists of one or more successive phonemes,
> where each phoneme is signified by a single character with an optional
> modifier. The beginning of the token may include one of three stress
> indicators. A stressed syllable is signified by the apostrophe (\'). A
> less stressed syllable is signified by the comma (,). The absence of
> either the apostrophe or the comma indicates an unstressed syllable.
>
> In the case of tonally inflected languages (such as all Chinese
> dialects), numbers may follow indicating the type of tonal inflection.
> For example, in Mandarin, the number 1 indicates a high tone, the
> number 2 indicates a rising tone, the number 3 indicates a
> falling-rising tone, and the number 4 indicates a falling tone.
>
> Individual phonemes are represented according to the signifiers listed
> in the table given below. For example, the upper-case letter \`A\'
> signifies the \`aw\' vowel as in the standard American pronunciation
> of *l\\o\'a\\(ul\'\\o\'w\\(ul\', c\\o\'o\\(ul\'t* and
> *b\\o\'o\\(ul\'ther*. Any vowel or diphthong signifier can be modified
> by the subsequent presence of a tilde; the modified vowel is
> pronounced with open nasal passages \-- as in the French \"un bon vin
> blanc,\" which is encoded as:\
> \
>
> > ``
> >
> >   ---------
> >   \*\*IPA
> >   W\~
> >   bo\~
> >   va\~
> >   blA\~
> >   \*-
> >   ---------
> >
> In the case of consonants, two modifiers are possible. Any consonant
> signifier that is followed by a semicolon indicates that the front of
> the tongue is positioned as at the beginning of the word *yacht.* Any
> consonant signifier that is followed by a dash indicates that the
> consonant and the preceding *schwa* (see below) are pronounced as an
> independent syllable \-- as in the case of the words
> *batt\\o\'l\\(ul\'\\o\'e\\(ul\', mitt\\o\'e\\(ul\'\\o\'n\\(ul\'* and
> *eat\\o\'e\\(ul\'\\o\'n\\(ul\'*.

### FILE TYPE

> It is recommended that files containing predominantly `**IPA` data
> should be given names with the distinguishing \`.ipa\' extension.

### SIGNIFIERS

> The following table summarizes the **\*\*IPA** mappings of signifiers
> and signifieds. (§ All footnotes appear at the end of this table.)\
> \
>
>   -------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>   @              schwa§ as in (unaccented) *b\\o\'a\\(ul\'nan\\o\'a\\(ul\', c\\o\'o\\(ul\'llide, \\o\'a\\(ul\'lone*
>   V              (IPA symbol: \\(an); as in *h\\o\'u\\(ul\'t* or *h\\o\'u\\(ul\'mdr\\o\'u\\(ul\'m*
>   R              R\\(dd; as in *b\\o\'u\\(ul\'rn, op\\o\'e\\(ul\'\\o\'r\\(ul\'ation, d\\o\'i\\(ul\'\\o\'r\\(ul\'t, \\o\'u\\(ul\'\\o\'r\\(ul\'gent*
>   &              short a (IPA symbol: \\(ae); as in *m\\o\'a\\(ul\'t, m\\o\'a\\(ul\'p, m\\o\'a\\(ul\'d, g\\o\'a\\(ul\'g, sn\\o\'a\\(ul\'p, p\\o\'a\\(ul\'tch*
>   A              \\o\'a\\(..\' (IPA symbol: *a*); as in *b\\o\'o\\(ul\'ther, c\\o\'o\\(ul\'t*, and, with most American speakers,
>                  *f\\o\'a\\(ul\'ther, c\\o\'a\\(ul\'rt*
>   a              \\o\'a\\(de\'; *f\\o\'a\\(ul\'ther* as pronounced by speakers who do not rhyme it with *bother*.
>   E              short e (IPA symbol: \\(\*e or E); as in *g\\o\'e\\(ul\'t, b\\o\'e\\(ul\'d, p\\o\'e\\(ul\'ck, \\o\'e\\(ul\'dge*
>   i              long e (IPA symbol: \\o\'i\'); as in *b\\o\'e\\(ul\'\\o\'a\\(ul\'t, gr\\o\'e\\(ul\'\\o\'e\\(ul\'d, \\o\'e\\(ul\'venl\\o\'y\\(ul\', \\o\'e\\(ul\'\\o\'a\\(ul\'s\\o\'y\\(ul\'*
>   I              short i (IPA symbol: I or \\(\*i); as in *t\\o\'i\\(ul\'p, ban\\o\'i\\(ul\'sh, act\\o\'i\\(ul\'ve*
>   O              \\o\'o\\(de\' (IPA symbol: backward \`c\'); as in *l\\o\'a\\(ul\'\\o\'w\\(ul\', \\o\'a\\(ul\'ll, sh\\o\'a\\(ul\'\\o\'w\\(ul\'m*
>   W              oe digraph (IPA symbol: \\(oe); as in the French *b\\o\'o\\(ul\'\\o\'e\\(ul\'\\o\'u\\(ul\'f*, German *H\\o\'o\\(..\\(ul\'lle*
>   o              \\o\'o/\' digraph; as in the French *b\\o\'o\\(ul\'\\o\'e\\(ul\'\\o\'u\\(ul\'fs*, d\\o\'e\\(ul\'\\o\'u\\(ul\'x, German *fl\\o\'o\\(..\\(ul\'te*
>   u              \\o\'u\\(..\'; as in *r\\o\'u\\(ul\'le, y\\o\'o\\(ul\'\\o\'u\\(ul\'th, f\\o\'e\\(ul\'\\o\'w\\(ul\', \\o\'o\\(ul\'\\o\'o\\(ul\'ze*
>   H              \\o\'u\\(..\' (IPA symbol: upside & backwards \`h\'); as in French *n\\o\'u\\(ul\'ance*, *l\\o\'u\\(ul\'i*
>   U              \\o\'u\\(de\' (IPA symbol: \\(\*u or U or \\(\*w); as in *p\\o\'u\\(ul\'ll, w\\o\'o\\(ul\'\\o\'o\\(ul\'d, b\\o\'o\\(ul\'\\o\'o\\(ul\'k*
>   y              ue; as in the German *f\\o\'u\\(..\\(ul\'hren*, *\\o\'U\\(..\\(ul\'bung*
>   Y              UE; as in the German *Gl\\o\'u\\(..\\(ul\'ck*, *klavierst\\o\'u\\(..\\(ul\'ck*
>   *vowel*\~      following a vowel\* indicates a vowel or diphthong pronounced withopen
>                  nasal passages; as in the French \"un bon vin blanc\" (`W~ bo~ va~ blA~`)
>                  
>   b              b; as in *\\o\'b\\(ul\'a\\o\'b\\(ul\'y, ca\\o\'b\\(ul\'in, ro\\o\'b\\(ul\'*
>   d              d; as in *\\o\'d\\(ul\'ee\\o\'d\\(ul\', \\o\'d\\(ul\'ulcimer, a\\o\'dd\\(ul\'er*
>   f              f; as in *\\o\'f\\(ul\'eel, cu\\o\'f\\(ul\'\\o\'f\\(ul\'*, \\o\'f\\(ul\'orte
>   g              g; as in *\\o\'g\\(ul\'o, ba\\o\'g\\(ul\', \\o\'g\\(ul\'ift*
>   h              h; as in *\\o\'h\\(ul\'ear, a\\o\'h\\(ul\'ead, \\o\'h\\(ul\'orn*
>   k              k; as in *\\o\'c\\(ul\'oo\\o\'k\\(ul\', ta\\o\'k\\(ul\'\\o\'e\\(ul\', a\\o\'c\\(ul\'\\o\'h\\(ul\'\\o\'e\\(ul\'*
>   x              K (IPA symbol: \\o\'x\\(ul\'); as in the German *i\\o\'c\\(ul\'\\o\'h\\(ul\', Ba\\o\'c\\(ul\'\\o\'h\\(ul\'*
>   C              as in the German *i\\o\'c\\(ul\'\\o\'h\\(ul\', trauri\\o\'g\\(ul\'*
>   l              l; as in *\\o\'l\\(ul\'ibretto, \\o\'l\\(ul\'i\\o\'l\\(ul\'y, poo\\o\'l\\(ul\'*
>   L              gl (IPA symbol lambda); as in the Italian *passaca\\o\'g\\(ul\'\\o\'l\\(ul\'ia, a\\o\'g\\(ul\'\\o\'l\\(ul\'io*
>   m              m; as in *\\o\'m\\(ul\'usic, li\\o\'m\\(ul\'\\o\'b\\(ul\', ny\\o\'m\\(ul\'ph*
>   n              n; as in *i\\o\'n\\(ul\'o, \\o\'n\\(ul\'strument, ow\\o\'n\\(ul\'*
>   N              eng (IPA symbol: \`n\' with a tail); as in *si\\o\'n\\(ul\'\\o\'g\\(ul\', fi\\o\'n\\(ul\'\\o\'g\\(ul\'er, i\\o\'n\\(ul\'k*
>   J              enya; as in the Italian Lasa\\o\'g\\(ul\'\\o\'n\\(ul\'e, French *a\\o\'g\\(ul\'\\o\'n\\(ul\'eau, Dordo\\o\'g\\(ul\'\\o\'n\\(ul\'e*
>   p              p; as in *\\o\'p\\(ul\'iano, bee\\o\'p\\(ul\'er, li\\o\'p\\(ul\'*
>   r              r; as in *\\o\'r\\(ul\'eed, o\\o\'r\\(ul\'gan, ca\\o\'r\\(ul\'*
>   s              s; as in *\\o\'s\\(ul\'eek, \\o\'s\\(ul\'our\\o\'c\\(ul\'\\o\'e\\(ul\', ba\\o\'s\\(ul\'\\o\'s\\(ul\'*
>   S              sh \[\"esh\"\] (IPA symbol: \\o\'\\(It\\(Im\\(Ib\'); as in *\\o\'s\\(ul\'\\o\'h\\(ul\'y, cre\\o\'s\\(ul\'\\o\'c\\(ul\'endo, spe\\o\'c\\(ul\'\\o\'i\\(ul\'al*
>   t              t; as in *\\o\'t\\(ul\'empo, \\o\'t\\(ul\'ie, a\\o\'t\\(ul\'\\o\'t\\(ul\'acca*
>   T              th \[\"theta\"\] (IPA symbol: \\(\*h); as in *\\o\'t\\(ul\'\\o\'h\\(ul\'in, pa\\o\'t\\(ul\'\\o\'h\\(ul\', e\\o\'t\\(ul\'\\o\'h\\(ul\'er*
>   D              \\o\'t\\(ul\'\\o\'h\\(ul\' \[\"eth\"\] (IPA symbol: \\o\'d\~\') as in *\\o\'t\\(ul\'\\o\'h\\(ul\'en, ei\\o\'t\\(ul\'\\o\'h\\(ul\'er, smoo\\o\'t\\(ul\'\\o\'h\\(ul\'*
>   v              v; as in *\\o\'v\\(ul\'oice, \\o\'v\\(ul\'i\\o\'v\\(ul\'id, li\\o\'v\\(ul\'\\o\'e\\(ul\'*
>   w              w; as in *\\o\'w\\(ul\'e, a\\o\'w\\(ul\'ay*
>   j              j; as in *\\o\'y\\(ul\'es, \\o\'y\\(ul\'oung, c\\o\'u\\(ul\'e, on\\o\'i\\(ul\'\\o\'o\\(ul\'n*
>   z              z; as in *\\o\'z\\(ul\'one, rai\\o\'s\\(ul\'\\o\'e\\(ul\', \\o\'x\\(ul\'ylophone*
>   Z              zh \[\"yogh\"\\(sc\]; as in *mea\\o\'s\\(ul\'ure, vi\\o\'s\\(ul\'\\o\'i\\(ul\'on, a\\o\'z\\(ul\'ure*
>   *consonant*-   following a consonant (l-, n-, m-, or N-)\*\* indicates a consonant preceded
>                  by a *schwa* that is pronounced as an independent syllable; as in batt\\o\'l\\(ul\'\\o\'e\\(ul\',
>                  mitt\\o\'e\\(ul\'\\o\'n\\(ul\', eat\\o\'e\\(ul\'\\o\'n\\(ul\'\\fR
>   *consonant*;   following a consonant,§§ indicates that the front of the tongue is
>                  positioned as in the beginning of the word \`yard\'
>                  
>   \\\'           primary stress (should precede stressed sound)
>   ,              secondary stress (should precede stressed sound)
>   \%             silence signifier
>   -------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>
> *Summary of **\*\*IPA** Signifiers*
>
> -   The IPA *schwa* is notated as an upside-down \`e\'.
> -   The IPA symbol consists of a *schwa* with a hook.
> -   The IPA *yogh* is written like a flat-topped number \`3\' that has
>     been lowered in height.
> -   In IPA such vowels are marked by the presence of a tilde above the
>     vowel.
> -   In IPA such consonants are marked by the presence of a vertical
>     bar below the consonant.
> -   The IPA symbol consists of a superscript letter \`j\' either
>     following or hooked beneath the consonant.

### EXAMPLES

> Sample syllables and their corresponding **\*\*IPA** encodings are
> given below:
>
> > ``
> >
> >   ---------- ---------
> >   \*\*text   \*\*IPA
> >   book       bUk
> >   sing       sIN
> >   tag        t&g
> >   now        nAU
> >   loud       lAUd
> >   out        AUt
> >   site       saIt
> >   side       saId
> >   buy        baI
> >   job        dZAb
> >   gem        dZEm
> >   edge       EdZ
> >   join       dZOin
> >   judge      dZ\@dZ
> >   day        deI
> >   fade       feId
> >   date       deIt
> >   cape       keIp
> >   youth      juT
> >   few        fju
> >   mute       mjut
> >   cue        kju
> >   cure       kjUr
> >   coin       kOin
> >   troy       trOi
> >   bone       boUn
> >   know       noU
> >   beau       boU
> >   chin       tSIn
> >   \*-        \*-
> >   ---------- ---------
> >
> The following example encodes a sentence as might be spoken by
> American and British speakers.
>
> > ``
> >
> >   ---------- ------------ -----------
> >   \*\*text   \*\*IPA      \*\*IPA
> >   \*         \*American   \*British
> >   I          aI           aI
> >   hear       hir          hiV
> >   the        D@           DI
> >   sec-       \'sEk        \'sEk
> >   -re-       rI           r\^
> >   -ta-       ,t&          tri
> >   -ry        ri           .
> >   \*-        \*-          \*-
> >   ---------- ------------ -----------
> >
### PERTINENT COMMANDS

> The following Humdrum commands accept **\*\*IPA** encoded data as
> inputs:
>
> >   -- ------------- ------------------------------------------------------------
> >                    
> >      **formant**   identifies first two formant frequencies for common vowels
> >   -- ------------- ------------------------------------------------------------
> >
### TANDEM INTERPRETATIONS

> The following tandem interpretations can be used in conjunction with
> **\*\*IPA**:
>
> >   ------------------ ----------
> >   instrument         \*I
> >   instrument class   \*IC
> >   meter signatures   \*M6/8
> >   tempo              \*MM96.3
> >   ------------------ ----------
> >
> > *Tandem interpretations for **\*\*IPA***

### SEE ALSO

> ` formant (4)`

### LIMITS

> The International Phonetic Alphabet itself is not well suited to the
> representation of clicks commonly found in African languages, and this
> limitation is evident in the **\*\*IPA** representation. A more
> precise phonetic representation also developed by Evan Kirshenbaum
> might be adapted as the basis for a more refined Humdrum
> representation.

### REFERENCES

> This representation is a Humdrum adaptation of the ASCII
> transliteration scheme for IPA developed by Evan Kirshenbaum.

