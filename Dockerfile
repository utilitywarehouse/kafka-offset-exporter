FROM golang

RUN mkdir /app
ADD ./kafka-offset-exporter /app
 
CMD ["/app/kafka-offset-exporter"]

