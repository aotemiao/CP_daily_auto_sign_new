# 基于镜像基础
FROM python:3.9-slim-buster
LABEL author="aotemiaox@gmail.com"
# 复制文件到容器中
COPY . /code

WORKDIR /code

RUN apt-get -y update && apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install -i http://mirrors.aliyun.com/pypi/simple -r requirements.txt

ENV TZ=Asia/Shanghai

