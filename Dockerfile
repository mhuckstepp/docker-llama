FROM ollama/ollama:latest

RUN mkdir -p /etc/systemd/system/ollama.service.d
RUN echo '[Service]' >>/etc/systemd/system/ollama.service.d/environment.conf

RUN echo 'Environment="OLLAMA_HOST=0.0.0.0:80' >>/etc/systemd/system/ollama.service.d/environment.conf

EXPOSE 80
ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]