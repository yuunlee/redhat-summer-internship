#!/bin/sh
source myvenv/bin/activate
gunicorn -b :8052 --access-logfile - --error-logfile - wsgi:app
