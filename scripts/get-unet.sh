echo "Checking dependencies: unet"
if [ ! -f models/unet/flux1-schnell.safetensors ]; then
    echo "Did not find flux1-schnell.safetensors. Downloading..."
    wget https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors -O models/unet/flux1-schnell.safetensors
fi
#if [ ! -f models/unet/flux1-dev.safetensors ]; then
#    echo "Did not find flux1-dev.safetensors. Downloading..."
#    wget URL -O models/unet/flux1-dev.safetensors
#fi
