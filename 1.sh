#!/bin/bash
DATADIR=$PWD/../data/data_lmdb
python3 train.py \
		--train_data $DATADIR/train \
		--valid_data $DATADIR/valid \
		--character "핵무기보유와123456자회담철수를선언한미기류北核" \
		--batch_ratio 0.5-0.5 \
		--select_data "basic-skew" \
		--Transformation TPS \
		--FeatureExtraction ResNet \
		--SequenceModeling BiLSTM \
		--Prediction CTC \
		--data_filtering_off \
		--batch_max_length 128 \
		--workers 8 \
		--valInterval 10
