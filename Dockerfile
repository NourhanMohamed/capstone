FROM python:3.7-alpine 
WORKDIR /app 
COPY requirements.txt /app
RUN apk --no-cache --update add python py-pip openssl ca-certificates py-openssl wget
RUN pip install --upgrade pip \
  && pip install --trusted-host pypi.python.org -r requirements.txt
COPY . /app
EXPOSE 80
CMD ["python3","app.py"]