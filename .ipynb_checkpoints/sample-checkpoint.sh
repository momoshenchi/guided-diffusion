export OPENAI_LOGDIR=/root/autodl-tmp/sample
SAMPLE_FLAGS="--batch_size 4  
--class_cond True 
--num_samples 64  
--image_size 256 
--timestep_respacing ddim250 
--use_ddim True"
python scripts/image_sample.py --model_path "./model90000.pt"  $SAMPLE_FLAGS 