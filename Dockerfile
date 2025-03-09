FROM alpine:3.21

RUN apk add go git openssh

RUN git clone https://github.com/owenthereal/upterm.git && \
    cd upterm && go install ./cmd/uptermd/...

ENTRYPOINT ["/root/go/bin/uptermd"]
CMD ["--ssh-addr", "0.0.0.0:2222"]
