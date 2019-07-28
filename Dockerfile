FROM python:3
WORKDIR /usr/src/app
COPY app/requirements.txt app/hello.py ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8000", "hello:app"]
