FROM artifactory.finods.com/docker-common/finods/base-jre-runtime:25@sha256:c7fa2d3fa26393f67edaa7155c69c85d2c93f39164d679443f449fcea3fc750d
LABEL maintainer="David J. M. Karlsen <david.karlsen@tietoevry.com>"
ARG VERSION
WORKDIR /app
COPY maven/ /app/
# JAVA_OPTS can be used to pass any additional system properties from env vars
CMD ["sh", "-c", "exec java ${DEFAULT_JAVA_OPTIONS} ${JAVA_OPTS} -jar spring-boot-admin.jar"]
