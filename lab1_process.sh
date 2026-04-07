#!/bin/bash

echo "Parent PID: $$"

# Create child process
sleep 20 &

echo "Child PID: $!"

echo "Process Table:"
ps -o pid,ppid,cmd

echo ""
echo "Child processes of this shell:"
ps --ppid $$
