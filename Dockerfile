FROM ubuntu:focal-20210416

RUN apt clean && apt update && \ 
   apt-get install -yq python3-rdkit \
      librdkit1 \
      rdkit-data \
      curl \
      python3-distutils \
      python3-apt && \
      ln -s /usr/bin/python3 /usr/bin/python && \
      curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python ./get-pip.py      
