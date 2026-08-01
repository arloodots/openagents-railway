FROM ghcr.io/openagents-org/openagents:latest

USER root

COPY requirements.txt /tmp/requirements.txt

RUN python -m pip install --upgrade pip && \
    pip install --no-cache-dir -r /tmp/requirements.txt

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8700
EXPOSE 8600

ENTRYPOINT ["/start.sh"]
