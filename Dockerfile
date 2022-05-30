FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9-slim

WORKDIR /app

RUN apt update

COPY bunny_submodule/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./bunny_submodule ./app