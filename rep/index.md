---
vim: ts=3
permalink: /rep/index.html
---

Data Representations in Humdrum
===============================

<div id="index"></div>

<style>

ul.index {
	list-style: none;
}

</style>

<script>
var representations = {{ site.data.representations | jsonify }}
console.log("REPS", representations);

generateIndex(representations, "#index");


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
		output += "<a href='" + data[i].representation + "/index.html'>";
		output += "<span style='font-weight:bold; display:inline-block; width:140px;'>";
		output += "**" + data[i].representation;
		output += " ";
		output += "</span>";
		output += data[i].description;
		output += "</a>";
		output += "</li>";
	}
	output += "<ul class='index'>";
	element.innerHTML = output;
}

</script>


