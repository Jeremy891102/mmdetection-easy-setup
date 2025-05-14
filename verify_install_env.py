"""
MMDetection environment verification script
"""
import sys
import importlib.util

def check_module(module_name):
    """Check if the module is available and return the version"""
    try:
        module = importlib.import_module(module_name)
        if hasattr(module, '__version__'):
            return True, module.__version__
        else:
            return True, "Unknown version"
    except ImportError:
        return False, None

def main():
    """Main function: verify installation"""
    print("=== MMDetection environment verification ===")
    
    # check python version
    print(f"Python version: {sys.version.split()[0]}")
    
    # check important packages
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
            print(f"{display_name} version: {version}")
            
            # check PyTorch CUDA
            if module_name == "torch":
                import torch
                cuda_available = torch.cuda.is_available()
                cuda_version = torch.version.cuda if cuda_available else "False"
                print(f"CUDA: {cuda_available}")
                print(f"CUDA version: {cuda_version}")
        else:
            print(f"❌ {display_name} installation failed")
            all_success = False
    
    if all_success:
        print("\n✅ Congratulations! MMDetection environment installed and verified.")
        print("   Now you can start using MMDetection for object detection!")
    else:
        print("\n❌ Environment verification failed. Please check the above errors and fix them.")

if __name__ == "__main__":
    main()
