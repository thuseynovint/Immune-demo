FROM golang:1.18-alpine AS builder
WORKDIR /app
COPY /app /app
RUN go mod init app
RUN go build main.go
RUN rm main.go
#RUN go.mod

FROM gcr.io/distroless/static as runner
USER nonroot:nonroot
EXPOSE 8080
WORKDIR /app
COPY --from=builder /app /app
CMD [ "./main" ]
