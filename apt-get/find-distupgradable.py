#!/usr/bin/env python

import sys
import re

for line in re.finditer(r"""The following packages have been kept back:((\n  .*)*)""", sys.stdin.read(), re.MULTILINE):
    print(line.group(1))
