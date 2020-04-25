FROM nvcr.io/nvidia/pytorch:19.11-py3

COPY requirements.txt .
COPY setup.sh .

RUN apt update
RUN apt upgrade -y

RUN apt install -y ffmpeg sox

RUN pip install --upgrade git+https://github.com/ytdl-org/youtube-dl.git@master
RUN pip install -r requirements.txt

RUN chmod +x setup.sh
RUN ./setup.sh
