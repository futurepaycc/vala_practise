project('vala app', 'vala', 'c')

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk+-3.0'),
    dependency('webkit2gtk-4.0'),
    dependency('gobject-introspection-1.0'),
]

sources1 = files('hello1.vala')
executable('hello1', sources1, dependencies: dependencies)

sources_hello2 = files('hello2.vala')
executable('hello2', sources_hello2, dependencies: dependencies)

sources_cairo1 = files('cairo1.vala')
executable('cairo1', sources_cairo1, dependencies: dependencies)

sources_glade1 = files('glade1.vala')
executable('glade1', sources_glade1, dependencies: dependencies)

sources_gi1 = files('gi1.vala')
executable('gi1', sources_gi1, dependencies: dependencies)

sources_webkit1 = files('webkit1.vala')
executable('webkit1', sources_webkit1, dependencies: dependencies)

sources_readfile1 = files('readfile1.vala')
executable('readfile1', sources_readfile1, dependencies: dependencies)