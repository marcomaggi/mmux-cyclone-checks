# MMUX Cyclone Checks

## Introduction

This  package  installs  a  library for  Cyclone  Scheme  a  Scheme-to-C
compiler supporting the  language features as defined  in the 'Revised^7
Report  on Scheme';  the library  implements features  to organise  test
suites and it is derived from SRFI 78 "Lightweight testing".

The package targets POSIX systems.

The package uses the GNU Autotools.

This package  should work  with Cyclone  version 0.17.

## License

Copyright (c) 2009-2016, 2020 Marco Maggi `mrc.mgg@gmail.com`
Copyright (c) 2005-2006 Sebastian Egner `Sebastian.Egner@philips.com`
Modified by Derick Eddington for R6RS Scheme.
Modified by Marco Maggi for Cyclone Scheme.

Permission is hereby granted, free of  charge, to any person obtaining a
copy  of   this  software   and  associated  documentation   files  (the
``Software''), to  deal in  the Software without  restriction, including
without  limitation the  rights to  use, copy,  modify, merge,  publish,
distribute,  sublicense, and/or  sell  copies of  the  Software, and  to
permit persons  to whom the Software  is furnished to do  so, subject to
the following conditions:

The above copyright notice and  this permission notice shall be included
in all copies or substantial portions of the Software.

THE  SOFTWARE IS  PROVIDED  ``AS  IS'', WITHOUT  WARRANTY  OF ANY  KIND,
EXPRESS  OR IMPLIED,  INCLUDING BUT  NOT  LIMITED TO  THE WARRANTIES  OF
MERCHANTABILITY,    FITNESS    FOR     A    PARTICULAR    PURPOSE    AND
NONINFRINGEMENT. IN NO  EVENT SHALL THE AUTHORS OR  COPYRIGHT HOLDERS BE
LIABLE FOR ANY  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER  IN AN ACTION
OF CONTRACT,  TORT OR OTHERWISE, ARISING  FROM, OUT OF OR  IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


## Install

To install from a proper release tarball, do this:

```
$ cd mmux-cyclone-checks-0.1.0
$ mkdir build
$ cd build
$ ../configure
$ make
$ make check
$ make install
```

to inspect the available configuration options:

```
$ ../configure --help
```

The Makefile is designed to allow parallel builds, so we can do:

```
$ make -j4 all && make -j4 check
```

which,  on  a  4-core  CPU,   should  speed  up  building  and  checking
significantly.

The Makefile supports the DESTDIR  environment variable to install files
in a temporary location, example: to see what will happen:

```
$ make -n install DESTDIR=/tmp/mmux-cyclone-checks
```

to really do it:

```
$ make install DESTDIR=/tmp/mmux-cyclone-checks
```

After the  installation it is  possible to verify the  installed library
against the test suite with:

```
$ make installcheck
```

From a repository checkout or snapshot  (the ones from the Github site):
we  must install  the GNU  Autotools  (GNU Automake,  GNU Autoconf,  GNU
Libtool), then  we must first run  the script `autogen.sh` from  the top
source directory, to generate the needed files:

```
$ cd mmux-cyclone-checks
$ sh autogen.sh

```

After this  the procedure  is the same  as the one  for building  from a
proper release tarball, but we have to enable maintainer mode:

```
$ ../configure --enable-maintainer-mode [options]
$ make
$ make check
$ make install
```

When compiling the environment  variable `CYCLONE_FLAGS` is available to
hand options to the compiler:

```
$ make CYCLONE_FLAGS='-O3'
```

Shared libraries will be installed under `$libdir`.

## Usage

Read the documentation generated from  the Texinfo sources.  The package
installs the documentation  in Info format; we can  generate and install
documentation in HTML format by running:

```
$ make html
$ make install-html
```

## Credits

This package  was written by  Marco Maggi;  if this package  exists it's
because of the great GNU software tools that he uses all the time.  SRFI
78 is the  work of Sebastian Egner.  Cyclone is  an original creation of
Justin Ethier.

## Bugs, vulnerabilities and contributions

Bug  and vulnerability  reports are  appreciated, all  the vulnerability
reports  are  public; register  them  using  the  Issue Tracker  at  the
project's GitHub  site.  For  contributions and  patches please  use the
Pull Requests feature at the project's GitHub site.

## Resources

The latest release of this package can be downloaded from:

[https://bitbucket.org/marcomaggi/mmux-cyclone-checks/downloads](https://bitbucket.org/marcomaggi/mmux-cyclone-checks/downloads)

development takes place at:

[http://github.com/marcomaggi/mmux-cyclone-checks/](http://github.com/marcomaggi/mmux-cyclone-checks/)

and as backup at:

[https://bitbucket.org/marcomaggi/mmux-cyclone-checks/](https://bitbucket.org/marcomaggi/mmux-cyclone-checks/)

the documentation is available online:

[http://marcomaggi.github.io/docs/mmux-cyclone-checks.html](http://marcomaggi.github.io/docs/mmux-cyclone-checks.html)

the GNU Project software can be found here:

[http://www.gnu.org/](http://www.gnu.org/)

we can download Cyclone from:

[https://github.com/justinethier/cyclone](https://github.com/justinethier/cyclone)

