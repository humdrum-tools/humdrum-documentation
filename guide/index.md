---
vim: ts=3
toc: "false"
sidebar: main_sidebar
permalink: /guide/index.html
---

Humdrum Toolkit User Guide
============================

<div id="verbose">
Highlight chapters that mention 
<select onchange="processToolSelect();" id="tool-select">
<option value="">any</option>
</select> 
tool.
<input id="chapter-headings" onclick="toggleHeadings();" type="checkbox"> Show chapter headings
</div>
<div id="index"></div>

<script>
var guide = {{ site.data.guide | jsonify }}
CHAPTER_ELEMENTS = [];

//////////////////////////////
//
// generateIndex -- print a list of the chapters on the webpage.
//

function generateIndex(data, selector) {
	var element = document.querySelector(selector);
	if (!element) {
		console.log("Error: cannot find target", selector);
		return;
	}
	var output = "";
	output += "<ul class='index'>";
	var i;
	for (i=0; i<data.length; i++) {
		output += "<li>";
		var counter = data[i].chapter;
		if (counter < 10) {
			counter = "0" + counter;
		}
		output += "<a href=ch" + counter + ">";
		output += "<span class='chapter-number'>";
		output += "Chapter ";
		output += data[i].chapter;
		output += ": ";
		output += "</span>";
		output += data[i].title;
		output += "</a>";
		output += "<div style='display:none;' ";
		output += "class='heading' data-chapter='ch" + counter + "'>";
		output += "</div>";
		output += "</li>";
	}
	output += "</ul>";
	element.innerHTML = output;
	var list = element.querySelectorAll("ul.index > li");
	if (!list) {
		return;
	}
	var href;
	// console.log("LIST", list);
	var matches;
	var num;
	for (i=0; i<list.length; i++) {
		href = list[i].querySelector("a").getAttribute("href");
		// console.log("HREF", href);
		matches = href.match(/ch0?(\d+)/);
		if (matches) {
			num = parseInt(matches[1]);
			if (!CHAPTER_ELEMENTS[num]) {
				CHAPTER_ELEMENTS[num] = {};
			}
			CHAPTER_ELEMENTS[num].chapter = list[i];
			if (!CHAPTER_ELEMENTS[num].headings) {
				CHAPTER_ELEMENTS[num].headings = [];
				// These will be filled in later when
				// the headings are added to the page.
			}
		}
	}
}

generateIndex(guide, "#index");

</script>

{% include_relative scripts-local.html %}
{% include_relative styles-local.html %}

