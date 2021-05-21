#!/bin/bash
find `pwd` -name "*.[ch]" -o -name "*.cpp" > cscope.files
cscope -bqR -i cscope.files
ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extra=+q
