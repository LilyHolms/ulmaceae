FROM python:3.9

WORKDIR /code

COPY ./etc/requirements.txt /code/requirements.txt
RUN pip3 install -r requirements.txt

COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]