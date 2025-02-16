FROM redhat/ubi9

RUN yum install python36 -y

RUN pip3 install flask

CMD ["python3","app.py"]
