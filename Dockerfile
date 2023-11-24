FROM python
EXPOSE 8000

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt /app
RUN apt-get update
RUN apt-get install nano
RUN pip install -r requirements.txt
COPY . /app