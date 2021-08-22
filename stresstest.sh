#!/bin/bash

glmark2 > /home/jchad/scripts/log/glmark2.txt & stress -c 8 -i 2 -m 2 -d 2 -t 60 > /home/jchad/scripts/log/stress.txt &