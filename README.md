# Jetson-Pytorch

Build pytorch using the following link

https://forums.developer.nvidia.com/t/pytorch-for-jetson/72048


# Container
Jetpack Container

https://catalog.ngc.nvidia.com/orgs/nvidia/containers/l4t-jetpack
```bash
docker run -it --net=host --runtime nvidia --name torch_build \
-v $(pwd):/workspace \
nvcr.io/nvidia/l4t-jetpack:r35.4.1
```

# Build
```bash
chmod +x torch_build.sh
./torch_build.sh
```
# Reference
## pytorch
https://pytorch.org/

## nvidia forums
https://forums.developer.nvidia.com/t/pytorch-for-jetson/72048
