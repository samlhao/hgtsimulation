FROM nfcore/base:1.7
LABEL authors="Samantha Hao" \
      description="Docker image containing all requirements for nf-core/hgtsimulation pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-hgtsimulation-1.0dev/bin:$PATH
