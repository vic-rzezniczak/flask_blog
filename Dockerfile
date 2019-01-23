FROM python:3.6.4-slim

WORKDIR /blog_app

COPY . /blog_app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

ENV FLASK_APP="webapp" \ 
    LISTEN_PORT=5000 \ 
    UWSGI_INI uwsgi.ini \
    STATIC_URL /blog_app/static

CMD ["run.sh"]