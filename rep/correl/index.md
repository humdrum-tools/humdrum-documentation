---
sidebar: representations
author: David Huron
creation-date: 'Tue Sep 1 10:17:29 EDT 1998'
revision-date: 'Thu Feb 3 10:31:10 EST 2000'
---


Statistical Correlations
===================================================

## REPRESENTATION ##

<span class="rep">correl</span> &mdash; statistical correlation representation

## DESCRIPTION ##

The <span class="rep">correl</span> representation is used to characterize the degree
of statistical correlation for successive moments. Data tokens for
<span class="rep">correl</span> decimal values ranging between -1 (perfect negative
correlation) and 1 (perfect positive correlation).

## FILE TYPE ##

It is recommended that files containing predominantly <span class="rep">correl</span> data
should be given names with the distinguishing \`.cor\' extension.

## SIGNIFIERS ##

The following table summarizes the <span class="rep">correl</span> mappings of
signifiers and signifieds.

----- -------------------------------------------------------
0-9   correlation values specified as integer or real value
.     decimal point; null token
\+    plus sign (optional)
\-    minus sign
----- -------------------------------------------------------

*Summary of <span class="rep">correl</span> Signifiers*

## EXAMPLES ##

A sample document is given below:

``

------------
\*\*correl
\*C:
\*M4/4
.
0.0
+0.3037
+.52
0.6
0.211
.
-.241
-0.17
-1
0.221
.
\*-
------------

Notice that melodic accent values can be either real or integer
values. Rests are represented by the single letter \`r\'.

## PERTINENT COMMANDS ##

The following Humdrum command produces <span class="rep">correl</span> data as output:

-- --------------------------------------- ----------------------------------------------------

<span class="tool">correl</span>   calculate numerical correlation between two spines
-- --------------------------------------- ----------------------------------------------------

## TANDEM INTERPRETATIONS ##

The following tandem interpretations can be used in conjunction with
**\*\*correl:**

------------------ ------------
meter signatures   `*M6/8`
key signatures     `*k[f#c#]`
key                `*c#:`
------------------ ------------

*Tandem interpretations for <span class="rep">correl</span>*

## SEE ALSO ##

` barlines, correl, **simil, simil`

