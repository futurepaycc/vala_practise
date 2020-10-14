build = valac -g --pkg gtk+-3.0 --pkg cairo --pkg gobject-introspection-1.0

all:
	python addFile.py ${source}.vala && \
	${build} ${source}.vala -o bin/${source}

test:
	@echo ${source}
