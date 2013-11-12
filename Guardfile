#!/usr/bin/env python
from livereload.task import Task
from livereload.compiler import shell

Task.add('*.rst', shell('make html'))
Task.add('*/*.rst', shell('make html'))
Task.add('*.diag', shell('make png'))
Task.add('*/*.diag', shell('make png'))
