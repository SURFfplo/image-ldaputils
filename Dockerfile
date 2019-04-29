FROM alpine:3.9.3
LABEL image="ldaputils"
LABEL versie="0.1"
LABEL datum="2019 04 29"

RUN apk update \
  && apk add openldap-clients \
  && rm -rf /var/cache/apk/*

COPY commands /commands

USER nobody
CMD echo "available commands:"; ls /usr/bin | grep ldap

