FROM alpine:3.14.2

RUN  apk update 								\
  && apk upgrade 								\
  && apk add ca-certificates 							\
  && update-ca-certificates 							\
  && apk add --update coreutils && rm -rf /var/cache/apk/*   			\
  && apk add --update openjdk8 tzdata curl unzip bash git maven openssh-client	\
  && apk add --no-cache nss 							\
  && rm -rf /var/cache/apk/*

CMD /bin/bash
WORKDIR /root/
