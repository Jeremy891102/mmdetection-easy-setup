# MMDetection Easy Setup

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

This repository provides a simplified approach to installing MMDetection, designed for beginners to solve common environment configuration issues like **CUDA error, mmcv, mmdet setup error, and dependency conflict error.**

[中文](./README_zh.md) | English

## 🌟 Features

- ✅ Pre-configured environment files, no need to solve dependency issues manually
- ✅ Detailed step-by-step instructions for first-time users
- ✅ Automated installation scripts for one-click setup
- ✅ Avoids common errors and pitfalls

## 📋 Requirements

- Python 3.8
- CUDA 11.8
- Sufficient disk space (at least 5GB)

> ⚠️ If you plan to use a different version (e.g., Python 3.10 or CUDA 12),  
> please manually align compatible versions of **PyTorch**, **MMCV**, and **MMEngine** to avoid conflicts.  
> Incompatible versions may cause installation issues or runtime errors.  
>
> ✅ Recommended references:
> - [PyTorch Installation Guide](https://pytorch.org/get-started/locally/)
> - [MMCV Compatibility Table](https://github.com/open-mmlab/mmcv#installation)
> - [MMEngine Documentation](https://github.com/open-mmlab/mmengine)

## 🚀 Quick Installation

### Method 1: Using Conda (environment.yml) (Recommend)
1. Clone this repository
```bash
git clone https://github.com/yourusername/mmdetection-easy-setup.git
cd mmdetection-easy-setup
```
2. Create and activate Conda environment
```bash
conda env create -f environment.yml
conda activate mmdetection_easy_setup
```
3. Use mim install mmengine and mmcv
```bash
mim install mmengine
mim install "mmcv==2.1.0"
```
4. Install mmdet


Case a: If you develop and run mmdet directly, install it from source:
```bash
git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -v -e .
# "-v" means verbose, or more output
# "-e" means installing a project in editable mode,
# thus any local modifications made to the code will take effect without reinstallation.
```
Case b: If you use mmdet as a dependency or third-party package, install it with MIM:
```bash
mim install mmdet
```
### Now you can verify the installation

### Method 2: Using pip (requirements.txt)

1. Clone this repository
```bash
git clone https://github.com/yourusername/easy-mmdetection-setup.git
cd easy-mmdetection-setup
```
2. Create virtual environment
```bash
python -m venv mmdetection_easy_setup
source mmdetection_easy_setup/bin/activate  # Linux/Mac
# or
mmdetection_easy_setup\Scripts\activate  # Windows
```
3. Install dependencies
```bash
pip install -r requirements.txt
```
4. Use mim install mmengine and mmcv
```bash
mim install mmengine
mim install "mmcv==2.1.0"
```
5. Install mmdet


Case a: If you develop and run mmdet directly, install it from source:
```bash
git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -v -e .
# "-v" means verbose, or more output
# "-e" means installing a project in editable mode,
# thus any local modifications made to the code will take effect without reinstallation.
```
Case b: If you use mmdet as a dependency or third-party package, install it with MIM:
```bash
mim install mmdet
```
### Now you can verify the installation

### Method 3: One-click Installation Script

```bash
# Linux/Mac
./install.sh

# Windows
install.bat
```

## 🔍 Verify Installation

After successful installation, run the following test:

```bash
cd ./mmdetection-easy-setup
python verify_install_env.py
```

```python
# Execute in Python
import mmdet
import torch

print(f"MMDetection version: {mmdet.__version__}")
print(f"PyTorch version: {torch.__version__}")
print(f"CUDA available: {torch.cuda.is_available()}")
```

## 📝 Getting Started Tutorial

After installation, check out MMdetection [Getting Started Guide](https://mmdetection.readthedocs.io/en/latest/get_started.html) to learn how to:

1. Run your first object detection
2. Use pre-trained models for inference
3. Train with your own dataset
4. See example code for common tasks

## ❓ Common Issues & Solutions

<details>
<summary>Getting "CUDA error: ..." during installation</summary>
This usually indicates that the PyTorch version doesn't match your CUDA version. Make sure to use a PyTorch build that matches your system's CUDA version. You can find compatible versions at the <a href="https://pytorch.org/get-started/locally/">PyTorch website</a>.
</details>

<details>
<summary>ImportError: cannot import name 'XXXX' from 'mmdet'</summary>
This typically happens when MMCV and MMDetection versions are not compatible. Please ensure you're using our provided environment files where the versions have been tested for compatibility.
</details>


## 📊 Tested Environments

This installation method has been tested on:

- Windows 11 + CUDA 11.8

## 👥 Contributing

If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## 📜 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgements

- [MMDetection](https://github.com/open-mmlab/mmdetection) - For creating this amazing object detection toolbox
- [OpenMMLab](https://openmmlab.com/) - For their continued contributions to the computer vision community
