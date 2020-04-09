

A perpetual problem with reference information pertains to the
language in which information is represented.  Humdrum provides
comprehensive methods for dealing with multiple languages and
translations.

Reference information can be encoded using the original language
of the source material or document as well a translations into other
languages.  The [ISO 639](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes)
standard can be used to indicate the language of a specific reference
record.  This standard provides two- and three-letter codes for
over 4000 living and historical languages.  For example, the ISO
standard codes for English, French and Swahili are `EN`, `FR` and
`SW` respectively.  The codes should be used in upper-case form,
and two-letter codes should be used when available; otherwise, use
the three-letter language code.

Humdrum allows any type of reference record to be encoded in any
or all of these languages. In general,  the *primary* reference
information is encoded using the original language of the source
material. Consider the case of a Friuli folksong (Friuli is a dialect
of Italian). The title of the song should be encoded in the original
language,  but it may also be useful to provide translations into
Italian and English.

The principal reference code indicating title is <a
class="linkref">OTL</a>.  Following the OTL reference code,  the
language of encoding can be indicated by appending an at-sign (`@`),
followed by the language code in upper-case. Here is the title given
in three languages:

```
!!!OTL@@FUR: Ai preit la biele stele
!!!OTL@IT: Ho pregato la buona stella
!!!OTL@EN: The Good Star
```

Notice the use of the double at-sign (i.e.,  `@@`, which indicates
that Friuli is the original language for this reference record type.
The title can also be encoded without any language designation:

```
!!!OTL: Ai preit la biele stele
```

This implies that the title is already rendered in the *primary*
reference language (but what language that language is is left
unspecified).
