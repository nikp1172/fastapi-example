FROM python:3.7
COPY . ./app
WORKDIR /app
RUN pip install -U pip && \
         pip install --no-cache-dir -U -r /tmp/dev-requirements.txt && \
         pip check
ENTRYPOINT uvicorn main:app --port 8000 --host 0.0.0.0
