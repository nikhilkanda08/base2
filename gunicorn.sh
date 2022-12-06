#!/bin/sh

#python manage.py migrate

gunicorn base3.wsgi:application --bind 0.0.0.0:8000  --timeout 600
