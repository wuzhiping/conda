FROM continuumio/miniconda3:25.1.1-2

ADD environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml

RUN conda init bash

RUN echo "conda activate $(head -1 /tmp/environment.yml | cut -d' ' -f2)" >> ~/.bashrc
ENV PATH /opt/conda/envs/$(head -1 /tmp/environment.yml | cut -d' ' -f2)/bin:$PATH

ENV CONDA_DEFAULT_ENV $(head -1 /tmp/environment.yml | cut -d' ' -f2)

# ENTRYPOINT ["conda", "run", "-n"]
