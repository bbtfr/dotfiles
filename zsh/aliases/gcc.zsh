alias gcc.use.42="""
ln -f /usr/local/bin/c++-4.2 /usr/local/bin/c++
ln -f /usr/local/bin/cpp-4.2 /usr/local/bin/cpp
ln -f /usr/local/bin/g++-4.2 /usr/local/bin/g++
ln -f /usr/local/bin/gcc-4.2 /usr/local/bin/gcc
rm -f /usr/local/bin/gcc-ar
rm -f /usr/local/bin/gcc-nm
rm -f /usr/local/bin/gcc-ranlib
ln -f /usr/local/bin/gcov-4.2 /usr/local/bin/gcov
ln -f /usr/local/bin/gfortran-4.2 /usr/local/bin/gfortran
"""

alias gcc.use.49="""
ln -f /usr/local/bin/c++-4.9 /usr/local/bin/c++
ln -f /usr/local/bin/cpp-4.9 /usr/local/bin/cpp
ln -f /usr/local/bin/g++-4.9 /usr/local/bin/g++
ln -f /usr/local/bin/gcc-4.9 /usr/local/bin/gcc
ln -f /usr/local/bin/gcc-ar-4.9 /usr/local/bin/gcc-ar
ln -f /usr/local/bin/gcc-nm-4.9 /usr/local/bin/gcc-nm
ln -f /usr/local/bin/gcc-ranlib-4.9 /usr/local/bin/gcc-ranlib
ln -f /usr/local/bin/gcov-4.9 /usr/local/bin/gcov
ln -f /usr/local/bin/gfortran-4.9 /usr/local/bin/gfortran
"""

alias gcc.use.system="""
rm -f /usr/local/bin/c++
rm -f /usr/local/bin/cpp
rm -f /usr/local/bin/g++
rm -f /usr/local/bin/gcc
rm -f /usr/local/bin/gcc-ar
rm -f /usr/local/bin/gcc-nm
rm -f /usr/local/bin/gcc-ranlib
rm -f /usr/local/bin/gcov
rm -f /usr/local/bin/gfortran
"""
