# Jetson-Pytorch

Build pytorch using the following link

https://forums.developer.nvidia.com/t/pytorch-for-jetson/72048


# Container
```bash
docker pull nvcr.io/nvidia/l4t-jetpack:r35.4.1

docker run -it --net=host --runtime nvidia --name torch_build \
-v $(pwd):/workspace \
nvcr.io/nvidia/l4t-jetpack:r35.4.1
```

# Build
```bash
chmod +x torch_build_py38.sh
./torch_build_py38.sh
```
