FROM openshift/origin-cli:v3.11

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -s https://bootstrap.pypa.io/get-pip.py | python

# hadolint ignore=DL3013
RUN pip install \
  jinja2-cli \
  j2cli \
  yamllint
