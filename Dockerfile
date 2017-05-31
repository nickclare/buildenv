
FROM 1science/sbt

COPY sampleproject /tmp/sampleproject
RUN cd /tmp/sampleproject && sbt package
RUN rm -rf /tmp/sampleproject

RUN mkdir /work
WORKDIR /work
