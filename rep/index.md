---
sidebar: representations
vim: ts=3
permalink: /rep/index.html
---

Data Representations in Humdrum
===============================

<style>

table.index {
	color: {{site.primary_background_color}};
}
table.index tr {
	background: transparent;
	cursor: pointer;
}
table.index tr td {
	background: transparent;
}

</style>

<div id="index"></div>

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
	output += "<table class='index'>";
	for (var i=0; i<data.length; i++) {
		output += "<tr onclick=\"";
		var address = "'/rep/" + data[i].representation + "/index.html'";
		output += "window.location.href=" + address;
		output += "\"><td>";
		output += '<span style="font-weight:bold; ';
		output += 'display:inline-block; width:140px;">';
		output += "**" + data[i].representation;
		output += " ";
		output += "</span></td><td>";
		output += data[i].description;
		output += "</td></tr>";
	}
	output += "</table>";
console.log("output", output);
	element.innerHTML = output;

}

console.log("GOT HERE QQQ");

</script>




