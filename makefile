# build = valac -g --pkg gtk+-3.0 --pkg cairo --pkg gobject-introspection-1.0 --pkg webkit2gtk-4.0 --thread
build = valac -g --pkg gtk+-3.0 --pkg cairo --pkg gobject-introspection-1.0 --pkg webkit2gtk-4.0

all:
	python addFile.py ${source}.vala && \
	${build} ${source}.vala -o bin/${source}

# 这个结尾不能再有 ':'
%:%.vala
	$(eval _basename_ = $(basename $@)) # 这里两括号间不能有空格
	@echo $(_basename_)
	${build} ${_basename_}.vala -o bin/${_basename_}

test:
	@echo ${source}
