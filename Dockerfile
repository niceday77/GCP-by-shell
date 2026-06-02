FROM alpine:latest

# ÊËÈíÊ Xray-core
RUN wget -O xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip xray.zip && \
    rm xray.zip geoip.dat geosite.dat && \
    chmod +x xray

# äÓÎ ãáİ ÇáÊßæíä
COPY config.json /etc/xray/config.json

# ÊÚííä ÇáãäİĞ ÇáĞí ÊØáÈå Cloud Run
ENV PORT=8080

# ÊÔÛíá Xray Úáì ÇáãäİĞ ÇáÕÍíÍ
CMD ./xray run -config /etc/xray/config.json