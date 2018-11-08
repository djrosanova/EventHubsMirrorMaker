FROM confluentinc/cp-kafka
RUN mkdir -p /usr/src/ehmirror
COPY ./ehmirror/mirrorstart.sh /usr/src/ehmirror/mirrorstart.sh
WORKDIR /usr/src/ehmirror
ENTRYPOINT ["/usr/src/ehmirror/mirrorstart.sh", "$SOURCE_CON_STR", "$DEST_CON_STR"]