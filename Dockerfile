FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install pyjwt
RUN pip3 install Flask
RUN pip3 install gunicorn
RUN pip3 install pytest
RUN pip3 install -r requirements.txt


ENTRYPOINT ["gunicorn"  , "-b", ":8080", "main:APP"]
