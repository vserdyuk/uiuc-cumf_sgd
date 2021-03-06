#! /bin/bash

../../singleGPU/cumf_sgd -g 3 -l 0.05 -a 0.08 -b 0.3 -u 1 -v 1 -x 1 -y 1 -s 1792 -k 128 -t 20 ./netflix_mm.bin

# ../../singleGPU/cumf_sgd_mom -g 1 -l 0.05 -a 0.08 -b 0.3 -r 1.0 -u 1 -v 1 -x 1 -y 1 -s 1792 -k 128 -t 20 ./netflix_mm.bin

# ../../singleGPU/cumf_sgd_rpcs_fast -g 1 -l 0.05 -a 0.08 -b 0.3 -u 1 -v 1 -x 1 -y 1 -s 1792 -k 128 -t 20 ./netflix_mm.bin

# ../../singleGPU/cumf_sgd_rpcs_tl -g 1 -l 0.05 -a 0.08 -b 0.3 -u 1 -v 1 -x 1 -y 1 -s 1792 -k 128 -t 20 ./netflix_mm.bin


# RES=res.out

# if [ -f $RES ]; then
#     rm $RES
# fi

# for (( c=256; c<=1792; c+=256 ))
# do
#         echo $c
#         echo -n -e "$c," >> $RES
#         ../../singleGPU/cumf_sgd -g 1 -l 0.05 -a 0.08 -b 0.3 -u 1 -v 1 -x 1 -y 1 -s $c -k 128 -t 20 ./netflix_mm.bin > run.out
#         ../../test/mf-predict -e 0 netflix_mme.bin netflix_mm.bin.model > test.out
#         echo "finish run"

#         sed -n 's/^num_iters[[:space:]]*://p' run.out | tr '\n' ',' >> $RES
#         sed -n 's/^sgd_update_k128[[:space:]]*://p' run.out | tr '\n' ',' >> $RES
#         sed -n 's/^update_per_sec[[:space:]]*://p' run.out | tr '\n' ',' >> $RES
#         sed -n 's/^RMSE[[:space:]]*= //p' test.out >> $RES
# done


# RES=res_e_fast_tl.out

# if [ -f $RES ]; then
#     rm $RES
# fi

# for (( c=1; c<=25; c+=1 ))
# do
#         echo $c
#         echo -n -e "$c," >> $RES
#         ../../singleGPU/cumf_sgd_rpcs_fast_tl -g 1 -l 0.05 -a 0.08 -b 0.3 -u 1 -v 1 -x 1 -y 1 -s 1792 -k 128 -t $c ./netflix_mm.bin > run.out
#         ../../test/mf-predict -e 0 netflix_mme.bin netflix_mm.bin.model > test.out
#         echo "finish run"

#         sed -n 's/^RMSE[[:space:]]*= //p' test.out | tr '\n' ',' >> $RES
#         sed -n 's/^sgd_update_k128[[:space:]]*://p' run.out | tr '\n' ',' >> $RES
#         sed -n 's/^update_per_sec[[:space:]]*://p' run.out >> $RES
# done