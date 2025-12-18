#!/bin/bash
ip addr add 10.0.3.100/24 dev eth0 2>/dev/null || true
ip route add default via 10.0.3.1 2>/dev/null || true
