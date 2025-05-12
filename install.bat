@echo off
echo === 開始安裝 MMDetection 環境 ===

REM 檢查 Python 是否已安裝
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 錯誤: 找不到 Python，請先安裝 Python 3.7+
    exit /b 1
)

REM 建立虛擬環境
echo 正在創建虛擬環境...
python -m venv mmdet_env

REM 啟動虛擬環境
echo 正在啟動虛擬環境...
call mmdet_env\Scripts\activate

REM 安裝依賴
echo 正在安裝依賴項...
pip install -r requirements.txt

REM 驗證安裝
echo 正在驗證安裝...
python verify_install.py

echo === MMDetection 環境安裝完成! ===
echo 請使用 'mmdet_env\Scripts\activate' 來啟動環境