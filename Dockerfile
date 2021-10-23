FROM python:3.9

ENV PYTHONUNBUFFERED=1

RUN mkdir /code
WORKDIR /code

# Install pipenv and compilation dependencies
RUN pip install pipenv
RUN apt-get update && apt-get install -y --no-install-recommends gcc

# Install python dependencies
COPY Pipfile /code/
COPY Pipfile.lock /code/
RUN pipenv install --system

COPY . /code/

CMD python manage.py migrate --noinput && gunicorn -b :8000 django_rest_started.wsgi