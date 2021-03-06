# DATASPACE=/Users/tnguyen/dataspace/graph
DATASPACE=/mnt/storage01/duong/dataspace/graph
source activate tensorflow

# python node_classification/node_classifier.py --algorithm node2vec --dataset_dir ${DATASPACE}/wikipedia/graphsage/ \
#     --embed_dir ${DATASPACE}/wikipedia/emb/ \
#     --prefix POS --setting test

# python node_classification/node_classifier.py --algorithm graphsage --dataset_dir ${DATASPACE}/wikipedia/graphsage/ \
#     --embed_dir ${DATASPACE}/wikipedia/unsup-graphsage/gcn_big_0.000010 \
#     --prefix POS --setting test

# python node_classification/node_classifier.py --algorithm node2vec --dataset_dir ${DATASPACE}/blogcatalog/graphsage/ \
#     --embed_dir ${DATASPACE}/blogcatalog/emb/ \
#     --prefix blog --setting test

# python node_classification/node_classifier.py --algorithm graphsage --dataset_dir ${DATASPACE}/blogcatalog/graphsage/ \
#     --embed_dir ${DATASPACE}/blogcatalog/unsup-graphsage/gcn_big_0.000010 \
#     --prefix blog --setting test

python node_classification/node_classifier.py --algorithm node2vec --dataset_dir ${DATASPACE}/ppi/graphsage/ \
    --embed_dir ${DATASPACE}/ppi/emb/ \
    --prefix ppi --setting test --label multi --classifier logistic --average micro

python node_classification/node_classifier.py --algorithm node2vec --dataset_dir ${DATASPACE}/ppi/graphsage/ \
    --embed_dir ${DATASPACE}/ppi/emb/ \
    --prefix ppi --setting test --label multi --classifier logistic --average macro

# python node_classification/node_classifier.py --algorithm graphsage --dataset_dir ${DATASPACE}/ppi/graphsage/ \
#     --embed_dir ${DATASPACE}/ppi/unsup-graphsage/gcn_big_0.000010 \
#     --prefix ppi --setting test --label multi --classifier logistic

# python node_classification/node_classifier.py --dataset_dir ${DATASPACE}/ppi/graphsage/ \
#     --embed_dir feat --prefix ppi --setting test --label multi --classifier logistic

# python node_classification/node_classifier.py --algorithm graphsage --dataset_dir ${DATASPACE}/reddit/graphsage/ \
#     --embed_dir ${DATASPACE}/reddit/unsup-graphsage/graphsage_mean_small_0.000010 \
#     --prefix reddit --setting test

    
source activate base