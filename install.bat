@echo off
echo === installing MMDetection environment ===

REM check if python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python not found, please install Python 3.7+
    exit /b 1
)

REM create virtual environment
echo creating virtual environment...
python -m venv mmdet_env

REM activate virtual environment
echo activating virtual environment...
call mmdet_env\Scripts\activate

REM install dependencies
echo installing dependencies...
pip install -r requirements.txt

REM install mmdetection dependencies
echo installing mmdetection dependencies...
mim install mmengine
mim install "mmcv==2.1.0"
mim install mmdet

REM verify installation
echo verifying installation...
python verify_install_env.py

echo === MMDetection environment installed! ===
echo please use 'mmdet_env\Scripts\activate' to activate the environment