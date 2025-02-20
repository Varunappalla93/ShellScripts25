#!/bin/bash


name=""
wishes=""

USAGE()
{
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, specify the name (mandatory)"
    echo "-w, specify the wishes (eg: gd mrg)"
    echo "-h, display help and exit"
}


while getopts ":n:w:h" opt; do
    case $opt in 
        n) name="$OPTARG";;
        w) wishes="$OPTARG";;
        h|*) USAGE; exit;;
    esac
done

