#!/bin/bash

echo "Starting background process (sleep 60)..."
sleep 60 &

pid=$!

echo "Process started with PID: $pid"

echo ""
echo "Current jobs:"
jobs

echo ""
echo "Bringing job to foreground (press CTRL+Z to suspend)..."
fg %1

echo ""
echo "Sending job to background..."
bg %1

echo ""
echo "Killing process..."
kill $pid

echo ""
echo "Final jobs:"
jobs
