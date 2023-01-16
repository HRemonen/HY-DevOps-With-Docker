FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl

COPY curler-script.sh .

ENTRYPOINT [ "./curler-script.sh" ]

