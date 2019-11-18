from os.path import join, dirname
from vunit import VUnit

src_path = dirname(__file__)
sim_path = join(src_path, 'simulation/modelsim')

vu = VUnit.from_argv()
vu.add_osvvm()
vu.add_array_util()

vu.add_library("lib").add_source_files([
    join(src_path, '*.vhd'),
    join(sim_path, '*.vht')
])

vu.main()