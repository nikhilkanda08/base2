FROM python:latest
RUN pip install django==3.2

copy . .

RUN python manage.py migrate
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

