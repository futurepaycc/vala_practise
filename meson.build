project('vala app', 'vala', 'c')

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk+-3.0'),
]

sources1 = files('hello1.vala')
executable('hello1', sources1, dependencies: dependencies)

sources_hello2 = files('hello2.vala')
executable('hello2', sources_hello2, dependencies: dependencies)

sources_cairo1 = files('cairo1.vala')
executable('cairo1', sources_cairo1, dependencies: dependencies)