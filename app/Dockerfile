FROM golang:1.18-alpine AS builder
WORKDIR /app
COPY /app /app
RUN go mod init app
RUN go build main.go
RUN rm main.go
RUN rm go.mod

FROM gcr.io/distroless/static:nonroot as runner

EXPOSE 8080
COPY --from=builder /app .
CMD [ "./main" ]
