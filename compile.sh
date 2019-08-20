#export LD_LIBRARY_PATH="/home/feihu/anaconda3/lib:$LD_LIBRARY_PATH"
#export LD_INCLUDE_PATH="/home/feihu/anaconda3/include:$LD_INCLUDE_PATH"
#export CUDA_HOME="/usr/local/cuda-10.0"
#export PATH="/home/feihu/anaconda3/bin:/usr/local/cuda-10.0/bin:$PATH"
#export CPATH="/usr/local/cuda-10.0/include"
#export CUDNN_INCLUDE_DIR="/usr/local/cuda-10.0/include"
#export CUDNN_LIB_DIR="/usr/local/cuda-10.0/lib64"

export LD_LIBRARY_PATH="/usr/local/lib/python3/dist-packages:/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
export LD_INCLUDE_PATH="/usr/include/python3.6:/usr/local/cuda/include$LD_INCLUDE_PATH"
export CUDA_HOME="/usr/local/cuda"
export PATH="/usr/bin:/usr/local/cuda/bin:$PATH"
export CPATH="/usr/local/cuda/include"
export CUDNN_INCLUDE_DIR="/usr/local/cuda/include"
export CUDNN_LIB_DIR="/usr/local/cuda/lib64"
TORCH=$(python3 -c "import os; import torch; print(os.path.dirname(torch.__file__))")
#echo $TORCH
cd libs/GANet
python3 setup.py clean
rm -rf build
python3 setup.py build
cp -r build/lib* build/lib

cd ../sync_bn
python3 setup.py clean
rm -rf build
python3 setup.py build
cp -r build/lib* build/lib
