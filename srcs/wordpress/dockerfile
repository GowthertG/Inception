FROM debian:bullseye

RUN apt-get update -y

COPY ./tools/wbSetup.sh .

RUN   chmod +x wbSetup.sh

CMD ./wbSetup.sh
