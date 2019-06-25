FROM openshift/origin-cli:v3.11

RUN curl -s https://bootstrap.pypa.io/get-pip.py | python

RUN pip install jinja2-cli yamllint
