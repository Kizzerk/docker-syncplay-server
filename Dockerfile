FROM alpine:latest

RUN apk add --update \
	git py-twisted

RUN git clone 'https://github.com/Syncplay/syncplay.git' /syncplay

COPY "entrypoint.sh" "/entrypoint.sh"

EXPOSE 8999

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "--help" ]
