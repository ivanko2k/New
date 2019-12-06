ARG BASETAG

FROM researchivanko2k/New:${BASETAG}

ARG MODEL

RUN mkdir -p /model/$MODEL \
    && wget -O /tmp/$MODEL.tar.gz https://github.com/ivanko2k/New/releases/download/v1.4.0/$MODEL.tar.gz \
    && tar -xvzf /tmp/$MODEL.tar.gz -C /model/$MODEL/ \
    && touch /model/$MODEL/.probe
