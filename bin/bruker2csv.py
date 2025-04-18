#!/usr/bin/env python

from brukeropus import read_opus
import sys

data = read_opus(sys.argv[1])
for x, y in zip(data.sm.x, data.sm.y):
    print(f"{x}, {y}");
