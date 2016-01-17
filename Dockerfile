FROM java:8-jre

RUN apt-get update && apt-get install -y zip

COPY Logscape-3.10_b0115.zip /tmp

RUN mkdir -p /app
WORKDIR /app

RUN unzip /tmp/Logscape-3.10_b0115.zip

WORKDIR /app/logscape

EXPOSE 8080

RUN sed 's/&//' boot.sh >boot-fg.sh && chmod +x boot-fg.sh

#ENTRYPOINT MANAGEMENT_HOST=localhost && \
# MANAGEMENT_PORT=11000 && \
# MANAGER=stcp://$MANAGEMENT_HOST:$MANAGEMENT_PORT && \
# ./boot.sh $MANAGER

#ENTRYPOINT ./boot.sh stcp://localhost:11000
ENTRYPOINT exec ./boot-fg.sh stcp://localhost:11000
