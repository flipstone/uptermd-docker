FROM alpine:3.13.2

RUN apk add go git openssh

RUN git clone https://github.com/owenthereal/upterm.git && \
    cd upterm && go install ./cmd/uptermd/...

CMD /root/go/bin/uptermd --ssh-addr 0.0.0.0:2222
