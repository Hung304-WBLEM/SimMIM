from .data_simmim import build_loader_simmim, build_custom_loader_simmim
from .data_finetune import build_loader_finetune

def build_loader(config, logger, is_pretrain):
    if is_pretrain:
        return build_loader_simmim(config, logger)
    else:
        return build_loader_finetune(config, logger)

def build_custom_loader(args, config, logger, is_pretrain):
    if is_pretrain:
        return build_custom_loader_simmim(args, config, logger)
    # else:
    #     return build_loader_finetune(args, config, logger)
