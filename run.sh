#!/bin/bash -x
./vampire4.2.2 --mode casc -t 1000 ./tptp/equiv12.tptp
./vampire4.2.2 --mode casc_sat -t 1000 ./tptp/equiv34.tptp
