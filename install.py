#!/usr/bin/env python
""" Script for Executing Bash Shell Script without chmod +x """

import subprocess

def main():
    current_working_dir = subprocess.check_output(["pwd"]).rstrip()
    runme(current_working_dir)
    print "Python:\tLooks like I'm done here...Python Out"

def make_fs():
    print ""

def runme(cwd):
    print "Python:\tHandoff to Bash"
    try:
        subprocess.call(["./scripts/bash-setup.sh", cwd])
    except OSError as e:
        print 'What we\'ve got here is a failure to communicate. ~ This Script'
        print "Sadly there was an error.  Hopefully you are smart enough to fix it"
        print "Probably something with the shell script, 'bash-setup.sh', here's a hint: "
        print e.errno
        print e.filename
        print e.strerror
    return

if __name__ == '__main__':
    main()
