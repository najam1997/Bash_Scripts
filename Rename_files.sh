#!/bin/bash

find . -type f  -name '*a.txt' | grep -v .bin. | while read fname;
do echo mv $fname 'echo $fname | sed s/.txt'; done | sh -x
