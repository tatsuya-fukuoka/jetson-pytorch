######################################
# container
# nvcr.io/nvidia/l4t-jetpack:r35.4.1
######################################
TORCH_VERSION=2.1.0

ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
apt update && apt upgrade -y

echo -e '\n# set environment variable for CUDA' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/cuda/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64' >> ~/.bashrc
source ~/.bashrc

apt install -y git wget vim python3-pip tzdata curl

cd /workspace
git clone --recursive --branch v$TORCH_VERSION http://github.com/pytorch/pytorch
cd pytorch
apt-get install -y python3-pip cmake libopenblas-dev libopenmpi-dev
pip3 install -U pip && \
pip3 install -r requirements.txt && pip3 install scikit-build ninja 'cmake>3.18'
export USE_NCCL=0 && \
export USE_DISTRIBUTED=1 && \
export USE_QNNPACK=0 && \
export USE_PYTORCH_QNNPACK=0 && \
export TORCH_CUDA_ARCH_LIST="8.7" && \
export PYTORCH_BUILD_VERSION=$TORCH_VERSION && \
export PYTORCH_BUILD_NUMBER=1 && \
python3 setup.py bdist_wheel