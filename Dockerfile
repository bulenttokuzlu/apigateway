FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get github.com/go-logfmt/logfmt
RUN go get github.com/go-kit/kit/endpoint
RUN go get github.com/afex/hystrix-go/hystrix
RUN go get github.com/apache/thrift/lib/go/thrift
RUN go get github.com/gorilla/mux
RUN go get github.com/hashicorp/consul/api
RUN go get github.com/opentracing/opentracing-go
RUN go get github.com/opentracing/opentracing-go/ext
RUN go get github.com/openzipkin/zipkin-go
RUN go get github.com/openzipkin/zipkin-go/model
RUN go get github.com/openzipkin/zipkin-go/propagation/b3
RUN go get github.com/sony/gobreaker
RUN go get github.com/streadway/handy/breaker
RUN go get golang.org/x/time/rate
RUN go get google.golang.org/grpc
RUN go get google.golang.org/grpc/metadata
RUN go get google.golang.org/grpc/status
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 8000