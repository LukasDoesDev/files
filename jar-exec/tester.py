#!/usr/bin/python
import time
import sys

sys.stdout.write('hello!\n')
sys.stdout.flush()
s = sys.stdin.readline().strip()

errorTest = True
asyncOutTest = True
multilineTest = True

while s not in ['break', 'quit', 'stop']:
    sys.stdout.write(s.upper() + '\n')
    sys.stdout.flush()
    if multilineTest:
        sys.stdout.write('multiline test\nsecond line\n')
        sys.stdout.flush()
    if errorTest:
        sys.stderr.write('stderr test\n')
        sys.stderr.flush()
    if asyncOutTest:
        time.sleep(2)
        sys.stdout.write('async output test\n')
        sys.stdout.flush()
    s = sys.stdin.readline().strip()
