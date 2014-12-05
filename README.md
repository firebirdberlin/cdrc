cdrc
====

Execute scripts when entering or leaving directories

Usage
=====

Add the following line to **.bash_profile**

    source path/to/cdrc.sh

Restart your bash. 

Now the command *cd* is sentitive for the existance of two files **.cdrc_enter** and **.cdrc_leave**

The files can be place in any directory. 
 * **.cdrc_enter**: contains things to do when entering this directory. 
 * **.cdrc_leave** contains thing to do when leaving the directory.  

Example

**.cdrc_enter**

    echo "Entering $PWD"
    export OCTOCAT_DIR=/home/octocat
    
**.cdrc_leave**

    echo "Leaving $PWD"
    unset OCTOCAT_DIR

 
