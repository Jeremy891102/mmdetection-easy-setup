#!/bin/bash
# MMDetection environment installation script (Linux/Mac)

echo "=== starting to install MMDetection environment ==="

# check if python is installed
if ! command -v python &> /dev/null; then
    echo "Error: Python not found, please install Python 3.7+"
    exit 1
fi

# check if pip is installed
if ! command -v pip &> /dev/null; then
    echo "Error: pip not found, please install pip"
    exit 1
fi

# create virtual environment
echo "creating virtual environment..."
python -m venv mmdet_env

# activate virtual environment
echo "activating virtual environment..."
source mmdet_env/bin/activate

# install dependencies
echo "installing dependencies..."
pip install -r requirements.txt

# install mmdetection dependencies
echo "installing mmdetection dependencies..."
mim install mmengine
mim install "mmcv==2.1.0"
mim install mmdet

# verify installation
echo "verifying installation..."
python verify_install_env.py

echo "=== MMDetection environment installed! ==="
echo "please use 'source mmdet_env/bin/activate' to activate the environment"