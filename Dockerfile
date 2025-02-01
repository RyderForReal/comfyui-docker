FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime AS base
WORKDIR /

RUN apt update && apt install -y git wget
RUN git clone https://github.com/comfyanonymous/ComfyUI app

WORKDIR /app
RUN pip install --no-input -r requirements.txt

ADD scripts /app/docker-deps
ADD start.sh /app/start.sh

EXPOSE 8188
CMD ["start.sh", "--listen"]
