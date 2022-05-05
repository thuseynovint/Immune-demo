FROM golang:1.18-alpine AS builder
WORKDIR /app
COPY /app /app
RUN go mod init app
RUN go build main.go
RUN rm main.go
RUN rm go.mod

FROM gcr.io/distroless/static:nonroot as runner

USER nonroot
ENV PORT 8080
ENV HOST 0.0.0.0
RUN ["/bin/bash", "-c", "echo I am now using bash!"]
RUN whoami
EXPOSE 8080

COPY --from=builder /app .
CMD [ "./main" ]
