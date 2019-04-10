FROM alpine

RUN apk update && apk add --no-cache ca-certificates

COPY ./mailhook /mailhook

USER 1

EXPOSE 1025

CMD /mailhook -listen :1025 -hook-dir /hooks
