echo "Checking dependencies: vae"
if [ ! -f models/vae/ae.safetensors ]; then
    echo "Did not find ae.safetensors. Downloading..."
    wget https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors -O models/vae/ae.safetensors
fi
