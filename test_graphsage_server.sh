# DATASPACE=/Users/tnguyen/dataspace/graph
DATASPACE=/mnt/storage01/duong/dataspace/graph
source activate tensorflow
cd graphsage/

# python -m graphsage.utils ${DATASPACE}/facebook/graphsage/facebook-G.json ${DATASPACE}/facebook/graphsage/facebook-walks.txt
# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/facebook/graphsage/facebook --model gcn --model_size big \
#     --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/facebook/

# python -m graphsage.utils ${DATASPACE}/wikipedia/graphsage/POS-G.json ${DATASPACE}/wikipedia/graphsage/POS-walks.txt
# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/wikipedia/graphsage/POS --model gcn --model_size big \
#     --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/wikipedia/

# python -m graphsage.utils ${DATASPACE}/blogcatalog/graphsage/blog-G.json ${DATASPACE}/blogcatalog/graphsage/blog-walks.txt
# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/blogcatalog/graphsage/blog --model gcn --model_size big \
#     --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/blogcatalog/

# python -m graphsage.utils ${DATASPACE}/ca-astroph/graphsage/ca-astroph-G.json ${DATASPACE}/ca-astroph/graphsage/ca-astroph-walks.txt
# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/ca-astroph/graphsage/ca-astroph --model gcn --model_size big \
#     --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/ca-astroph/

# python -m graphsage.utils ${DATASPACE}/ppi/graphsage/ppi-G.json ${DATASPACE}/ppi/graphsage/ppi-walks.txt
# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/ppi/graphsage/ppi --model gcn --model_size big \
#     --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/ppi/

# python -m graphsage.utils ${DATASPACE}/reddit/graphsage/reddit-G.json ${DATASPACE}/reddit/graphsage/reddit-walks.txt
# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/reddit/graphsage/reddit --model graphsage_mean --max_total_steps 1000 --validate_iter 10 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/reddit/
# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/reddit/graphsage/reddit --model gcn --model_size big \
#     --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/reddit/

# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/karate/graphsage/karate --model graphsage_mean --max_total_steps 1000 --validate_iter 10 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/karate/

# python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/karate/graphsage/karate --model graphsage_mean --max_total_steps 1000 --validate_iter 10 \
#      --identity_dim 128 --base_log_dir ${DATASPACE}/karate/


# IFS=$'\r\n' GLOBIGNORE='*' command eval  'PREFIX=($(cat ${DATASPACE}/erdos/prefix.txt))'
# for i in "${PREFIX[@]}"
# do
#     python -m graphsage.utils ${DATASPACE}/erdos/graphsage/${i}-G.json ${DATASPACE}/erdos/graphsage/${i}-walks.txt
#     if [ ! -d "${DATASPACE}/erdos/emb-graphsage/${i}" ]; then
#         mkdir ${DATASPACE}/erdos/emb-graphsage/${i}
#     fi
#     # python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/erdos/graphsage/${i} --model graphsage_mean --max_total_steps 1000 --validate_iter 10 \
#     #     --identity_dim 128 --base_log_dir ${DATASPACE}/erdos/emb-graphsage/${i}
#     python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/erdos/graphsage/${i} --model gcn --model_size big \
#         --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#         --identity_dim 128 --base_log_dir ${DATASPACE}/erdos/emb-graphsage/${i}
# done

# IFS=$'\r\n' GLOBIGNORE='*' command eval  'PREFIX=($(cat ${DATASPACE}/rr_graph/prefix.txt))'
# for i in "${PREFIX[@]}"
# do
#     python -m graphsage.utils ${DATASPACE}/rr_graph/graphsage/${i}-G.json ${DATASPACE}/rr_graph/graphsage/${i}-walks.txt
#     if [ ! -d "${DATASPACE}/rr_graph/emb-graphsage/${i}" ]; then
#         mkdir ${DATASPACE}/rr_graph/emb-graphsage/${i}
#     fi
#     # python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/rr_graph/graphsage/${i} --model graphsage_mean --max_total_steps 1000 --validate_iter 10 \
#     #     --identity_dim 128 --base_log_dir ${DATASPACE}/rr_graph/emb-graphsage/${i}
#     python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/rr_graph/graphsage/${i} --model gcn --model_size big \
#         --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#         --identity_dim 128 --base_log_dir ${DATASPACE}/rr_graph/emb-graphsage/${i}
# done

# IFS=$'\r\n' GLOBIGNORE='*' command eval  'PREFIX=($(cat ${DATASPACE}/watts_graph/prefix.txt))'
# for i in "${PREFIX[@]}"
# do
#     python -m graphsage.utils ${DATASPACE}/watts_graph/graphsage/${i}-G.json ${DATASPACE}/watts_graph/graphsage/${i}-walks.txt
#     if [ ! -d "${DATASPACE}/watts_graph/emb-graphsage/${i}" ]; then
#         mkdir ${DATASPACE}/watts_graph/emb-graphsage/${i}
#     fi
#     # python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/watts_graph/graphsage/${i} --model graphsage_mean --max_total_steps 1000 --validate_iter 10 \
#     #     --identity_dim 128 --base_log_dir ${DATASPACE}/watts_graph/emb-graphsage/${i}
#     python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/watts_graph/graphsage/${i} --model gcn --model_size big \
#         --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
#         --identity_dim 128 --base_log_dir ${DATASPACE}/watts_graph/emb-graphsage/${i}
# done

IFS=$'\r\n' GLOBIGNORE='*' command eval  'PREFIX=($(cat ${DATASPACE}/pa_graph/prefix.txt))'
for i in "${PREFIX[@]}"
do
    python -m graphsage.utils ${DATASPACE}/pa_graph/graphsage/${i}-G.json ${DATASPACE}/pa_graph/graphsage/${i}-walks.txt
    if [ ! -d "${DATASPACE}/pa_graph/emb-graphsage/${i}" ]; then
        mkdir ${DATASPACE}/pa_graph/emb-graphsage/${i}
    fi
    # python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/pa_graph/graphsage/${i} --model graphsage_mean --max_total_steps 1000 --validate_iter 10 \
    #     --identity_dim 128 --base_log_dir ${DATASPACE}/pa_graph/emb-graphsage/${i}
    python -m graphsage.unsupervised_train --train_prefix ${DATASPACE}/pa_graph/graphsage/${i} --model gcn --model_size big \
        --epochs 10 --dropout 0.01 --weight_decay 0.01 --max_total_steps 100000 --validate_iter 1000 \
        --identity_dim 128 --base_log_dir ${DATASPACE}/pa_graph/emb-graphsage/${i}
done

cd ../
source activate base