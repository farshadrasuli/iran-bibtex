# -----------------------------------------------------------------------------
# Compile-all-tex-files-on-windows.py
#
#     This file provided by (c) Farshad Rasuli, 2023.
#
# E-Mail: <farshad.rasuli@gmail.com>
# <github.com/farshadrasuli/>
# <farshadrasuli.github.io/>
# 
# python 3.9.13
# -----------------------------------------------------------------------------

import os

tex_files = [f for f in os.listdir('./') if f.endswith('.tex') if not os.path.isdir(f)]

for file in tex_files:
    file_name = file[:-4]
    
    os.system("xelatex -synctex=1 -interaction=nonstopmode " + file)
    os.system("bibtex8 -W -c iran-bibtex-cp1256fa " + file_name)
    os.system("xelatex -synctex=1 -interaction=nonstopmode " + file)
    os.system("xelatex -synctex=1 -interaction=nonstopmode " + file)
    
    os.remove(file_name + '.log')
    os.remove(file_name + '.aux')
    os.remove(file_name + '.out')
    os.remove(file_name + '.synctex.gz')
    os.remove(file_name + '.bbl')
    os.remove(file_name + '.blg')
#
