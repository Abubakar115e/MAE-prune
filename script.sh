#!/bin/bash
for port in $(seq 6000 7000); do
  echo -ne "\rChecking port $port"
  timeout 1 bash -c "</dev/tcp/127.0.0.1/$port" 2>/dev/null && continue || echo "Port $port is free"
done