#!/usr/bin/env python

import sys
import re

for line in re.finditer(r"""The following packages were automatically installed and are no longer required:((\n  .*)*)""", sys.stdin.read(), re.MULTILINE):
    print(line.group(1))
