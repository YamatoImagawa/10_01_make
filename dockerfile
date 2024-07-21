FROM python:slim

RUN apt -y update && apt -y install git
RUN pip install numpy

RUN apt -y update && apt -y install gcc cppcheck clang clang-format make gdb

WORKDIR /mnt

COPY dummy_lib/ /tmp
RUN cd /tmp && make
