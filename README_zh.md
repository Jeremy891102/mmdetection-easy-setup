# 簡易 MMDetection 安裝指南

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

這個倉庫提供了簡化的 MMDetection 安裝方法，專為新手設計，解決常見的環境配置問題。

[English](./README.md) | 中文

## 🌟 特點

- ✅ 預配置的環境檔案，無需手動解決依賴問題
- ✅ 詳細的步驟說明，適合初次使用者
- ✅ 自動化安裝腳本，一鍵配置
- ✅ 排除了常見的錯誤和陷阱

## 📋 環境需求

- Python 3.8+
- CUDA 11.8+
- 足夠的磁碟空間（至少 5GB）

## 🚀 快速安裝

### 方法 1：使用 Conda (environment.yml)(推薦方法)

```bash
# 1. 克隆此倉庫
git clone https://github.com/Jeremy891102/mmdetection-easy-setup.git
cd mmdetection-east-setup

# 2. 創建並激活 Conda 環境
conda env create -f environment.yml
conda activate mmdet

# 3. 使用官方推薦方式安裝套件
mim install mmengine
mim install "mmcv==2.1.0"

# 4. 安裝 mmdet
方法1. 如果直接開發並執行 mmdet，請從原始程式碼安裝它：
git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -v -e . -r requirements/tracking.txt
# "-v" means verbose, or more output
# "-e" means installing a project in editable mode,
# thus any local modifications made to the code will take effect without reinstallation.

方法2. 如果您使用 mmdet 作為依賴項或第三方套件，請使用 MIM 安裝它：
mim install mmdet

# 5. 驗證安裝
python verify_install.py
```

### 方法 2：使用 pip (requirements.txt)

```bash
# 1. 克隆此倉庫
git clone https://github.com/Jeremy891102/mmdetection-easy-setup.git
cd mmdetection-easy-setup

# 2. 創建虛擬環境
python -m venv mmdet_env
source mmdet_env/bin/activate  # Linux/Mac
# 或
mmdet_env\Scripts\activate  # Windows

# 3. 安裝依賴
pip install -r requirements.txt

# 4. 使用 mim 安裝 MMEngine 與 MMCV
mim install mmengine
mim install "mmcv==2.1.0"

# 5. 安裝 mmdet
方法1. 如果直接開發並執行 mmdet，請從原始程式碼安裝它：
git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -v -e . -r requirements/tracking.txt
# "-v" means verbose, or more output
# "-e" means installing a project in editable mode,
# thus any local modifications made to the code will take effect without reinstallation.

方法2. 如果您使用 mmdet 作為依賴項或第三方套件，請使用 MIM 安裝它：
mim install mmdet

# 6. 驗證安裝
python verify_install.py
```

### 方法 3：一鍵安裝腳本

```bash
# Linux/Mac
./install.sh

# Windows
install.bat
```

## 🔍 驗證安裝

成功安裝後，執行以下測試：

```python
# 在 Python 中執行
import mmdet
import torch

print(f"MMDetection 版本: {mmdet.__version__}")
print(f"PyTorch 版本: {torch.__version__}")
print(f"CUDA 是否可用: {torch.cuda.is_available()}")
```

## 📝 新手入門教學

安裝完成後，請查看 [入門教學](./getting_started.md) 了解如何：

1. 執行你的第一個目標檢測
2. 使用預訓練模型進行推論
3. 使用自己的數據集進行訓練
4. 常見任務的範例代碼

## ❓ 常見問題與解決方案

<details>
<summary>安裝時出現 "CUDA error: ..." 錯誤</summary>
這通常表示 PyTorch 版本與您的 CUDA 版本不匹配。請確保使用與您系統 CUDA 版本相匹配的 PyTorch。您可以在 [PyTorch 官網](https://pytorch.org/get-started/locally/) 找到對應版本。
</details>

<details>
<summary>ImportError: cannot import name 'XXXX' from 'mmdet'</summary>
這通常是 MMCV 和 MMDetection 版本不匹配導致的。請確保使用我們提供的環境文件，其中版本已經過兼容性測試。
</details>

## 📊 測試環境

此安裝方法已在以下環境中測試通過：

- Windows 10 + CUDA 11.8

## 👥 貢獻

如果您發現任何問題或有改進建議，請隨時開 issue 或提交 pull request。

## 📜 許可

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

