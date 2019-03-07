FROM ls12styler/spark:latest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
