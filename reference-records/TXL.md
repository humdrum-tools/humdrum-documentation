

<tr>
<td>
<a name="TXL"></a>
</td>
<td markdown="1">
<span class="reference-summary">
	Language of the <i>encoded</i> vocal/choral text.
</span>

The language should be encoded as an [ISO 639 language code](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes)
as described in the [language qualification](#languages) section of this page.

When the text is encoded in both an original language along with
translations (encoded in separate adjacent spines), prefix the original language(s)
with `@@` and the translated languages with `@`:

```
!!!TXL: DE
!!!TXO: @@DE, @EN, @FR
```

The langauge codes should be capitalized.


### Language tandem interpretations ###

The language of a text can also be enocoded within the data by
using the `*lang:` tandem interpretation to specify the current language
of the text:

```
**text
*lang:EN
This
is
in
English,
*lang:DE
aber
das
ist
auf
deutsch.
*-
```

</td>
</tr>


