

<tr>
<td>
<a name="COM"></a>
</td>
<td markdown="1">
<span class="reference-summary">
	Composer's name.
</span>

In some cases,  opinions differ regarding the best spelling of a
composer's name. If so, all common spellings should be given &mdash;
each alternative separated from the previous by a semicolon:

```
!!!COM: Chopin, Fryderyk; Chopin, Frédéric
```

With respect to accents, the default encoding should be UTF-8.
Refer to the discussion concerning the <a class="reflink">RLN</a>
reference record for alternate encodings.

If a work was composed by more than one composer,  then each
composer's name should appear on a separate <span
class="refname">COM</span> record with a number designation prior
to the colon. For example,

```
!!!COM1: Smith,  A.  
!!!COM2: Jones,  B.
```

The preferred order of the name should be `family-name, given-name`.  If the name
should not be alphabetized or shortened by the last name, then enclose the 
portion of the name for alphabetization or shortening in curly braces.  Placing
the last name in

```
!!!COM: {Josquin} des Prez
!!!COM: Prez, {Josquin} des
!!!COM: Ciccone, {Madonna} Louise
```

See also <a class="reflink">COL</a> reference records.


### Sub-categorizations ###

Reference IDs for composers can be given as a sub-categorization of 
<span class="refname">COM</span> entries,
such as
<span class="refname">COM-viaf-id</span> and <span class="refname">COM-viaf-url</span>
to encode the [VIAF](https://viaf.org) (Virtual International Authority File) IDs for the
composer:

```
!!!COM: Beethoven, Ludwig van
!!!COM-viaf-id: 32182557
!!!COM-viaf-url: http://viaf.org/viaf/32182557
```

Beethoven's grandfather would be:

```
!!!COM: Beethoven, Ludwig van
!!!COM-viaf-id: 80351209
!!!COM-viaf-url: http://viaf.org/viaf/80351209
```

To encode the Wikipedia page for a composer in a reference record, and with
an optional language qualification:

```
!!!COM: Beethoven, Ludwig van
!!!COM-wikipedia: https://en.wikipedia.org/wiki/Ludwig_van_Beethoven
!!!COM-wikipedia@DE: https://de.wikipedia.org/wiki/Ludwig_van_Beethoven
```

</td></tr>


