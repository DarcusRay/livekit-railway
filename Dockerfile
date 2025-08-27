FROM livekit/livekit-server:latest
EXPOSE 7880
CMD ["--config", "/etc/livekit/config.yaml"]
