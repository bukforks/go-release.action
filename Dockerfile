FROM golang@sha256:d689c8216da034556203b8dbb6bf0673f80024f4a9e3b1267af3c9a4f7fb960b
# GOLANG_VERSION=1.13.7
# https://hub.docker.com/layers/golang/library/golang/alpine/images/sha256-d689c8216da034556203b8dbb6bf0673f80024f4a9e3b1267af3c9a4f7fb960b
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
