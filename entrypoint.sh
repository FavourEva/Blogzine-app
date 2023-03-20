#!/bin/bash

python manage.py migrate --noinput
python manage.py collectstatic --no-input

python manage.py create_admin
python manage.py create_categories
python manage.py create_posts 100
exec "$@"
