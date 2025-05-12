"""
MMDetection 安裝驗證腳本
"""
import sys
import importlib.util

def check_module(module_name):
    """檢查模組是否可用並返回版本"""
    try:
        module = importlib.import_module(module_name)
        if hasattr(module, '__version__'):
            return True, module.__version__
        else:
            return True, "未知版本"
    except ImportError:
        return False, None

def main():
    """主函數：驗證安裝"""
    print("=== MMDetection 環境驗證 ===")
    
    # 檢查 Python 版本
    print(f"Python 版本: {sys.version.split()[0]}")
    
    # 檢查關鍵模組
    modules_to_check = {
        "torch": "PyTorch",
        "mmcv": "MMCV",
        "mmdet": "MMDetection",
        "numpy": "NumPy",
        "cv2": "OpenCV"
    }
    
    all_success = True
    
    for module_name, display_name in modules_to_check.items():
        success, version = check_module(module_name)
        if success:
            print(f"{display_name} 版本: {version}")
            
            # 特殊檢查 PyTorch CUDA
            if module_name == "torch":
                import torch
                cuda_available = torch.cuda.is_available()
                cuda_version = torch.version.cuda if cuda_available else "不可用"
                print(f"CUDA 是否可用: {cuda_available}")
                print(f"CUDA 版本: {cuda_version}")
        else:
            print(f"❌ {display_name} 安裝失敗")
            all_success = False
    
    if all_success:
        print("\n✅ 恭喜！MMDetection 環境已成功安裝並驗證。")
        print("  現在您可以開始使用 MMDetection 進行對象檢測了！")
    else:
        print("\n❌ 環境驗證未通過。請檢查上述錯誤並修復。")

if __name__ == "__main__":
    main()