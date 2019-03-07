FROM ls12styler/scala-sbt:latest as builder

WORKDIR /project
ADD . /project
RUN sbt package

FROM ls12styler/spark:latest

ADD entrypoint.sh /entrypoint.sh
COPY --from=builder /project/target/scala-2.11/*.jar /project/

ENTRYPOINT /entrypoint.sh
