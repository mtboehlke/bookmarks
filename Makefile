.SUFFIXES:

README.md: README.7
	mandoc -T markdown $< | ./filter.awk > $@
