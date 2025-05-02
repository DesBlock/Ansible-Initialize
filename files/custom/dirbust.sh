#!/bin/bash
OUTPUT_DIR=$1
cat /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt \
/usr/share/seclists/Discovery/Web-Content/raft-medium-files.txt \
/usr/share/seclists/Discovery/Web-Content/raft-medium-directories.txt | sort -u | shuf > "$OUTPUT_DIR"