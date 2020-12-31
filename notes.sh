#!/bin/bash
FILE=~/.conkynotes.txt
while getopts ":m:c" opt; do
  case $opt in
  	c)
	  > "${FILE}"
  	  ;;
    m)
      m=${OPTARG}
      echo  "[*] ${m}" >> .conkynotes.txt
      ;;
    *)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done



