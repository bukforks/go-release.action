FROM golang@sha256:9202dba0118f1eb416116f3845f1f25bbf926a57ee0c59b7ffc9fbc638026117
# GOLANG_VERSION=1.13.7
# https://hub.docker.com/layers/golang/library/golang/1.13-alpine3.11/images/sha256-9202dba0118f1eb416116f3845f1f25bbf926a57ee0c59b7ffc9fbc638026117
#MAINTAINER Atsushi Nagase <a@ngs.io> (https://ngs.io)

LABEL "com.github.actions.name"="Go Release Binary"
LABEL "com.github.actions.description"="Automate publishing Go build artifacts for GitHub releases"
LABEL "com.github.actions.icon"="cpu"
LABEL "com.github.actions.color"="orange"

LABEL "name"="Automate publishing Go build artifacts for GitHub releases through GitHub Actions"
#LABEL "version"="1.0.1"
#LABEL "repository"="http://github.com/ngs/go-release.action"
#LABEL "homepage"="http://ngs.io/t/actions/"

#LABEL "maintainer"="Atsushi Nagase <a@ngs.io> (https://ngs.io)"

RUN apk add --no-cache curl jq git build-base

COPY entrypoint.sh /entrypoint.sh
COPY build.sh /build.sh
ENTRYPOINT ["/entrypoint.sh"]
