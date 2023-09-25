# for redhat-actions/buildah-build
FROM catthehacker/ubuntu:runner-22.04

RUN  apt-get update && \
     apt-get -y --no-install-recommends install \
             buildah podman

COPY registries.conf /etc/containers/registries.conf
COPY --chown=runner:runner \
     config.json \
     /home/runner/.docker/config.json 
