import torch

print(torch.__version__)

print(torch.cuda.is_available())

print(torch.cuda.device_count())

print(torch.cuda.current_device())

print(torch.cuda.get_device_name())

print(torch.cuda.get_device_capability())

print(torch.distributed.is_available())