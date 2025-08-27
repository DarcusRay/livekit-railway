FROM livekit/livekit-server:latest

# Port freigeben
EXPOSE 7880

# Health Check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:7880/ || exit 1

# Startbefehl
ENTRYPOINT ["livekit-server"]
CMD ["--config", "/etc/livekit/config.yaml", "--bind", "0.0.0.0:7880"]
