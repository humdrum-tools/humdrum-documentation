

Reference records are formal ways of encoding "library-type"
information pertaining to a Humdrum document. Reference records
provide standardized ways of encoding bibliographic information
that is suitable for computer-based access to metadata about the
digital score.

Humdrum reference records lines start with three exclamation marks
(`!!!`),  followed by a multi-letter reference 
code, then an optional number, then an optional dash and sub-key,
then an optional `@` or `@@` and [language qualification](#languages),
then a colon ending the reference key, and finally some textual
content for the record:

```
!!!COM: The composer
!!!OTL: The title
!!!OTL2: The second title
!!!OTL@DE: The title translated into German
!!!OTL@@JP: The title in original language of Japanese.
!!!OTL-rev: The revised title (where "rev" is an informal sub-categorization)
!!!OTL3-sub@@HAW: The third subtitle in the original language of Hawaiian.
```

Standardized reference records use upper-case letters and the `#`
character.  Informal or user-created reference records should
preferably use lower-case letters, or start with a lower-case letter
in order to avoid future conflicts with future standardized reference
records.  Reference record keys must only use letters and the `#`
character as well as the underscore (`_`).  Spaces are specifically
not allowed, so use `_` as a replacement for spaces if needed when
creating non-standardized reference records.  Dashes are also allowed,
but note that these are typically used for sub-categorizations of a
core reference record type.

Over 80 reference codes are pre-defined in Humdrum and are grouped
by category below.  You can also click on a reference record name
in the following list to jump directory to the description of a
particular reference record, or mouseover the name to see a brief
description of the reference record.
