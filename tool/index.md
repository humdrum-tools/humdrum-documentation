---
vim: ts=3
toc: "false"
sidebar: main_sidebar
permalink: /tool/index.html
---

Humdrum Tools
=============

Below is a list of tools available for processing data in the Humdrum format.

Select a specific category of tools: <span id="categories"></span>

<br/><br/>

<div id="index"></div>

<style>

ul.index {
	list-style: none;
}

td.tool-name {
	hyphens: none;
	white-space: nowrap;
}

</style>

<script>
// A list of the tools that will be shown in the command list
// is found in _data/tools.yml.  They are loaded here for 
// adding to the webpage via Javascript:
var tools = {{ site.data.tools | jsonify }}.tools
tools.sort(function(a, b) {
	if (!a.name) {
		reutrn -1;
	}
	if (!b.name) {
		reutrn -1;
	}
	return a.name.localeCompare(b.name);
});

generateIndex(tools, [], "#index");

generateCategoryList(tools, "#categories");

//////////////////////////////
//
// generateIndex --
//

function generateIndex(data, categories, selector) {

	console.log("CREATING TOOL INDEX FROM LIST:", data);

	var element = document.querySelector(selector);
	if (!element) {
		console.log("Error: cannot find target", selector);
		return;
	}

	var output = "";
	output += "<table class='tools'>";
	// output += "<tr><th>Tool</th><th>Description</th>";

	for (var i=0; i<data.length; i++) {

		var isGood = checkCategories(data[i].tags, categories);

		if (!isGood) {
			continue;
		}

		var command = data[i].name.replace(/^\s+/, "").replace(/\s+$/, "");
		if (!command) {
			continue;
		}

		url = null;
		if (data[i].url) {
			url = data[i].url;
		}

		var description = data[i].description;

		output += "<tr>";
		output += "<td class='tool-name'>";
		if (url) {
			output += "<a target='_blank' href='" + url + "'>";
		} else {
			output += "<a href='" + command + "'>";
		}
		output += command;
		output += "</a>";
		output += "</td>";
		output += "<td class='description'>";
		if (description) {
			output += " " + description;
		}
		output += "</td>";
		output += "</tr>\n";
	}
	output += "</table>\n";
	element.innerHTML = output;
}


//////////////////////////////
//
// generateCategoryList --
//

function generateCategoryList(tools, selector) {
	var element = document.querySelector(selector);
	if (!element) {
		console.log("Error: cannot find category list container element");
	}
	var i;
	var j;
	var list = {};
	
	var nondep = {};
	var dep = {};
	var hasdep;

	for (i=0; i<tools.length; i++) {
		var tags = tools[i].tags;
		if (!tags) {
			continue;
		}
		hasdep = 0;

		for (j=0; j<tags.length; j++) {
			list[tags[j]] = 1;
			if (tags[j] === "deprecated") {
				hasdep = 1;
			}
		}

		for (j=0; j<tags.length; j++) {
			if (hasdep) {
				dep[tags[j]] = 1;
			} else {
				nondep[tags[j]] = 1;
			}
		}

	}
	var keys = Object.keys(list);
	keys.sort();

	var output = "";
	output += "<select onchange='displayCategory()'>";
	output += "<option value=''>All categories</option>\n";
	for (i=0; i<keys.length; i++) {
		if (nondep[keys[i]]) {
			output += "<option value='" + keys[i] + "'>" + keys[i] + "</option>\n";
		}
	}
	output += "</select>\n";
	element.innerHTML = output;
}



//////////////////////////////
//
// displayCategory --
//

function displayCategory() {
	var element = document.querySelector("#categories select");
	if (!element) {
		return;
	}
	var category = element.value;
	console.log("CATEGORY IS ", category);

	generateIndex(tools, [category], "#index");
}


//////////////////////////////
//
// checkCategories --
//

function checkCategories(tags, categories) {
	var hasdep = 0
	var i;
	for (i=0; i<tags.length; i++) {
		if (tags[i] === "deprecated") {
			hasdep = 1;
			break;
		}
	}
	if ((!categories) || (categories.length == 0)) {
		if (hasdep) {
			return 0;
		} else {
			return 1;
		}
	}
	var cdep = 0;
	for (i=0; i<categories.length; i++) {
		if (categories[i] === "deprecated") {
			cdep = 1;
			break;
		}
	}
	if (hasdep && !cdep) {
		// Do not show deprecated tools unless explicitly requested.
		return 0;
	}
	for (i=0; i<tags.length; i++) {
		for (j=0; j<categories.length; j++) {
			if (tags[i] === categories[j]) {
				return 1;
			}
		}
	}
	return 0;
}


</script>


