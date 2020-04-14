---
vim: ts=3
toc: "false"
sidebar: main_sidebar
permalink: /guide/index.html
---

Humdrum Toolkit User Guide
============================

<div id="verbose">
<input id="chapter-headings" onclick="toggleHeadings();" type="checkbox"> Show chapter headings
</div>
<div id="index"></div>

<style>

ul.index {
	list-style: none;
}

#verbose {
	margin-top: -20px;
	white-space: nowrap;
	float: right;
	font-weight: bold;
}

.chapter-number {
	display: inline-block;
	width: 150px;
	color: black;
}

div.heading {
	padding-left: 85px;
}

div.heading i {
	padding-right: 5px;
}

div.heading-number {
	display: inline-block;
	width: 100px;
}

</style>

<script>
var guide = {{ site.data.guide | jsonify }}
console.log("GUIDE", guide);

generateIndex(guide, "#index");

function generateIndex(data, selector) {
	var element = document.querySelector(selector);
	if (!element) {
		console.log("Error: cannot find target", selector);
		return;
	}
	var output = "";
	output += "<ul class='index'>";
	for (var i=0; i<data.length; i++) {
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
		output += "<div style='display:none;' class='heading' data-chapter='ch" + counter + "'>";
		output += "</div>";
		output += "</li>";
	}
	output += "<ul class='index'>";
	element.innerHTML = output;
}

</script>

{% include_relative scripts-local.html %}

