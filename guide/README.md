
# Guidelines for editing user guide pages #


## Separate files for each chapter ##

Each chapter is placed in a separate directory staring with `ch` and then a two-digit
chapter number such as `ch04` or `ch27`.  The main content goes into a file called
`index.md`, which is a markdown file.

## Liquid variables ##

Here is an example liquid header for the markdown file:

```
---
sidebar:	toc
chapternav:	guide
author:		David Huron
creation-date:	1 Sep 1998 
revision-date:	3 Feb 2000
edit-date:	11 Apr 2020
vim:		ft=html
verovio:	"true"
permalink:	/guide/ch19/index.html
---
```

meaning of the variables:

sidebar
: This should be set to `toc`, which means display the table of contents in the sidebar.

chapternav: This should be set to `guide` which placed a next/previous chapter navigation tool at the top of the table of contents in the sidebar.

author: This should be set to the author of the page.  If there is more than one author (when the content is significantly altered from the original beyond editing), the multiple authors would be encoded as an array: `["Author 1", "Author 2"]`.

creation-date
: This is the date that the original HTML file for the page was created.

revision-date
: This is the date that the content of the page has significantly changed.

edit-date
: This is the date that the formatting of the page has change, or minor content changes have been made, such as spelling corrections.

verovio
: If the page includes a dynamically-generated musical example, then add this variable and set the value to `"true"` (where the quotes are required).

vim
: This is a vim variable for setting the format of the page for colorization (not used in the generation of the webpages for the website).

permalink
: This is the URL of the webpage on the website.  The files in the repository can change locations in the future, but the URL will remain the same as this variable.


## Chapter heading ##

The chapter heading should be in this form:

```html
<div class="chapter-heading">
<h1> Chapter 19 </h1>
<h1> Musical Contexts </h1>
</div>
```

## Code block markup ##

Code blocks (sections of code marked off from the text) should be in this format:

````
```bash
context -n 3 input
```
````

The code block is surrounded by lines with three back quotes.  For the first
backquote line, add the content type of the code block, which is `bash` in this
example.  For Humdrum data, use a data type of `humdrum`.  For plain text code
block, use `text`.

There should be an empty line before and after the backquote lines surrounding
the code block.

## Inline semantic markup ##

Use the following markup styles for various classes of text:


To encode the name of a Humdrum Tool called *name*:

```
<span class="tool">name</span>
```

The name of the tool goes in since the text content of the span.
This will be convertedinto a link to the man page for the tool when
the file is loaded.  If there are command-line arguments given to
the tool, then should be placed inside of the span after a space
separating them from the tool name; however, for these sorts
of cases, a code block encoding should be more appropriate.

------------------------------------------

Humdum data representations should be encoded as

```
<span class="rep">kern</span>
```

This will prefix the name of the representation with `**` and add
a link to the documentation for the representation.


------------------------------------------

Unix tools should be encoded in a similar manner:

```
<span class="unix">name</span>
```

------------------------------------------

To encode the name of a tool option:

```
<span class="option">a</span>
```

The dash prefix should not be added to the option name since this will
be added later with CSS styling.  If there is an argument for the option
it should be placed inside of the span after a space separating it from
the option name.

Optionally, the name of the command that takes the option(s) can
be given specified:

```
<span data-command="context" class="option">a</span>
```



## Section headings ##


Section headings should be converted from this format:

```
Heading
-------
```

To this format:

```
## Heading ##
```

Three empty lines should be give above and below the heading to make it more
visible when browsing through the markdown code for the page.


## Music examples ##

Music examples should be added using this template

```
**Example 19.1 NAME OF EXAMPLE **

{% include verovio.html
	source="guide-19-1"
	scale="65"
	pageWidth="1000"
	humdrum-min-height="475px"
%}

<script type="application/x-humdrum" id="guide-19-1">
**kern
*clefG2
=1
1c
=
*-
</script>
```

There are three parts to a notational figure: (1) The title of the figure, 
(2) an include of the `verovio.html` template file, and (3) a `script` element
that contains the Humdrum data to convert to notation.  The ID for the 
music should be in the form `guide-19-1` which means example 1 for chapter 19 in the 
guide.


## Cleanup script notes ##


```
[**census**](/tool/census)
```

Should be changed automatically to:

```
<span class="tool">census</span>
```


--------------------------------

Mdash:

```
\--
```

should be changed automatically to:

```
&mdash;
```



