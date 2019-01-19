FROM python:3.6.4-slim

WORKDIR /flask-blog

COPY . /flask-blog

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

ENV FLASK_APP="webapp"

CMD ["run.sh"]