FROM python:3.11-alpine
WORKDIR /sample
COPY . /sample
RUN pip install -r req.txt
EXPOSE 8080
CMD ["uvicorn","api:app","--host","0.0.0.0","--port","8080"]