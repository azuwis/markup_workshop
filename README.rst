Howto
=====

To generate HTML::

    # apt-get install --no-install-recommends python-docutils make
    $ make html

To generate PDF::

    # apt-get install --no-install-recommends texlive-xetex texlive-latex-recommended texlive-latex-extra lmodern fonts-linuxlibertine ttf-wqy-microhei
    $ make pdf

Use `Livereload <https://github.com/lepture/python-livereload>`_ to preview HTML::

    # apt-get install --no-install-recommends python-pip
    $ pip install livereload
    $ make preview

Tested with `texlive 2013.20131010` on Debian unstable.

To use other CJK fonts, modify docutils.tex. For more info, read http://mirrors.ctan.org/macros/xetex/latex/xecjk/xeCJK.pdf

Origins
=======

+------------------------------+----------------------------------------------------------+
| docutils.conf, docutils.tex  |  http://www.zlovezl.cn/articles/restructuredtext-to-pdf/ |
+------------------------------+----------------------------------------------------------+
| style.css                    |  https://bitbucket.org/cskeeters/rst2html-style/         |
+------------------------------+----------------------------------------------------------+
