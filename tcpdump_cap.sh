#!/bin/bash
sudo tcpdump -w output.pcap -tttt & 
TCPDUMP_PID=$!
echo "tcpdump started with PID $TCPDUMP_PID"
python3 signal_desktop_api.py
echo $pid
sudo kill -9 $TCPDUMP_PID