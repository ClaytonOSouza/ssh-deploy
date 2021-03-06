FROM prhost/minimal-tools:beta

MAINTAINER kallef Alexandre <kallef@orbitaldev.com.br>

# install Echolor
RUN git clone https://github.com/Gruppio/Echolor.git \
            && cd Echolor/ \
            && cp echolor.sh /usr/local/bin/echolor \
            && chmod +x /usr/local/bin/echolor

# scripts
RUN mkdir -p /scripts
COPY ./scripts /scripts
RUN chmod +x /scripts/* && cp -a /scripts/* /bin/

CMD tail -f /dev/null