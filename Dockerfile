FROM python
EXPOSE 8000

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt /app

RUN apt-get update -y
RUN apt-get install -y nano
RUN apt-get install -y iputils-ping
RUN pip install -r requirements.txt

COPY . /app
