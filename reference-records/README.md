

# Guidelines for editing the reference record page #


## Separate files for each reference record entry ##

Each reference record entry on the page should be stored in a
separate file, such as `OTL.md` for the `!!!OTL:` entry on the page.
Note that the letter case of the filename should match that of the
actual reference record, and most reference records are all uppercase.
The individual files are loaded onto the main page with this liquid
code:

```
{% capture my_include %}{% include_relative COM.md %}{% endcapture %}{{ my_include | markdownify }}
```

This complicated structure is needed in order to process the markdown
formatting into HTML code by the jekyll program.  The above code
means to store the contents of the file into a liquid variable
called `my_include`, and then process and insert the contents of
the variable onto the page after it has been converted to HTML by
the markdownify filter.


### Non-alphanumeric character substitutions in filenames ###

When a reference record key contains a character other than a
letter or number, then it should be replaced with a number or
a letter.

The `#` symbol should be replaced with a lower case `n`, such as `PCn.md` for 
the `!!!PC#:` reference record key.



## Source text for each entry ##

You can start with the text for each reference entry in the
`index.md` file, copy-and-pasting it into the individual
reference record files.  Since this text is generated 
from an automatic conversion, refer to the 
[original HTML version](http://www.humdrum.org/Humdrum/guide.append1.html) of the page, as well as the
[original PDF version](http://ccarh.org/publications/manuals/humdrumuserguide/hug1998-chapter41-appendix1.pdf) of the page.  The HTML version may have additional
content that the PDF does not, so rely on the HTML
version when there are difference.



## Template for reference record entry files ##

Here is a template for each reference record file:

```
<tr>
<td>
<a name="COS"></a>
</td>
<td markdown="1">
<span class="reference-summary">SHORT DESCRIPTION OF REFERENCE RECORD</span>

LONG DESCRIPTION OF REFERENCE RECORD

</td>
</tr>
```

The `markdown="1"` attribute for the description cell of the table
row is used to allow for markdown formatting to be processed inside
of that element.  If there is no specific markdown formatting then
this is optional, but it is best to leave in case future editing
of the description adds markdown formatting.

The description has two components: a short and long description
of the reference record.  The short description should be enclosed
in a `<span>` element with a class attribute of `reference-summary`.
This is used on the reference record page to toggle between short
and long descriptions of the reference records, as well as generate
pop-up descriptions for the reference index at the top of the page.



## Hyperlinks to other reference record entries ##

In the long description section, hyperlinks to other reference
records on the page should be encoded like this:

```
<a class="linkref">OTL</a>
```

On the page, `!!!` will prefix the link and `:` will be appended
after the link.

If you want to display a reference record in full format, such as
`!!!OTL:`, then use this format:

```
<span class="linkname">OTL</a>
```

This will also add `!!!` before the name of the reference record,
and `:` after it.  This format would typically be used to refer to
the current reference record being described, and the hyperlink
version would be for a reference to a different record on the page.



