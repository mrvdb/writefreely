# Build image
FROM golang:1.11.2-alpine3.8 as build

RUN apk add --update nodejs nodejs-npm make g++ git sqlite-dev
RUN npm install -g less less-plugin-clean-css

RUN mkdir -p /go/src/github.com/writeas/writefreely
WORKDIR /go/src/github.com/writeas/writefreely
COPY . .

RUN make build \
 && make ui
RUN mkdir /stage && \
    cp -R /go/bin \
      /go/src/github.com/writeas/writefreely/templates \
      /go/src/github.com/writeas/writefreely/static \
      /go/src/github.com/writeas/writefreely/pages \
      /go/src/github.com/writeas/writefreely/keys \
      /stage

# Final image
FROM alpine:3.8

RUN apk add --no-cache openssl ca-certificates
COPY --from=build --chown=daemon:daemon /stage /go

WORKDIR /go
VOLUME /go/keys
EXPOSE 8080
USER daemon

CMD ["bin/writefreely"]
