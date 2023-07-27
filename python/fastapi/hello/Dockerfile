FROM python:3.11-slim

COPY ./ /fastapi
WORKDIR /fastapi

RUN apt-get update && \
    pip install --no-cache-dir poetry && \
    poetry install 

EXPOSE 8000
CMD poetry run uvicorn hello.main:app --reload --host 0.0.0.0 --port 8000
