# Pull official base Python Docker image
FROM python
# EXPOSE 8000

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app
COPY requirements.txt /app

# Install dependencies
RUN ls -la
RUN apt-get update -y
RUN apt-get install -y nano
RUN apt-get install -y iputils-ping
RUN pip install -r requirements.txt

# Copy the Django project
COPY . /app
