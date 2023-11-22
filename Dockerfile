FROM python:3.8-buster

WORKDIR /home

RUN apt-get update && apt-get -y  upgrade

RUN apt-get install -y  hwinfo \
                        libgl1 \
                        gcc \
                        libgdal-dev
#RUN echo 26 |  apt-get install -y nvidia-driver-510 nvidia-dkms-510
RUN pip3 install --no-cache-dir pip --upgrade

RUN pip install segment-geospatial

COPY . .

# pre-Download the model checkpoint
RUN wget -P ./checkpoints  https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth

CMD python ./benchmark_test.py
