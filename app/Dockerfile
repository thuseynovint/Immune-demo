FROM golang:1.18-alpine AS builder
WORKDIR /app
COPY /app /app
RUN ls
RUN go mod init app
RUN ls

RUN go build main.go
RUN rm /app/main.go 
FROM gcr.io/distroless/static:nonroot as runner

COPY --from=builder /app .
EXPOSE 8080
CMD [ "./main"]