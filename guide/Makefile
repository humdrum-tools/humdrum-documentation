
BIN=bin

all:
	@echo "Read the contents of the Makefile for make targets."

update: index tools reps

index:
	$(BIN)/makeSubheadingList  > chapter-headings.txt

tools:
	$(BIN)/makeToolList ch??/index.md > tools-by-heading.txt

reps:
	$(BIN)/makeRepList ch??/index.md > reps-by-heading.txt

spaces:
	$(BIN)/cleanSpaces ch??/index.md

# Clean-up targets that are probably not as useful anymore:

tool-span:
	$(BIN)/makeToolSpan ch??/index.md

unix-span:
	$(BIN)/makeUnixSpan ch??/index.md

option-span:
	$(BIN)/makeOptionSpan ch??/index.md

rep-span:
	$(BIN)/makeRepSpan ch??/index.md

headings:
	$(BIN)/convertHeading ch??/index.md

misc:
	$(BIN)/miscCleanup ch??/index.md

