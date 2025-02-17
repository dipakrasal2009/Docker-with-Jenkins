#FROM redhat/ubi8
#RUN yum install python3 -y
#RUN pip3 install flask
#WORKDIR .
#COPY app.py app.py

#CMD ["python3","app.py"]


FROM gcc:6 as buildstage
WORKDIR /app
copy first.c first.c
RUN gcc first.c -o myexe
#RUN gcc lw.c -static -nostartfiles -o myexe


#FROM gcc:6 as finalimage                       v1
#FROM gcr.io/distroless/cc as finalimage        
FROM alpine as finalimage                      
#FROM scratch as finalimage                     v4

COPY --from=buildstage /app/myexe /myexe
CMD ["./myexe"]


