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
        \?) echo "Invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        h|*) USAGE; exit;;
        :) USAGE; exit;;
    esac
done

