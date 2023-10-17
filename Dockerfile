FROM alpine:latest

RUN apk add --no-cache curl

ADD force_samsung_soundbar_mode.sh .

RUN chmod a+rx force_samsung_soundbar_mode.sh

CMD sh force_samsung_soundbar_mode.sh

