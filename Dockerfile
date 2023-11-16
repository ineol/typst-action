FROM ghcr.io/typst/typst:latest

LABEL \
	org.opencontainers.image.title="Typst GitHub action based on ghcr.io/typst/typst image" \
	org.opencontainers.image.authors="Je Sian Keith Herman <contact@jskherman.com>" \
	org.opencontainers.image.source="https://github.com/jskherman/typst-action"

RUN apk add python3

COPY \
	LICENSE \
	README.md \
	entrypoint.py \
	/root/

ENTRYPOINT ["python3", "/root/entrypoint.py"]
