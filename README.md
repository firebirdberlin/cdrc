cdrc
====

Execute scripts when entering or leaving directories

Usage
=====

Add the following line to **.bash_profile**

    source path/to/cdrc.sh
    # to achieve cdrc to be re-executed in the same path when a new shell is opened
    cd .

Restart your bash. 

Now the command *cd* is senstitive for the existence of the two files **.cdrc_enter** and **.cdrc_leave**

The files can be placed within any directory. 
 * **.cdrc_enter**: contains things to do when entering this directory. 
 * **.cdrc_leave** contains thing to do when leaving the directory.  

Example

**.cdrc_enter**

    echo "Entering $PWD"
    export OCTOCAT_DIR=/home/octocat
    
**.cdrc_leave**

    echo "Leaving $PWD"
    unset OCTOCAT_DIR

 
