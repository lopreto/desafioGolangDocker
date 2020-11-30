FROM golang
WORKDIR /src
COPY codeEducation.go .
RUN go build codeEducation.go
FROM scratch
COPY --from=0 /src/codeEducation .
CMD [ "./codeEducation"]