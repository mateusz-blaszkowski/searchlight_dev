FROM centos

ENV http_proxy "http://proxy-mu.intel.com:911"
ENV https_proxy "http://proxy-mu.intel.com:912"

RUN yum install -y git python-devel openssl-devel libxml2-devel libxslt-devel epel-release libffi-devel gcc vim
RUN yum install -y python-pip

RUN git clone https://github.com/openstack/searchlight
RUN cd searchlight ; \
    pip install -r requirements.txt ; \
    python setup.py develop

RUN mkdir /searchlight_logs
RUN mkdir /searchlight_state


# Run cmd:
# docker run --rm -ti -v /root/searchlight/searchlight:/etc/searchlight --net=host searchlight bash
