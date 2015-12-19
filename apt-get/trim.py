#!/usr/bin/env python

import sys
import re

line = sys.stdin.read().replace('\n', '').replace('  ', ' ')[1:]
print(line)
