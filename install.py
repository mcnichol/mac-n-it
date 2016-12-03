#!/usr/bin/env python
import subprocess

def main():
    current_working_dir = subprocess.check_output(["pwd"]).rstrip()
    runme(current_working_dir)
    print "Python:\t...Successful Install"

def make_fs():
    print ""

def runme(cwd):
    print "Python:\tHandoff to Bash"
    try:
        subprocess.call(["./scripts/base-setup.sh", cwd])
    except OSError as e:
        print 'What we\'ve got here is a failure to communicate. ~ This Script'
        print "Sadly there was an error.  Hopefully you are smart enough to fix it"
        print "Probably something with the shell script, 'base-setup.sh', here's a hint: "
        print "\n"
        print "Error Number: " + e.errno
        print "Filename: " + e.filename
        print "Message: " + e.strerror
    return

if __name__ == '__main__':
    main()
