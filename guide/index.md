---
vim: ts=3
sidebar: main_sidebar
permalink: /guide/index.html
---

Humdrum Toolkit User Guide
============================

<div id="index"></div>

<style>

ul.index {
	list-style: none;
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
		output += "<span style='display:inline-block; width:150px;'>";
		output += "Chapter ";
		output += data[i].chapter;
		output += ": ";
		output += "</span>";
		output += data[i].title;
		output += "</a>";
		output += "</li>";
	}
	output += "<ul class='index'>";
	element.innerHTML = output;
}

</script>


