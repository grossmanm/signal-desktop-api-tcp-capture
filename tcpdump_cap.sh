#!/bin/bash
sudo tcpdump -w output.pcap -tttt dst 3.128.195.20 or src 3.128.195.20 & 
TCPDUMP_PID=$!
echo "tcpdump started with PID $TCPDUMP_PID"
python3 signal_desktop_api.py
sleep 10
pid=$(ps -e | pgrep tcpdump)
echo $pid