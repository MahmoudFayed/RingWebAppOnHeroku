#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/app/ring/lib
/app/ring/bin/ring -cgi $1 $2 $3 