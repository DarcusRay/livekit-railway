FROM livekit/livekit-server:latest

# Setze den Port
EXPOSE 7880

# Startbefehl für LiveKit
ENTRYPOINT ["livekit-server"]
CMD ["--config", "/etc/livekit/config.yaml", "--bind", "0.0.0.0:7880"]
