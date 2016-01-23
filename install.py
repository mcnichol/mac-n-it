#!/usr/bin/env python
""" Script for Executing Bash Shell Script without chmod +x """

import subprocess

def main():
    subprocess.call('./bada-bing.sh',shell=True)
    return 1

if __name__ == '__main__':
    main()
