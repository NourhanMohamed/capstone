FROM python:3.7-alpine 
WORKDIR /app 
COPY requirements.txt /app
RUN apt-get update
RUN apt-get -y install gcc
RUN pip install --upgrade pip \
  && pip install --trusted-host pypi.python.org -r requirements.txt
COPY . /app
EXPOSE 80
CMD ["python3","app.py"]