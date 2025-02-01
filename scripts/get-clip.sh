echo "Checking dependencies: clip"
if [ ! -f models/clip/clip_l.safetensors ]; then
    echo "Did not find clip_l.safetensors. Downloading..."
    wget https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors -O models/clip/clip_l.safetensors
fi
if [ ! -f models/clip/t5xxl_fp8_e4m3fn.safetensors ]; then
    echo "Did not find t5xxl_fp8_e4m3fn.safetensors. Downloading..."
    wget https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors -O models/clip/t5xxl_fp8_e4m3fn.safetensors
fi
