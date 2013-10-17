Howto
=====

Generate HTML::

    # apt-get install --no-install-recommends python-docutils make
    $ make html

Generate PDF::

    # apt-get install --no-install-recommends texlive-xetex texlive-latex-recommended texlive-latex-extra lmodern fonts-linuxlibertine ttf-wqy-microhei
    $ make pdf

Use `livereload`_ to preview HTML, install `livereload browser plugin`_, and::

    # apt-get install --no-install-recommends python-pip
    $ pip install livereload
    $ make preview

.. _`livereload`: https://github.com/lepture/python-livereload
.. _`livereload browser plugin`: http://help.livereload.com/kb/general-use/browser-extension

Tested with `texlive 2013.20131010` on Debian unstable.

To use other CJK fonts, modify docutils.tex. For more info, read `xeCJK document`_.

.. _`xeCJK document`: http://mirrors.ctan.org/macros/xetex/latex/xecjk/xeCJK.pdf

Origins
=======

+------------------------------+----------------------------------------------------------+
| docutils.conf, docutils.tex  |  http://www.zlovezl.cn/articles/restructuredtext-to-pdf/ |
+------------------------------+----------------------------------------------------------+
| style.css                    |  https://bitbucket.org/cskeeters/rst2html-style/         |
+------------------------------+----------------------------------------------------------+
