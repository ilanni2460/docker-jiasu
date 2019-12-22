FROM alpine:latest
MAINTAINER 烂泥行天下 <ilanni@ilanni.com>

RUN apk --no-cache add wget curl

#下载nexus3
ENV NEXUS_VERSION_3=3.19.1-01
ENV NEXUS_DOWNLOAD_URL_3=https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION_3}-unix.tar.gz
RUN wget ${NEXUS_DOWNLOAD_URL_3}

#下载nexus2
ENV NEXUS_VERSION_2=2.14.15-01
ENV NEXUS_DOWNLOAD_URL_2=https://download.sonatype.com/nexus/oss/nexus-${NEXUS_VERSION_2}-bundle.tar.gz
RUN wget ${NEXUS_DOWNLOAD_URL_2}

#下载jfrog
ENV JFROG_VERSION=6.16.0
ENV JFROG_DOWNLOAD_URL=https://bintray.com/jfrog/artifactory/download_file?file_path=jfrog-artifactory-oss-${JFROG_VERSION}.zip
RUN wget ${JFROG_DOWNLOAD_URL} -O jfrog-artifactory-${JFROG_VERSION}.zip

#下载es
ENV ES_VERSION=6.5.2
ENV ES_DOWNLOAD_URL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${ES_VERSION}.tar.gz
RUN wget ${ES_DOWNLOAD_URL}
