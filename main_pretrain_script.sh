# python -m torch.distributed.launch --nproc_per_node 4 main_simmim.py \
#        --cfg configs/swin_base__800ep/simmim_pretrain__swin_base__img192_window6__800ep.yaml \
#        --data-path '/home/hqvo2/Projects/Breast_Cancer/data/CBIS_DDSM/mass/cls/mass_pathology/train' \
#        --batch-size 128 \
#        --output outdir

python -m torch.distributed.launch --nproc_per_node 4 main_simmim.py \
       --cfg configs/swin_base__500ep/simmim_pretrain__swin_base__maskpatch32_075__img192_window6__500ep.yaml \
       --dataset combined_datasets \
       --batch-size 128 \
       --output outdir

python -m torch.distributed.launch --nproc_per_node 4 main_simmim.py \
       --cfg configs/swin_base__500ep/simmim_pretrain__swin_base__maskpatch16_075__img192_window6__500ep.yaml \
       --dataset combined_datasets \
       --batch-size 128 \
       --output outdir

python -m torch.distributed.launch --nproc_per_node 4 main_simmim.py \
       --cfg configs/swin_base__500ep/simmim_pretrain__swin_base__maskpatch8_075__img192_window6__500ep.yaml \
       --dataset combined_datasets \
       --batch-size 128 \
       --output outdir

python -m torch.distributed.launch --nproc_per_node 4 main_simmim.py \
       --cfg configs/swin_base__500ep/simmim_pretrain__swin_base__maskpatch4_075__img192_window6__500ep.yaml \
       --dataset combined_datasets \
       --batch-size 128 \
       --output outdir
