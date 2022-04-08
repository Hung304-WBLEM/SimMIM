python -m torch.distributed.launch --nproc_per_node 4 main_finetune.py \
       --cfg configs/swin_base__800ep/simmim_finetune__swin_base__img224_window7__800ep.yaml \
       --pretrained  '/home/hqvo2/Projects/Breast_Cancer/libs/SimMIM/outdir/simmim_pretrain/simmim_pretrain__swin_base__maskpatch32__img192_window6__500ep/ckpt_epoch_499.pth'
       --dataset combined_datasets \
       --batch-size 128 \
       --output outdir
