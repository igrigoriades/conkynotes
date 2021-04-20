#!/bin/bash
FILE=~/.conkynotes
while getopts ":a:c" opt; do   #options are -a and -c. -a appends note, -c clears all the notes
  case $opt in
  	c)
	  > "${FILE}"
  	  ;;
    a)
      m=${OPTARG}
      echo  "[*] ${m}" >> $FILE
      ;;
    *)
      echo "Invalid option: -$OPTARG" >&2
      echo "Options are -a for append, -c for clear"
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
  killall conky && conky --daemonize
  
done
