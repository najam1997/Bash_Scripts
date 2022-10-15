#!/bin/sh

find home/kali/Desktop -type f -size +1M -print0 | xargs -0 ls -l
