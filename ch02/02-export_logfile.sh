#!/bin/bash

logfile="monday.dat"

echo "Before Export:"
./01.1-assign_logfile.sh

export logfile

echo "After Export:"
./01.1-assign_logfile.sh
