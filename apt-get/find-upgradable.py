#!/usr/bin/env python

import sys
import re

for line in re.finditer(r"""The following packages will be upgraded:((\n  .*)*)""", sys.stdin.read(), re.MULTILINE):
    print(line.group(1))
