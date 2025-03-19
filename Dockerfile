FROM alpine
RUN apk --update add gettext
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod a+x /usr/local/bin/entrypoint.sh
RUN apk --no-cache add curl
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
