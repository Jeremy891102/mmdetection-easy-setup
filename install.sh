#!/bin/bash
# 簡易 MMDetection 安裝腳本 (Linux/Mac)

echo "=== 開始安裝 MMDetection 環境 ==="

# 檢查 Python 是否已安裝
if ! command -v python &> /dev/null; then
    echo "錯誤: 找不到 Python，請先安裝 Python 3.7+"
    exit 1
fi

# 檢查 pip 是否已安裝
if ! command -v pip &> /dev/null; then
    echo "錯誤: 找不到 pip，請先安裝 pip"
    exit 1
fi

# 建立虛擬環境
echo "正在創建虛擬環境..."
python -m venv mmdet_env

# 啟動虛擬環境
echo "正在啟動虛擬環境..."
source mmdet_env/bin/activate

# 安裝依賴
echo "正在安裝依賴項..."
pip install -r requirements.txt

# 驗證安裝
echo "正在驗證安裝..."
python verify_install.py

echo "=== MMDetection 環境安裝完成! ==="
echo "請使用 'source mmdet_env/bin/activate' 來啟動環境"