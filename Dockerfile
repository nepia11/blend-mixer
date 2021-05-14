# https://github.com/ubisoft/mixer
FROM python:3.8-slim-buster AS base

LABEL org.opencontainers.image.source = "https://github.com/nepia11/blend-mixer"

FROM base AS download
RUN apt update -y
RUN apt install wget unzip -y
RUN wget -O mixer.zip https://github.com/ubisoft/mixer/releases/download/v1.0.1/mixer-v1.0.1.zip
RUN unzip mixer.zip

FROM base AS main
WORKDIR /root/
COPY --from=download /mixer ./mixer
EXPOSE 12800/tcp
EXPOSE 12800/udp
ENTRYPOINT ["python", "-m", "mixer.broadcaster.apps.server", "--log-level", "INFO"]