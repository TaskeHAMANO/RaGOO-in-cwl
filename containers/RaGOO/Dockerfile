FROM python:3.7.2-slim-stretch

MAINTAINER Shinya Suzuki <sshinya@bio.titech.ac.jp>
LABEL DESCRIPTION "Container for RaGOO"

ENV TOOL_DIR /opt

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git make gcc zlib1g-dev
RUN pip3 install intervaltree numpy

WORKDIR ${TOOL_DIR}
RUN git clone https://github.com/lh3/minimap2.git
WORKDIR ${TOOL_DIR}/minimap2
RUN make
ENV PATH ${PATH}:${TOOL_DIR}/minimap2

WORKDIR ${TOOL_DIR}
RUN git clone https://github.com/TaskeHAMANO/RaGOO.git
WORKDIR ${TOOL_DIR}/RaGOO
RUN pip3 install .

CMD ["python", "/opt/RaGOO/ragoo.py"]
