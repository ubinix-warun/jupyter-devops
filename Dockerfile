FROM continuumio/anaconda3

# install docker!
RUN apt-get update -y
RUN apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

RUN apt-get update -y
RUN apt-get install docker-ce-cli containerd.io -y
RUN apt-get install graphviz -y
RUN apt-get install jq -y

# python pkg. with conda
RUN /opt/conda/bin/conda install jupyterlab -y
RUN /opt/conda/bin/conda install -c conda-forge awscli ansible -y
RUN /opt/conda/bin/conda install -c conda-forge yq -y
