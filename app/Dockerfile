# 1.`builder` step 
# ---
FROM golang:1.18-alpine AS builder
WORKDIR /go/src/app
COPY app/main.go app/static.json  ./
RUN go mod init app
RUN CGO_ENABLED=0 go build -o /go/bin/app
# ---
# 2.copy process from the previous step to the `runner`.
# ---
FROM gcr.io/distroless/static:nonroot as runner
COPY --from=builder /go/bin/app /
# ---
# 3. expose the port 8080 and  appropriate entrypoint.
# ---
EXPOSE 8080
ENTRYPOINT  ["/app"]