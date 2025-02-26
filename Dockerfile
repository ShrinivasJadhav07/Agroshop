FROM python:3.10

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.text requirements.txt

RUN pip install -r requirements.txt

COPY . . 

EXPOSE 8000

CMD python manage.py runserver