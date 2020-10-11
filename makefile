build = valac -g --pkg gtk+-3.0 --pkg cairo

all:
	python addFile.py ${source}.vala && \
	${build} ${source}.vala -o bin/${source}

test:
	@echo ${source}
