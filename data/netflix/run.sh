#! /bin/bash

#../../singleGPU/cumf_sgd -g 1 -l 0.05 -a 0.08 -b 0.3 -u 1 -v 1 -x 1 -y 1 -s 1792 -k 128 -t 20 ./netflix_mm.bin

../../singleGPU/cumf_sgd_rpcs -g 1 -l 0.05 -a 0.08 -b 0.3 -u 1 -v 1 -x 1 -y 1 -s 1792 -k 128 -t 20 ./netflix_mm.bin
