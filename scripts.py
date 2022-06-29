from os import mkdir, system
from os.path import join
from shutil import rmtree

dist = 'dist'
src = 'src'
domain = 'cristinaurasini.it'
main_elm = join(src, 'Main.elm')
elmjs = 'elm.js'
index = 'index.html'

# Create directory
rmtree(dist, ignore_errors=True)
mkdir(dist)

# Generate CNAME
with open(join(dist, 'CNAME'), 'x') as cname:
    cname.write(domain)

# Compile elm
system(f'elm make {main_elm} --output={join(dist, elmjs)}')

# Complete index.html
with open(join(src, index), 'r') as index_file:
    index_content = index_file.read()

formated_index = index_content.format(elmjs=elmjs)

with open(join(dist, index), 'x') as index_file:
    index_file.write(formated_index)
