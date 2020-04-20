##FROM 82849f1e01bb
#FROM 80cbd7276746
#COPY requirements.txt .
#COPY setup.sh .
##COPY libav-tools_3.4.1-1_all.deb .
#
##RUN apt install ./libav-tools_3.4.1-1_all.deb
##RUN pip install --upgrade git+https://github.com/ytdl-org/youtube-dl.git@master
#
##FROM nvcr.io/nvidia/pytorch:19.11-py3
##
##COPY requirements.txt .
##COPY setup.sh .
##COPY install_apt.sh .
##COPY ffmpeg_2.8.6-1ubuntu2_amd64.deb .
##COPY libsensors4_3.4.0-4_amd64.deb .
##
#RUN chmod +x setup.sh
##RUN chmod +x install_apt.sh
##
##
##RUN apt update -y
##RUN apt install ./libsensors4_3.4.0-4_amd64.deb
##RUN apt install ffmpeg -y
##RUN ./setup.sh
#RUN pip install librosa===0.6.0
#
##RUN /install_apt.sh
##RUN pip install virtualenv --user

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
