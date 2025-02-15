FROM redhat/ubi9

RUN yum install python3 -y

RUN pip3 install flask

