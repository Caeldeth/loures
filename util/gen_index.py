#!/usr/bin/env python

import glob
import os
import sys

index = """
|%s|%s|
|%s|%s|""" % ("Author".center(20),
              "Work".center(130),
              ''.ljust(20,'-'),
              ''.ljust(130,'-'))

OCTAGRAM = "![Treasure of Temuair](../images/octagram.png) "
LOST = "![This work has been lost](../images/questionmark.png) "

header = open("{}.md".format(sys.argv[1])).read()

for fname in glob.glob(os.path.join('../', sys.argv[1], "*.md")):
    mdfile = os.path.basename(fname)
    # Author
    components = mdfile.split('-')
    if (len(components) < 2):
        continue
    f = open(fname)
    head = f.readline().replace('#','').lstrip().rstrip()
    content = ''.join(f.readlines())
    index = "{}\n| {} | {}{}{} |".format(index, components[0].ljust(18),
                                         ['', OCTAGRAM]['treasures of Temuair' in content],
                                         ['', LOST]['has been lost, and cannot be found' in content],
                                         ('[%s](%s)' % (head,mdfile)).ljust(128))

print header.format(index)
