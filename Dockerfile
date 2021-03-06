FROM ubuntu:18.04
WORKDIR /app
RUN apt-get update
RUN apt-get install build-essential python3-pip python-dev -y
COPY requirements.txt /app
RUN pip3 install --upgrade pip \
  && pip3 install --trusted-host pypi.python.org -r requirements.txt
COPY . /app
EXPOSE 80
CMD ["python3","app.py"]