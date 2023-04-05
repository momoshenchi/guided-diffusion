export OPENAI_LOGDIR=/root/autodl-tmp/train
TRAIN_FLAGS=" \
--batch_size 12   \
--image_size 256 \
--lr 1e-4 \
--save_interval 40000 \
--use_fp16=True"
MODEL_FLAGS="
--class_cond True  
--num_channels 256
--attention_resolutions=32,16,8"
python scripts/image_train.py --data_dir "../autodl-tmp/imagenet/train"  $TRAIN_FLAGS  $MODEL_FLAGS 
