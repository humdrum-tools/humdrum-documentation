

<tr>
<td>
<a name="CNT"></a>
</td>
<td markdown="1">
<span class="reference-summary">
	Composer's nationality.
</span>

For clarity, a language qualifier can be used to indicate the
language of the nationality word, although English is expected to
be the language for an unqualified <span class="refname">CNT</span>
record. A double at-sign (`@@`) can optionally be used to indicate
the word for the nationality in the composer's nations's language.

```
!!!CNT: German
!!!CNT@@DE: Deutscher
!!!CNT@EN: English
!!!CNT@RU: немец
```

However, note that the word for a nationality becomes complex when
expressed in many languages, such as [Deutscher](https://en.wiktionary.org/wiki/Deutscher#German)
for a male German, or [Deutsche](https://en.wiktionary.org/wiki/Deutsche#German)
for a female German, both of which are adjectives.
[Deutch](https://en.wiktionary.org/wiki/Deutsch#German) is the noun, but typically
this means the German language rather than the German nationality.

In cases where the composer changes nationality, successive nationalities 
should be listed in chronological order separated by semicolons:

```
!!!COM: Stravinsky, Igor
!!!CNT: Russian; French; American
```

When the composer is born with dual-citizenship, then separate the 
(first) nationalities with a comma, with the more strongly associated
nationality first (such as for country in which the composer was born
or where the composer lived longer).

</td></tr>


